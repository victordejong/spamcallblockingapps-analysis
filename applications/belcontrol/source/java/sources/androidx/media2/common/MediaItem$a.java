package androidx.media2.common;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItem$a.class */
public class MediaItem$a {

    /* renamed from: a */
    public MediaMetadata f1098a;

    /* renamed from: b */
    public long f1099b = 0;

    /* renamed from: c */
    public long f1100c = 576460752303423487L;

    /* renamed from: a */
    public MediaItem m6524a() {
        return new MediaItem(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public MediaItem$a m6523b(long j) {
        char c = j;
        if (j < 0) {
            c = 65535;
        }
        this.f1100c = c;
        return this;
    }

    /* renamed from: c */
    public MediaItem$a m6522c(MediaMetadata mediaMetadata) {
        this.f1098a = mediaMetadata;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public MediaItem$a m6521d(long j) {
        char c = j;
        if (j < 0) {
            c = 0;
        }
        this.f1099b = c;
        return this;
    }
}
