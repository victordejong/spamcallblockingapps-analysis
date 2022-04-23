package com.callapp.contacts.sync.syncer.upload;

import com.callapp.common.model.json.JSONContact;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CrashlyticsUtils;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import javax.crypto.NoSuchPaddingException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/upload/JsonContactsUploadSyncher.class */
public abstract class JsonContactsUploadSyncher<T extends JSONContact> extends UploadSyncer {
    private static final long THREE_DAYS_MILLIS = 259200000;

    private File createJsonContactsFile() {
        Closeable closeable;
        Throwable th;
        BufferedWriter bufferedWriter;
        Throwable e;
        File file;
        Collection<T> contacts = getContacts();
        if (allowEmptyUpload() || !CollectionUtils.a(contacts)) {
            try {
                try {
                    try {
                        file = getFile();
                        try {
                            if (file == null) {
                                CLog.a(getClass(), "Cannot create json file, aborting upload");
                                IoUtils.a((Closeable) null);
                                return null;
                            }
                            ObjectMapper jsonObjectMapper = getJsonObjectMapper();
                            bufferedWriter = getBufferedWriter(file);
                            try {
                                bufferedWriter.write("[");
                                int i = 0;
                                for (T t : contacts) {
                                    if (i != 0) {
                                        bufferedWriter.write(",");
                                    }
                                    jsonObjectMapper.writeValue(bufferedWriter, t);
                                    i++;
                                }
                                bufferedWriter.write("]");
                                IoUtils.a(bufferedWriter);
                                return file;
                            } catch (IOException e2) {
                                e = e2;
                                CrashlyticsUtils.a(e);
                                CLog.a(getClass(), e, "Exception in createContactJsonFile()");
                                IoUtils.a();
                                file.delete();
                                IoUtils.a(bufferedWriter);
                                return null;
                            } catch (InvalidAlgorithmParameterException e3) {
                                e = e3;
                                CrashlyticsUtils.a(e);
                                CLog.a(getClass(), e, "Exception in createContactJsonFile()");
                                IoUtils.a();
                                file.delete();
                                IoUtils.a(bufferedWriter);
                                return null;
                            } catch (InvalidKeyException e4) {
                                e = e4;
                                CrashlyticsUtils.a(e);
                                CLog.a(getClass(), e, "Exception in createContactJsonFile()");
                                IoUtils.a();
                                file.delete();
                                IoUtils.a(bufferedWriter);
                                return null;
                            } catch (NoSuchAlgorithmException e5) {
                                e = e5;
                                CrashlyticsUtils.a(e);
                                CLog.a(getClass(), e, "Exception in createContactJsonFile()");
                                IoUtils.a();
                                file.delete();
                                IoUtils.a(bufferedWriter);
                                return null;
                            } catch (NoSuchPaddingException e6) {
                                e = e6;
                                CrashlyticsUtils.a(e);
                                CLog.a(getClass(), e, "Exception in createContactJsonFile()");
                                IoUtils.a();
                                file.delete();
                                IoUtils.a(bufferedWriter);
                                return null;
                            }
                        } catch (IOException | InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e7) {
                            e = e7;
                            bufferedWriter = null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        closeable = null;
                        IoUtils.a(closeable);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    closeable = null;
                    IoUtils.a(closeable);
                    throw th;
                }
            } catch (IOException | InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e8) {
                e = e8;
                file = null;
                bufferedWriter = null;
            }
        } else {
            CLog.a(getClass(), "Doesn't have contacts to upload");
            return null;
        }
    }

    public boolean allowEmptyUpload() {
        return false;
    }

    public abstract Collection<T> getContacts();

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public long getSyncPeriodMillis() {
        return THREE_DAYS_MILLIS;
    }

    public abstract String getUploadMethod();

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean onSyncEnd() {
        if (this.syncContext.isLongRunningSyncersAlreadyRunning(this)) {
            return false;
        }
        try {
            if (StringUtils.b((CharSequence) Prefs.aR.get()) && isSyncEnabled() && HttpUtils.a() && uploadToServer()) {
                return super.onSyncEnd();
            }
            this.syncContext.removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(this);
            return false;
        } finally {
            this.syncContext.removeSyncerFromLongRunningSyncersIfNotAlreadyRunning(this);
        }
    }

    protected void onUploadCompleted(boolean z) {
    }

    public boolean uploadToServer() {
        if (!HttpUtils.a()) {
            return false;
        }
        boolean sendFileToServer = sendFileToServer(getUploadMethod(), createJsonContactsFile());
        onUploadCompleted(sendFileToServer);
        return sendFileToServer;
    }
}
