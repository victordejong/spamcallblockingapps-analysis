package com.linkedin.android.litr.exception;

import android.net.Uri;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/exception/MediaSourceException.class */
public class MediaSourceException extends MediaTransformationException {

    /* renamed from: b  reason: collision with root package name */
    private final a f33731b;

    /* renamed from: c  reason: collision with root package name */
    private final Uri f33732c;

    /* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/exception/MediaSourceException$a.class */
    public enum a {
        DATA_SOURCE("data source error");
        
        private final String text;

        a(String str) {
            this.text = str;
        }
    }

    public MediaSourceException(a aVar, Uri uri, Throwable th) {
        super(th);
        this.f33731b = aVar;
        this.f33732c = uri;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return "Failed to create media source due to a " + this.f33731b.text;
    }

    @Override // com.linkedin.android.litr.exception.MediaTransformationException, java.lang.Throwable
    public String toString() {
        return super.toString() + "\nFailed to create media source due to a " + this.f33731b.text + "\nUri: " + this.f33732c;
    }
}
