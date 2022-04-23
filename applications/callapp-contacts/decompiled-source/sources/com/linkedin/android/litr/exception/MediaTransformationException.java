package com.linkedin.android.litr.exception;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/exception/MediaTransformationException.class */
public abstract class MediaTransformationException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public String f33736a;

    public MediaTransformationException(Throwable th) {
        super(th);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + "Media transformation failed for job id: " + this.f33736a;
    }
}
