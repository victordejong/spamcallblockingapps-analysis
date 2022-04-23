package androidx.media2.exoplayer.external.drm;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DecryptionException.class */
public class DecryptionException extends Exception {
    public final int errorCode;

    public DecryptionException(int i, String str) {
        super(str);
        this.errorCode = i;
    }
}
