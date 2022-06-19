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
        if (!allowEmptyUpload() && CollectionUtils.m26076a(contacts)) {
            CLog.m27611a(getClass(), "Doesn't have contacts to upload");
            return null;
        }
        try {
            try {
                try {
                    file = getFile();
                    try {
                        if (file == null) {
                            CLog.m27611a(getClass(), "Cannot create json file, aborting upload");
                            IoUtils.m27514a((Closeable) null);
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
                            IoUtils.m27514a(bufferedWriter);
                            return file;
                        } catch (IOException e2) {
                            e = e2;
                            CrashlyticsUtils.m27547a(e);
                            BufferedWriter bufferedWriter2 = bufferedWriter;
                            CLog.m27608a(getClass(), e, "Exception in createContactJsonFile()");
                            BufferedWriter bufferedWriter3 = bufferedWriter;
                            IoUtils.m27520a();
                            BufferedWriter bufferedWriter4 = bufferedWriter;
                            file.delete();
                            IoUtils.m27514a(bufferedWriter);
                            return null;
                        } catch (InvalidAlgorithmParameterException e3) {
                            e = e3;
                            CrashlyticsUtils.m27547a(e);
                            BufferedWriter bufferedWriter22 = bufferedWriter;
                            CLog.m27608a(getClass(), e, "Exception in createContactJsonFile()");
                            BufferedWriter bufferedWriter32 = bufferedWriter;
                            IoUtils.m27520a();
                            BufferedWriter bufferedWriter42 = bufferedWriter;
                            file.delete();
                            IoUtils.m27514a(bufferedWriter);
                            return null;
                        } catch (InvalidKeyException e4) {
                            e = e4;
                            CrashlyticsUtils.m27547a(e);
                            BufferedWriter bufferedWriter222 = bufferedWriter;
                            CLog.m27608a(getClass(), e, "Exception in createContactJsonFile()");
                            BufferedWriter bufferedWriter322 = bufferedWriter;
                            IoUtils.m27520a();
                            BufferedWriter bufferedWriter422 = bufferedWriter;
                            file.delete();
                            IoUtils.m27514a(bufferedWriter);
                            return null;
                        } catch (NoSuchAlgorithmException e5) {
                            e = e5;
                            CrashlyticsUtils.m27547a(e);
                            BufferedWriter bufferedWriter2222 = bufferedWriter;
                            CLog.m27608a(getClass(), e, "Exception in createContactJsonFile()");
                            BufferedWriter bufferedWriter3222 = bufferedWriter;
                            IoUtils.m27520a();
                            BufferedWriter bufferedWriter4222 = bufferedWriter;
                            file.delete();
                            IoUtils.m27514a(bufferedWriter);
                            return null;
                        } catch (NoSuchPaddingException e6) {
                            e = e6;
                            CrashlyticsUtils.m27547a(e);
                            BufferedWriter bufferedWriter22222 = bufferedWriter;
                            CLog.m27608a(getClass(), e, "Exception in createContactJsonFile()");
                            BufferedWriter bufferedWriter32222 = bufferedWriter;
                            IoUtils.m27520a();
                            BufferedWriter bufferedWriter42222 = bufferedWriter;
                            file.delete();
                            IoUtils.m27514a(bufferedWriter);
                            return null;
                        }
                    } catch (IOException | InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e7) {
                        e = e7;
                        bufferedWriter = null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    closeable = null;
                    IoUtils.m27514a(closeable);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                closeable = null;
                IoUtils.m27514a(closeable);
                throw th;
            }
        } catch (IOException | InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | NoSuchPaddingException e8) {
            e = e8;
            file = null;
            bufferedWriter = null;
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
            if (StringUtils.m26045b((CharSequence) Prefs.f26241aR.get()) && isSyncEnabled() && HttpUtils.m26985a() && uploadToServer()) {
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
        if (!HttpUtils.m26985a()) {
            return false;
        }
        boolean sendFileToServer = sendFileToServer(getUploadMethod(), createJsonContactsFile());
        onUploadCompleted(sendFileToServer);
        return sendFileToServer;
    }
}
