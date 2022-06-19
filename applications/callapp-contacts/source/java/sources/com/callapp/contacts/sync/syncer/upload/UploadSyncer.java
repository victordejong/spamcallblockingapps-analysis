package com.callapp.contacts.sync.syncer.upload;

import com.callapp.common.util.AESUtils;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.sync.model.SyncerContext;
import com.callapp.contacts.sync.syncer.Syncer;
import com.callapp.contacts.util.Base64Utils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CrashlyticsUtils;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.zip.GZIPOutputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/upload/UploadSyncer.class */
public abstract class UploadSyncer extends Syncer {
    protected static final int MINIMUM_SPACE_AVAILABLE_TO_UPLOAD_CONTACTS_IN_MB = 10;
    protected static final int MINIMUM_VALID_FILE_SIZE = 10;

    public static ObjectMapper getJsonObjectMapper() {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
        objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        objectMapper.configure(JsonGenerator.Feature.AUTO_CLOSE_TARGET, false);
        return objectMapper;
    }

    public BufferedWriter getBufferedWriter(File file) throws IOException, InvalidAlgorithmParameterException, NoSuchAlgorithmException, InvalidKeyException, NoSuchPaddingException {
        BufferedWriter bufferedWriter;
        if (file != null) {
            AESUtils aESUtils = new AESUtils(Base64Utils.getInstance());
            byte[] m31928a = AESUtils.m31928a(Prefs.f26241aR.get() + "@" + Prefs.f26245aV.get());
            bufferedWriter = new BufferedWriter(new OutputStreamWriter(new GZIPOutputStream(new CipherOutputStream(new FileOutputStream(file), aESUtils.m31925a(m31928a, m31928a))), StandardCharsets.UTF_8));
        } else {
            bufferedWriter = null;
        }
        return bufferedWriter;
    }

    public File getFile() {
        return IoUtils.m27508a(StringUtils.m26060a(12, true) + ".json");
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean needsDeviceData() {
        return false;
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public void onSyncContact(SyncerContext syncerContext) {
        syncerContext.markFullySynced();
    }

    /* JADX WARN: Finally extract failed */
    public boolean sendFileToServer(String str, File file) {
        if (file == null) {
            CLog.m27611a(getClass(), "jsonFile is null");
            return false;
        }
        long length = file.length();
        if (!file.exists() || length < 10) {
            CLog.m27610a(getClass(), "invalid jsonFile, length=%s", Long.valueOf(length));
            return false;
        }
        CLog.m27610a(UploadSyncer.class, "jsonFile created, length=%s", Long.valueOf(length));
        try {
            try {
                if (HttpUtils.m26980a(file, str)) {
                    file.delete();
                    return true;
                }
            } catch (Exception e) {
                CrashlyticsUtils.m27547a(new Exception(e.getMessage() + ", Country: " + Prefs.f26239aP.get()));
            }
            file.delete();
            return false;
        } catch (Throwable th) {
            file.delete();
            throw th;
        }
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean shouldSync() {
        if (Prefs.f26324bv.get() == null) {
            return true;
        }
        return super.shouldSync();
    }

    @Override // com.callapp.contacts.sync.syncer.Syncer
    public boolean shouldSyncContact(ContactData contactData) {
        return false;
    }
}
