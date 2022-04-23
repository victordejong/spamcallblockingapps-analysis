package com.linkedin.android.litr.exception;

import android.net.Uri;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/exception/MediaTargetException.class */
public class MediaTargetException extends MediaTransformationException {

    /* renamed from: b  reason: collision with root package name */
    private final a f33733b;

    /* renamed from: c  reason: collision with root package name */
    private final String f33734c;

    /* renamed from: d  reason: collision with root package name */
    private final int f33735d;

    /* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/exception/MediaTargetException$a.class */
    public enum a {
        INVALID_PARAMS("Invalid parameters"),
        IO_FAILUE("Failed to open the media target for write."),
        UNSUPPORTED_URI_TYPE("URI type not supported at API level below 26");
        
        private final String text;

        a(String str) {
            this.text = str;
        }
    }

    public MediaTargetException(a aVar, Uri uri, int i, Throwable th) {
        this(aVar, uri.toString(), i, th);
    }

    public MediaTargetException(a aVar, String str, int i, Throwable th) {
        super(th);
        this.f33733b = aVar;
        this.f33734c = str;
        this.f33735d = i;
    }

    @Override // com.linkedin.android.litr.exception.MediaTransformationException, java.lang.Throwable
    public String toString() {
        return super.toString() + '\n' + this.f33733b.text + "\nOutput file path or Uri encoded string: " + this.f33734c + "\nMediaMuxer output format: " + this.f33735d;
    }
}
