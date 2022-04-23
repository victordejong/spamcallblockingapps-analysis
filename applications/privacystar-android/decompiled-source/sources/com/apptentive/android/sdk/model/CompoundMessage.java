package com.apptentive.android.sdk.model;

import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.encryption.EncryptionKey;
import com.apptentive.android.sdk.encryption.Encryptor;
import com.apptentive.android.sdk.model.ApptentiveMessage;
import com.apptentive.android.sdk.module.messagecenter.model.MessageCenterUtil;
import com.apptentive.android.sdk.network.HttpRequestMethod;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.image.ImageItem;
import com.apptentive.android.sdk.util.image.ImageUtil;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/CompoundMessage.class */
public class CompoundMessage extends ApptentiveMessage implements MessageCenterUtil.CompoundMessageCommonInterface {
    private static final String KEY_ATTACHMENTS = "attachments";
    @SensitiveDataKey
    private static final String KEY_BODY = "body";
    public static final String KEY_TEXT_ONLY = "text_only";
    @SensitiveDataKey
    private static final String KEY_TITLE = "title";
    private static final String lineEnd = "\r\n";
    private static final String twoHyphens = "--";
    private List<StoredFile> attachedFiles;
    private final String boundary;
    private boolean hasNoAttachments;
    private boolean isLast;
    private ArrayList<StoredFile> remoteAttachmentStoredFiles;

    static {
        registerSensitiveKeys(CompoundMessage.class);
    }

    public CompoundMessage() {
        this.hasNoAttachments = true;
        this.boundary = UUID.randomUUID().toString();
    }

    public CompoundMessage(String str) throws JSONException {
        super(str);
        this.hasNoAttachments = true;
        this.boundary = UUID.randomUUID().toString();
        parseAttachmentsArray(str);
        this.hasNoAttachments = getTextOnly();
    }

