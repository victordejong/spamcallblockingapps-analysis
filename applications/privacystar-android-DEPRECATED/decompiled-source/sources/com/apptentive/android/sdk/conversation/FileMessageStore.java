package com.apptentive.android.sdk.conversation;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.encryption.EncryptionKey;
import com.apptentive.android.sdk.encryption.Encryptor;
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
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/conversation/FileMessageStore.class */
public class FileMessageStore implements MessageStore {
    private static final byte VERSION = 1;
    private final EncryptionKey encryptionKey;
    private final File file;
    private final List<MessageEntry> messageEntries;
    private boolean shouldFetchFromFile;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/conversation/FileMessageStore$MessageEntry.class */
    public static class MessageEntry implements SerializableObject {
        Double clientCreatedAt;

        /* renamed from: id */
        String f62id;
        Boolean isRead;
        String json;
        String nonce;
        String state;

        MessageEntry() {
        }

        MessageEntry(DataInput dataInput) throws IOException {
            this.f62id = Util.readNullableUTF(dataInput);
            this.clientCreatedAt = Util.readNullableDouble(dataInput);
            this.nonce = Util.readNullableUTF(dataInput);
            this.state = Util.readNullableUTF(dataInput);
            this.isRead = Util.readNullableBoolean(dataInput);
            this.json = Util.readNullableUTF(dataInput);
        }

        public String toString() {
            return "MessageEntry{id='" + this.f62id + "', clientCreatedAt=" + this.clientCreatedAt + ", nonce='" + this.nonce + "', state='" + this.state + "', isRead=" + this.isRead + ", json='" + this.json + "'}";
        }

