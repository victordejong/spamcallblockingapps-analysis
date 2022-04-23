package androidx.media2.exoplayer.external.drm;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/UnsupportedDrmException.class */
public final class UnsupportedDrmException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final int f2983a;

    public UnsupportedDrmException(int i) {
        this.f2983a = i;
    }

    public UnsupportedDrmException(int i, Exception exc) {
        super(exc);
        this.f2983a = i;
    }
}
