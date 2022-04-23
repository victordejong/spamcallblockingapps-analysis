package com.apptentive.android.sdk.conversation;

import androidx.annotation.NonNull;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.Encryption;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.encryption.EncryptionException;
import com.apptentive.android.sdk.encryption.EncryptionHelper;
import com.apptentive.android.sdk.model.ApptentiveMessage;
import com.apptentive.android.sdk.module.messagecenter.model.MessageFactory;
import com.apptentive.android.sdk.serialization.SerializableObject;
import com.apptentive.android.sdk.storage.MessageStore;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/conversation/FileMessageStore.class */
public class FileMessageStore implements MessageStore {
    private Encryption encryption;
    private final File file;
    private final List<MessageEntry> messageEntries;
    private boolean shouldFetchFromFile;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry.class */
    public static class MessageEntry implements SerializableObject {
        Double clientCreatedAt;

        /* renamed from: id */
        String f6446id;
        Boolean isRead;
        String json;
        String nonce;
        String state;

        MessageEntry() {
        }

        MessageEntry(DataInput dataInput) throws IOException {
            this.f6446id = Util.readNullableUTF(dataInput);
            this.clientCreatedAt = Util.readNullableDouble(dataInput);
            this.nonce = Util.readNullableUTF(dataInput);
            this.state = Util.readNullableUTF(dataInput);
            this.isRead = Util.readNullableBoolean(dataInput);
            this.json = Util.readNullableUTF(dataInput);
        }

        public String toString() {
            return "MessageEntry{id='" + this.f6446id + "', clientCreatedAt=" + this.clientCreatedAt + ", nonce='" + this.nonce + "', state='" + this.state + "', isRead=" + this.isRead + ", json='" + this.json + "'}";
        }

        @Override // com.apptentive.android.sdk.serialization.SerializableObject
        public void writeExternal(DataOutput dataOutput) throws IOException {
            Util.writeNullableUTF(dataOutput, this.f6446id);
            Util.writeNullableDouble(dataOutput, this.clientCreatedAt);
            Util.writeNullableUTF(dataOutput, this.nonce);
            Util.writeNullableUTF(dataOutput, this.state);
            Util.writeNullableBoolean(dataOutput, this.isRead);
            Util.writeNullableUTF(dataOutput, this.json);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FileMessageStore(File file, Encryption encryption) {
        if (file == null) {
            throw new IllegalArgumentException("File is null");
        } else if (encryption != null) {
            this.file = file;
            this.encryption = encryption;
            this.messageEntries = new ArrayList();
            this.shouldFetchFromFile = true;
        } else {
            throw new IllegalArgumentException("Encryption key is null");
        }
    }

    private void fetchEntries() {
        synchronized (this) {
            if (this.shouldFetchFromFile) {
                readFromFile();
                this.shouldFetchFromFile = false;
            }
        }
    }

    private MessageEntry findMessageEntry(ApptentiveMessage apptentiveMessage) {
        Assert.assertNotNull(apptentiveMessage);
        return apptentiveMessage != null ? findMessageEntry(apptentiveMessage.getNonce()) : null;
    }

    private MessageEntry findMessageEntry(String str) {
        for (MessageEntry messageEntry : this.messageEntries) {
            if (StringUtils.equal(messageEntry.nonce, str)) {
                return messageEntry;
            }
        }
        return null;
    }

    private void logException(Exception exc) {
        ErrorMetrics.logException(exc);
    }

    private void readFromFile() {
        synchronized (this) {
            this.messageEntries.clear();
            try {
                if (this.file.exists()) {
                    this.messageEntries.addAll(readFromFileGuarded());
                }
            } catch (Exception e) {
                ApptentiveLog.m15643e(ApptentiveLogTag.MESSAGES, e, "Exception while reading entries", new Object[0]);
                logException(e);
            }
        }
    }

    private List<MessageEntry> readFromFileGuarded() throws IOException, EncryptionException {
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(EncryptionHelper.readFromEncryptedFile(this.encryption, this.file)));
        byte readByte = dataInputStream.readByte();
        if (readByte == 1) {
            int readInt = dataInputStream.readInt();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < readInt; i++) {
                arrayList.add(new MessageEntry(dataInputStream));
            }
            return arrayList;
        }
        throw new IOException("Unsupported binary version: " + ((int) readByte));
    }

