package com.linkedin.android.litr.exception;

import android.net.Uri;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/exception/MediaTargetException.class */
public class MediaTargetException extends MediaTransformationException {

    /* renamed from: b */
    private final EnumC16645a f58573b;

    /* renamed from: c */
    private final String f58574c;

    /* renamed from: d */
    private final int f58575d;

    /* renamed from: com.linkedin.android.litr.exception.MediaTargetException$a */
    /* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/exception/MediaTargetException$a.class */
    public enum EnumC16645a {
        INVALID_PARAMS("Invalid parameters"),
        IO_FAILUE("Failed to open the media target for write."),
        UNSUPPORTED_URI_TYPE("URI type not supported at API level below 26");
        
        private final String text;

        EnumC16645a(String str) {
            this.text = str;
        }
    }

    public MediaTargetException(EnumC16645a enumC16645a, Uri uri, int i, Throwable th) {
        this(enumC16645a, uri.toString(), i, th);
    }

    public MediaTargetException(EnumC16645a enumC16645a, String str, int i, Throwable th) {
        super(th);
        this.f58573b = enumC16645a;
        this.f58574c = str;
        this.f58575d = i;
    }

    @Override // com.linkedin.android.litr.exception.MediaTransformationException, java.lang.Throwable
    public String toString() {
        return super.toString() + '\n' + this.f58573b.text + "\nOutput file path or Uri encoded string: " + this.f58574c + "\nMediaMuxer output format: " + this.f58575d;
    }
}
