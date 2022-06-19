package com.linkedin.android.litr.exception;

import android.net.Uri;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/exception/MediaSourceException.class */
public class MediaSourceException extends MediaTransformationException {

    /* renamed from: b */
    private final EnumC16644a f58571b;

    /* renamed from: c */
    private final Uri f58572c;

    /* renamed from: com.linkedin.android.litr.exception.MediaSourceException$a */
    /* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/exception/MediaSourceException$a.class */
    public enum EnumC16644a {
        DATA_SOURCE("data source error");
        
        private final String text;

        EnumC16644a(String str) {
            this.text = str;
        }
    }

    public MediaSourceException(EnumC16644a enumC16644a, Uri uri, Throwable th) {
        super(th);
        this.f58571b = enumC16644a;
        this.f58572c = uri;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return "Failed to create media source due to a " + this.f58571b.text;
    }

    @Override // com.linkedin.android.litr.exception.MediaTransformationException, java.lang.Throwable
    public String toString() {
        return super.toString() + "\nFailed to create media source due to a " + this.f58571b.text + "\nUri: " + this.f58572c;
    }
}