    private static List<MessageEntry> readFromLegacyFile(File file) throws IOException {
        Throwable th;
        DataInputStream dataInputStream = null;
        try {
            dataInputStream = new DataInputStream(new FileInputStream(file));
            try {
                byte readByte = dataInputStream.readByte();
                if (readByte == 1) {
                    int readInt = dataInputStream.readInt();
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < readInt; i++) {
                        arrayList.add(new MessageEntry(dataInputStream));
                    }
                    Util.ensureClosed(dataInputStream);
                    return arrayList;
                }
                throw new IOException("Unsupported binary version: " + ((int) readByte));
            } catch (Throwable th2) {
                th = th2;
                Util.ensureClosed(dataInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private void writeToFile() {
        synchronized (this) {
            try {
                writeToFileGuarded();
            } catch (Exception e) {
                ApptentiveLog.m15643e(ApptentiveLogTag.MESSAGES, e, "Exception while saving messages", new Object[0]);
                logException(e);
            }
            this.shouldFetchFromFile = false;
        }
    }

    private void writeToFileGuarded() throws IOException, EncryptionException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeByte(1);
        dataOutputStream.writeInt(this.messageEntries.size());
        for (MessageEntry messageEntry : this.messageEntries) {
            messageEntry.writeExternal(dataOutputStream);
        }
        long currentTimeMillis = System.currentTimeMillis();
        EncryptionHelper.writeToEncryptedFile(this.encryption, this.file, byteArrayOutputStream.toByteArray());
        ApptentiveLog.m15638v(ApptentiveLogTag.MESSAGES, "Messages saved. Took %d ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
    }

    @Override // com.apptentive.android.sdk.storage.MessageStore
    public void addOrUpdateMessages(ApptentiveMessage... apptentiveMessageArr) {
        synchronized (this) {
            fetchEntries();
            for (ApptentiveMessage apptentiveMessage : apptentiveMessageArr) {
                MessageEntry findMessageEntry = findMessageEntry(apptentiveMessage);
                if (findMessageEntry != null) {
                    findMessageEntry.f6446id = apptentiveMessage.getId();
                    findMessageEntry.state = apptentiveMessage.getState().name();
                    if (apptentiveMessage.isRead()) {
                        findMessageEntry.isRead = Boolean.TRUE;
                    }
                    findMessageEntry.json = apptentiveMessage.getJsonObject().toString();
                } else {
                    MessageEntry messageEntry = new MessageEntry();
                    messageEntry.f6446id = apptentiveMessage.getId();
                    messageEntry.clientCreatedAt = apptentiveMessage.getClientCreatedAt();
                    messageEntry.nonce = apptentiveMessage.getNonce();
                    messageEntry.state = apptentiveMessage.getState().name();
                    messageEntry.isRead = Boolean.valueOf(apptentiveMessage.isRead());
                    messageEntry.json = apptentiveMessage.getJsonObject().toString();
                    this.messageEntries.add(messageEntry);
                }
            }
            writeToFile();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002c, code lost:
        r4.messageEntries.remove(r6);
        writeToFile();
     */
    @Override // com.apptentive.android.sdk.storage.MessageStore
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void deleteMessage(java.lang.String r5) {
        /*
            r4 = this;
            r0 = r4
            monitor-enter(r0)
            r0 = r4
            r0.fetchEntries()     // Catch: all -> 0x0047
            r0 = 0
            r6 = r0
        L_0x0008:
            r0 = r6
            r1 = r4
            java.util.List<com.apptentive.android.sdk.conversation.FileMessageStore$MessageEntry> r1 = r1.messageEntries     // Catch: all -> 0x0047
            int r1 = r1.size()     // Catch: all -> 0x0047
            if (r0 >= r1) goto L_0x0044
            r0 = r5
            r1 = r4
            java.util.List<com.apptentive.android.sdk.conversation.FileMessageStore$MessageEntry> r1 = r1.messageEntries     // Catch: all -> 0x0047
            r2 = r6
            java.lang.Object r1 = r1.get(r2)     // Catch: all -> 0x0047
            com.apptentive.android.sdk.conversation.FileMessageStore$MessageEntry r1 = (com.apptentive.android.sdk.conversation.FileMessageStore.MessageEntry) r1     // Catch: all -> 0x0047
            java.lang.String r1 = r1.nonce     // Catch: all -> 0x0047
            boolean r0 = com.apptentive.android.sdk.util.StringUtils.equal(r0, r1)     // Catch: all -> 0x0047
            if (r0 == 0) goto L_0x003e
            r0 = r4
            java.util.List<com.apptentive.android.sdk.conversation.FileMessageStore$MessageEntry> r0 = r0.messageEntries     // Catch: all -> 0x0047
            r1 = r6
            java.lang.Object r0 = r0.remove(r1)     // Catch: all -> 0x0047
            r0 = r4
            r0.writeToFile()     // Catch: all -> 0x0047
            goto L_0x0044
        L_0x003e:
            int r6 = r6 + 1
            goto L_0x0008
        L_0x0044:
            r0 = r4
            monitor-exit(r0)
            return
        L_0x0047:
            r5 = move-exception
            r0 = r4
            monitor-exit(r0)
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.conversation.FileMessageStore.deleteMessage(java.lang.String):void");
    }

    @Override // com.apptentive.android.sdk.storage.MessageStore
    public ApptentiveMessage findMessage(String str) {
        fetchEntries();
        for (int i = 0; i < this.messageEntries.size(); i++) {
            MessageEntry messageEntry = this.messageEntries.get(i);
            if (StringUtils.equal(str, messageEntry.nonce)) {
                return MessageFactory.fromJson(messageEntry.json);
            }
        }
        return null;
    }

    @Override // com.apptentive.android.sdk.storage.MessageStore
    public List<ApptentiveMessage> getAllMessages() throws Exception {
        ArrayList arrayList;
        synchronized (this) {
            fetchEntries();
            arrayList = new ArrayList();
            for (MessageEntry messageEntry : this.messageEntries) {
                ApptentiveMessage fromJson = MessageFactory.fromJson(messageEntry.json);
                if (fromJson == null) {
                    ApptentiveLog.m15644e(ApptentiveLogTag.MESSAGES, "Error parsing Record json from database: %s", messageEntry.json);
                } else {
                    fromJson.setState(ApptentiveMessage.State.parse(messageEntry.state));
                    fromJson.setRead(messageEntry.isRead.booleanValue());
                    arrayList.add(fromJson);
                }
            }
        }
        return arrayList;
    }

    @Override // com.apptentive.android.sdk.storage.MessageStore
    public String getLastReceivedMessageId() throws Exception {
        synchronized (this) {
            fetchEntries();
            String name = ApptentiveMessage.State.saved.name();
            for (int size = this.messageEntries.size() - 1; size >= 0; size--) {
                MessageEntry messageEntry = this.messageEntries.get(size);
                if (StringUtils.equal(messageEntry.state, name) && messageEntry.f6446id != null) {
                    return messageEntry.f6446id;
                }
            }
            return null;
        }
    }

    @Override // com.apptentive.android.sdk.storage.MessageStore
    public int getUnreadMessageCount() {
        int i;
        synchronized (this) {
            fetchEntries();
            i = 0;
            for (MessageEntry messageEntry : this.messageEntries) {
                if (!messageEntry.isRead.booleanValue() && messageEntry.f6446id != null) {
                    i++;
                }
            }
        }
        return i;
    }

    public void migrateLegacyStorage() {
        try {
            File unencryptedFilename = Util.getUnencryptedFilename(this.file);
            if (unencryptedFilename.exists()) {
                this.messageEntries.addAll(readFromLegacyFile(unencryptedFilename));
                writeToFile();
                ApptentiveLog.m15646d(ApptentiveLogTag.CONVERSATION, "Deleted legacy message storage: %b", Boolean.valueOf(unencryptedFilename.delete()));
            }
        } catch (Exception e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Exception while migrating messages", new Object[0]);
            logException(e);
        }
    }

    public String toString() {
        return "FileMessageStore{file=" + this.file + ", messageEntries=" + this.messageEntries + ", shouldFetchFromFile=" + this.shouldFetchFromFile + '}';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateEncryption(@NonNull Encryption encryption) {
        if (encryption != null) {
            this.encryption = encryption;
            writeToFile();
            return;
        }
        throw new IllegalArgumentException("Encryption is null");
    }

    @Override // com.apptentive.android.sdk.storage.MessageStore
    public void updateMessage(ApptentiveMessage apptentiveMessage) {
        synchronized (this) {
            fetchEntries();
            MessageEntry findMessageEntry = findMessageEntry(apptentiveMessage);
            if (findMessageEntry != null) {
                findMessageEntry.f6446id = apptentiveMessage.getId();
                findMessageEntry.clientCreatedAt = apptentiveMessage.getClientCreatedAt();
                findMessageEntry.nonce = apptentiveMessage.getNonce();
                findMessageEntry.state = apptentiveMessage.getState().name();
                if (apptentiveMessage.isRead()) {
                    findMessageEntry.isRead = Boolean.TRUE;
                }
                findMessageEntry.json = apptentiveMessage.getJsonObject().toString();
                writeToFile();
            }
        }
    }
}