    private boolean parseAttachmentsArray(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        if (jSONObject.isNull(KEY_ATTACHMENTS)) {
            return false;
        }
        JSONArray jSONArray = jSONObject.getJSONArray(KEY_ATTACHMENTS);
        this.remoteAttachmentStoredFiles = new ArrayList<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = new JSONObject(jSONArray.getJSONObject(i).toString());
            String optString = jSONObject2.optString(FirebaseAnalytics.Param.CONTENT_TYPE);
            StoredFile storedFile = new StoredFile();
            storedFile.setId(getNonce());
            storedFile.setApptentiveUri(jSONObject2.optString("url"));
            storedFile.setSourceUriOrPath(jSONObject2.optString("thumbnail_url"));
            storedFile.setLocalFilePath(jSONObject2.optString(""));
            storedFile.setMimeType(optString);
            storedFile.setCreationTime(0L);
            this.remoteAttachmentStoredFiles.add(storedFile);
        }
        if (this.remoteAttachmentStoredFiles.size() <= 0) {
            return false;
        }
        setTextOnly(false);
        return true;
    }

    public void deleteAssociatedFiles() {
        try {
            List<StoredFile> list = ApptentiveInternal.getInstance().getApptentiveTaskManager().getAssociatedFiles(getNonce()).get();
            if (!(list == null || list.size() == 0)) {
                for (StoredFile storedFile : list) {
                    new File(storedFile.getLocalFilePath()).delete();
                }
                ApptentiveInternal.getInstance().getApptentiveTaskManager().deleteAssociatedFiles(getNonce());
            }
        } catch (Exception e) {
            ApptentiveLog.m411e(ApptentiveLogTag.MESSAGES, "Unable to delete associated files in worker thread", new Object[0]);
        }
    }

    public List<StoredFile> getAssociatedFiles() {
        try {
            if (this.hasNoAttachments) {
                return null;
            }
            try {
                return ApptentiveInternal.getInstance().getApptentiveTaskManager().getAssociatedFiles(getNonce()).get();
            } catch (Exception e) {
                ApptentiveLog.m411e(ApptentiveLogTag.MESSAGES, "Unable to get associated files in worker thread", new Object[0]);
                return null;
            }
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.model.MessageCenterUtil.CompoundMessageCommonInterface
    public String getBody() {
        return optString("body", null);
    }

    @Override // com.apptentive.android.sdk.model.Payload
    public String getHttpEndPoint(String str) {
        return StringUtils.format("/conversations/%s/messages", str);
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload, com.apptentive.android.sdk.model.Payload
    public String getHttpRequestContentType() {
        return String.format("%s;boundary=%s", isAuthenticated() ? "multipart/encrypted" : "multipart/mixed", this.boundary);
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload, com.apptentive.android.sdk.model.Payload
    public HttpRequestMethod getHttpRequestMethod() {
        return HttpRequestMethod.POST;
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.model.MessageCenterListItem
    public int getListItemType() {
        if (isAutomatedMessage()) {
            return 4;
        }
        return isOutgoingMessage() ? 5 : 6;
    }

    public List<StoredFile> getRemoteAttachments() {
        return this.remoteAttachmentStoredFiles;
    }

    public boolean getTextOnly() {
        return getBoolean(KEY_TEXT_ONLY);
    }

    public String getTitle() {
        return optString("title", null);
    }

    @Override // com.apptentive.android.sdk.model.ApptentiveMessage
    protected void initType() {
        setType(ApptentiveMessage.Type.CompoundMessage);
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.model.MessageCenterUtil.CompoundMessageCommonInterface
    public boolean isLastSent() {
        return isOutgoingMessage() && this.isLast;
    }

    @Override // com.apptentive.android.sdk.model.JsonPayload, com.apptentive.android.sdk.model.Payload
    public byte[] renderData() {
        try {
            boolean isAuthenticated = isAuthenticated();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            StringBuilder sb = new StringBuilder();
            sb.append("--");
            sb.append(this.boundary);
            sb.append("\r\n");
            byte[] bytes = ("Content-Disposition: form-data; name=\"message\"\r\nContent-Type: application/json;charset=UTF-8\r\n\r\n" + marshallForSending().toString() + "\r\n").getBytes();
            EncryptionKey encryptionKey = getEncryptionKey();
            if (isAuthenticated) {
                sb.append("Content-Disposition: form-data; name=\"message\"");
                sb.append("\r\n");
                sb.append("Content-Type: application/octet-stream");
                sb.append("\r\n");
                sb.append("\r\n");
                byteArrayOutputStream.write(sb.toString().getBytes());
                byteArrayOutputStream.write(Encryptor.encrypt(encryptionKey, bytes));
                byteArrayOutputStream.write("\r\n".getBytes());
            } else {
                byteArrayOutputStream.write(sb.toString().getBytes());
                byteArrayOutputStream.write(bytes);
            }
            if (this.attachedFiles != null) {
                for (StoredFile storedFile : this.attachedFiles) {
                    ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Starting to write an attachment part.", new Object[0]);
                    byteArrayOutputStream.write(("--" + this.boundary + "\r\n").getBytes());
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(String.format("Content-Disposition: form-data; name=\"file[]\"; filename=\"%s\"", storedFile.getFileName()));
                    sb2.append("\r\n");
                    sb2.append("Content-Type: ");
                    sb2.append(storedFile.getMimeType());
                    sb2.append("\r\n");
                    sb2.append("\r\n");
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    try {
                        ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Writing attachment envelope: %s", sb2.toString());
                        byteArrayOutputStream2.write(sb2.toString().getBytes());
                        try {
                            if (Util.isMimeTypeImage(storedFile.getMimeType())) {
                                ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Appending image attachment.", new Object[0]);
                                ImageUtil.appendScaledDownImageToStream(storedFile.getSourceUriOrPath(), byteArrayOutputStream2);
                            } else {
                                ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Appending non-image attachment.", new Object[0]);
                                Util.appendFileToStream(new File(storedFile.getSourceUriOrPath()), byteArrayOutputStream2);
                            }
                            Util.ensureClosed(null);
                            if (isAuthenticated) {
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("Content-Disposition: form-data; name=\"file[]\"");
                                sb3.append("\r\n");
                                sb3.append("Content-Type: application/octet-stream");
                                sb3.append("\r\n");
                                sb3.append("\r\n");
                                ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Writing encrypted envelope: %s", sb3.toString());
                                byteArrayOutputStream.write(sb3.toString().getBytes());
                                ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Encrypting attachment bytes: %d", Integer.valueOf(byteArrayOutputStream2.size()));
                                byte[] encrypt = Encryptor.encrypt(encryptionKey, byteArrayOutputStream2.toByteArray());
                                ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Writing encrypted attachment bytes: %d", Integer.valueOf(encrypt.length));
                                byteArrayOutputStream.write(encrypt);
                            } else {
                                ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Writing attachment bytes: %d", Integer.valueOf(byteArrayOutputStream2.size()));
                                byteArrayOutputStream.write(byteArrayOutputStream2.toByteArray());
                            }
                            byteArrayOutputStream.write("\r\n".getBytes());
                        } catch (Exception e) {
                            ApptentiveLog.m411e(ApptentiveLogTag.PAYLOADS, "Error reading Message Payload attachment: \"%s\".", e, storedFile.getLocalFilePath());
                            Util.ensureClosed(null);
                        }
                    } catch (Exception e2) {
                        ApptentiveLog.m411e(ApptentiveLogTag.PAYLOADS, "Error getting data for Message Payload attachments.", e2);
                        return null;
                    }
                }
            }
            byteArrayOutputStream.write(("--" + this.boundary + "--").getBytes());
            ApptentiveLog.m415d(ApptentiveLogTag.PAYLOADS, "Total payload body bytes: %d", Integer.valueOf(byteArrayOutputStream.size()));
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e3) {
            ApptentiveLog.m411e(ApptentiveLogTag.PAYLOADS, "Error assembling Message Payload.", e3);
            return null;
        }
    }

    public boolean setAssociatedFiles(List<StoredFile> list) {
        this.attachedFiles = list;
        if (list == null || list.size() == 0) {
            this.hasNoAttachments = true;
            return false;
        }
        this.hasNoAttachments = false;
        setTextOnly(this.hasNoAttachments);
        try {
            try {
                return ApptentiveInternal.getInstance().getApptentiveTaskManager().addCompoundMessageFiles(list).get().booleanValue();
            } catch (Exception e) {
                ApptentiveLog.m411e(ApptentiveLogTag.MESSAGES, "Unable to set associated files in worker thread", new Object[0]);
                return false;
            }
        } catch (Throwable th) {
            return false;
        }
    }

    public boolean setAssociatedImages(List<ImageItem> list) {
        if (list == null || list.size() == 0) {
            this.hasNoAttachments = true;
            return false;
        }
        this.hasNoAttachments = false;
        setTextOnly(this.hasNoAttachments);
        ArrayList arrayList = new ArrayList();
        for (ImageItem imageItem : list) {
            StoredFile storedFile = new StoredFile();
            storedFile.setId(getNonce());
            storedFile.setApptentiveUri("");
            storedFile.setSourceUriOrPath(imageItem.originalPath);
            storedFile.setLocalFilePath(imageItem.localCachePath);
            storedFile.setMimeType("image/jpeg");
            storedFile.setCreationTime(imageItem.time);
            arrayList.add(storedFile);
        }
        this.attachedFiles = arrayList;
        try {
            try {
                return ApptentiveInternal.getInstance().getApptentiveTaskManager().addCompoundMessageFiles(arrayList).get().booleanValue();
            } catch (Exception e) {
                ApptentiveLog.m411e(ApptentiveLogTag.MESSAGES, "Unable to set associated images in worker thread", new Object[0]);
                return false;
            }
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.model.MessageCenterUtil.CompoundMessageCommonInterface
    public void setBody(String str) {
        put("body", str);
    }

    @Override // com.apptentive.android.sdk.module.messagecenter.model.MessageCenterUtil.CompoundMessageCommonInterface
    public void setLastSent(boolean z) {
        this.isLast = z;
    }

    public void setTextOnly(boolean z) {
        put(KEY_TEXT_ONLY, z);
    }

    public void setTitle(String str) {
        put("title", str);
    }
}
