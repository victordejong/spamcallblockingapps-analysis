package com.apptentive.android.sdk.model;

import android.webkit.MimeTypeMap;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/model/StoredFile.class */
public class StoredFile {
    private String apptentiveUri;
    private long creationTime;

    /* renamed from: id */
    private String f67id;
    private String localFilePath;
    private String mimeType;
    private String sourceUriOrPath;

    public String getApptentiveUri() {
        return this.apptentiveUri;
    }

    public long getCreationTime() {
        return this.creationTime;
    }

    public String getFileName() {
        return String.format("file.%s", MimeTypeMap.getSingleton().getExtensionFromMimeType(this.mimeType));
    }

    public String getId() {
        return this.f67id;
    }

    public String getLocalFilePath() {
        return this.localFilePath;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public String getSourceUriOrPath() {
        return this.sourceUriOrPath;
    }

    public void setApptentiveUri(String str) {
        this.apptentiveUri = str;
    }

    public void setCreationTime(long j) {
        this.creationTime = j;
    }

    public void setId(String str) {
        this.f67id = str;
    }

    public void setLocalFilePath(String str) {
        this.localFilePath = str;
    }

    public void setMimeType(String str) {
        this.mimeType = str;
    }

    public void setSourceUriOrPath(String str) {
        this.sourceUriOrPath = str;
    }
}
