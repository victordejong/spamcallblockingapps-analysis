package androidx.media2.exoplayer.external.drm;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/UnsupportedDrmException.class */
public final class UnsupportedDrmException extends Exception {

    /* renamed from: a */
    public final int f5575a;

    public UnsupportedDrmException(int i) {
        this.f5575a = i;
    }

    public UnsupportedDrmException(int i, Exception exc) {
        super(exc);
        this.f5575a = i;
    }
}
