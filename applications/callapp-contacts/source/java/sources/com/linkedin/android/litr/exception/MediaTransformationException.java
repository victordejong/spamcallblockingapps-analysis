package com.linkedin.android.litr.exception;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/exception/MediaTransformationException.class */
public abstract class MediaTransformationException extends Exception {

    /* renamed from: a */
    public String f58576a;

    public MediaTransformationException(Throwable th) {
        super(th);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + "Media transformation failed for job id: " + this.f58576a;
    }
}