        @Override // com.apptentive.android.sdk.serialization.SerializableObject
        public void writeExternal(DataOutput dataOutput) throws IOException {
            Util.writeNullableUTF(dataOutput, this.f62id);
            Util.writeNullableDouble(dataOutput, this.clientCreatedAt);
            Util.writeNullableUTF(dataOutput, this.nonce);
            Util.writeNullableUTF(dataOutput, this.state);
            Util.writeNullableBoolean(dataOutput, this.isRead);
            Util.writeNullableUTF(dataOutput, this.json);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FileMessageStore(File file, EncryptionKey encryptionKey) {
        if (file == null) {
            throw new IllegalArgumentException("File is null");
        } else if (encryptionKey == null) {
            throw new IllegalArgumentException("Encryption key is null");
        } else {
            this.file = file;
            this.encryptionKey = encryptionKey;
            this.messageEntries = new ArrayList();
            this.shouldFetchFromFile = true;
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

    private void readFromFile() {
        synchronized (this) {
            this.messageEntries.clear();
            try {
                if (this.file.exists()) {
                    this.messageEntries.addAll(readFromFileGuarded());
                }
            } catch (Exception e) {
                ApptentiveLog.m410e(ApptentiveLogTag.MESSAGES, e, "Exception while reading entries", new Object[0]);
            }
        }
    }

    private List<MessageEntry> readFromFileGuarded() throws IOException, NoSuchPaddingException, InvalidAlgorithmParameterException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, InvalidKeyException {
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(Encryptor.readFromEncryptedFile(this.encryptionKey, this.file)));
        byte readByte = dataInputStream.readByte();
        if (readByte != 1) {
            throw new IOException("Unsupported binary version: " + ((int) readByte));
        }
        int readInt = dataInputStream.readInt();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < readInt; i++) {
            arrayList.add(new MessageEntry(dataInputStream));
        }
        return arrayList;
    }

    private static List<MessageEntry> readFromLegacyFile(File file) throws IOException {
        DataInputStream dataInputStream;
        Throwable th;
        try {
            dataInputStream = new DataInputStream(new FileInputStream(file));
            try {
                byte readByte = dataInputStream.readByte();
                if (readByte != 1) {
                    throw new IOException("Unsupported binary version: " + ((int) readByte));
                }
                int readInt = dataInputStream.readInt();
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < readInt; i++) {
                    arrayList.add(new MessageEntry(dataInputStream));
                }
                Util.ensureClosed(dataInputStream);
                return arrayList;
            } catch (Throwable th2) {
                th = th2;
                Util.ensureClosed(dataInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            dataInputStream = null;
        }
    }

    private void writeToFile() {
        synchronized (this) {
            try {
                writeToFileGuarded();
            } catch (Exception e) {
                ApptentiveLog.m410e(ApptentiveLogTag.MESSAGES, e, "Exception while saving messages", new Object[0]);
            }
            this.shouldFetchFromFile = false;
        }
    }

    private void writeToFileGuarded() throws IOException, NoSuchPaddingException, InvalidKeyException, NoSuchAlgorithmException, IllegalBlockSizeException, BadPaddingException, InvalidAlgorithmParameterException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.writeByte(1);
        dataOutputStream.writeInt(this.messageEntries.size());
        for (MessageEntry messageEntry : this.messageEntries) {
            messageEntry.writeExternal(dataOutputStream);
        }
        Encryptor.writeToEncryptedFile(this.encryptionKey, this.file, byteArrayOutputStream.toByteArray());
    }

    @Override // com.apptentive.android.sdk.storage.MessageStore
    public void addOrUpdateMessages(ApptentiveMessage... apptentiveMessageArr) {
        synchronized (this) {
            fetchEntries();
            for (ApptentiveMessage apptentiveMessage : apptentiveMessageArr) {
                MessageEntry findMessageEntry = findMessageEntry(apptentiveMessage);
                if (findMessageEntry != null) {
                    findMessageEntry.f62id = apptentiveMessage.getId();
                    findMessageEntry.state = apptentiveMessage.getState().name();
                    if (apptentiveMessage.isRead()) {
                        findMessageEntry.isRead = true;
                    }
                    findMessageEntry.json = apptentiveMessage.getJsonObject().toString();
                } else {
                    MessageEntry messageEntry = new MessageEntry();
                    messageEntry.f62id = apptentiveMessage.getId();
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

    @Override // com.apptentive.android.sdk.storage.MessageStore
    public void deleteAllMessages() {
        synchronized (this) {
            this.messageEntries.clear();
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
                    ApptentiveLog.m411e(ApptentiveLogTag.MESSAGES, "Error parsing Record json from database: %s", messageEntry.json);
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
                if (StringUtils.equal(messageEntry.state, name) && messageEntry.f62id != null) {
                    return messageEntry.f62id;
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
                if (!messageEntry.isRead.booleanValue() && messageEntry.f62id != null) {
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
                ApptentiveLog.m415d(ApptentiveLogTag.CONVERSATION, "Deleted legacy message storage: %b", Boolean.valueOf(unencryptedFilename.delete()));
            }
        } catch (Exception e) {
            ApptentiveLog.m410e(ApptentiveLogTag.CONVERSATION, e, "Exception while migrating messages", new Object[0]);
        }
    }

    public String toString() {
        return "FileMessageStore{file=" + this.file + ", messageEntries=" + this.messageEntries + ", shouldFetchFromFile=" + this.shouldFetchFromFile + '}';
    }

    @Override // com.apptentive.android.sdk.storage.MessageStore
    public void updateMessage(ApptentiveMessage apptentiveMessage) {
        synchronized (this) {
            fetchEntries();
            MessageEntry findMessageEntry = findMessageEntry(apptentiveMessage);
            if (findMessageEntry != null) {
                findMessageEntry.f62id = apptentiveMessage.getId();
                findMessageEntry.clientCreatedAt = apptentiveMessage.getClientCreatedAt();
                findMessageEntry.nonce = apptentiveMessage.getNonce();
                findMessageEntry.state = apptentiveMessage.getState().name();
                if (apptentiveMessage.isRead()) {
                    findMessageEntry.isRead = true;
                }
                findMessageEntry.json = apptentiveMessage.getJsonObject().toString();
                writeToFile();
            }
        }
    }
}
