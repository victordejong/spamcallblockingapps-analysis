package androidx.media2.common;

import androidx.versionedparcelable.CustomVersionedParcelable;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItem.class */
public class MediaItem extends CustomVersionedParcelable {

    /* renamed from: a */
    public final Object f1517a;

    /* renamed from: b */
    public MediaMetadata f1518b;

    /* renamed from: c */
    public long f1519c;

    /* renamed from: d */
    public long f1520d;

    /* renamed from: androidx.media2.common.MediaItem$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItem$a.class */
    public static class C0273a {

        /* renamed from: a */
        public MediaMetadata f1521a;

        /* renamed from: b */
        public long f1522b = 0;

        /* renamed from: c */
        public long f1523c = 576460752303423487L;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v0 */
        /* JADX WARN: Type inference failed for: r8v2 */
        /* renamed from: a */
        public C0273a mo38200a(long j) {
            long j2 = j;
            if (j < 0) {
                j2 = 576460752303423487;
            }
            this.f1523c = j2;
            return this;
        }

        /* renamed from: a */
        public C0273a mo38199a(MediaMetadata mediaMetadata) {
            this.f1521a = mediaMetadata;
            return this;
        }

        /* renamed from: a */
        public MediaItem mo38201a() {
            return new MediaItem(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v0 */
        /* JADX WARN: Type inference failed for: r8v2 */
        /* renamed from: b */
        public C0273a mo38198b(long j) {
            long j2 = j;
            if (j < 0) {
                j2 = 0;
            }
            this.f1522b = j2;
            return this;
        }
    }

    public MediaItem() {
        this.f1517a = new Object();
        this.f1519c = 0L;
        this.f1520d = 576460752303423487L;
        new ArrayList();
    }

    public MediaItem(C0273a aVar) {
        this(aVar.f1521a, aVar.f1522b, aVar.f1523c);
    }

    public MediaItem(MediaItem mediaItem) {
        this(mediaItem.f1518b, mediaItem.f1519c, mediaItem.f1520d);
    }

    public MediaItem(MediaMetadata mediaMetadata, long j, long j2) {
        this.f1517a = new Object();
        this.f1519c = 0L;
        this.f1520d = 576460752303423487L;
        new ArrayList();
        if (j <= j2) {
            if (mediaMetadata != null && mediaMetadata.m38230a("android.media.metadata.DURATION")) {
                long c = mediaMetadata.m38228c("android.media.metadata.DURATION");
                if (!(c == Long.MIN_VALUE || j2 == 576460752303423487L || j2 <= c)) {
                    throw new IllegalStateException("endPositionMs shouldn't be greater than duration in the metdata, endPositionMs=" + j2 + ", durationMs=" + c);
                }
            }
            this.f1518b = mediaMetadata;
            this.f1519c = j;
            this.f1520d = j2;
            return;
        }
        throw new IllegalStateException("Illegal start/end position: " + j + " : " + j2);
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: a */
    public void mo32076a(boolean z) {
        if (getClass() == MediaItem.class) {
            super.mo32076a(z);
            return;
        }
        throw new RuntimeException("MediaItem's subclasses shouldn't be parcelized.");
    }

    /* renamed from: g */
    public long m38234g() {
        return this.f1520d;
    }

    /* renamed from: h */
    public String m38233h() {
        String d;
        synchronized (this.f1517a) {
            d = this.f1518b != null ? this.f1518b.m38227d("android.media.metadata.MEDIA_ID") : null;
        }
        return d;
    }

    /* renamed from: i */
    public MediaMetadata m38232i() {
        MediaMetadata mediaMetadata;
        synchronized (this.f1517a) {
            mediaMetadata = this.f1518b;
        }
        return mediaMetadata;
    }

    /* renamed from: j */
    public long m38231j() {
        return this.f1519c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(getClass().getSimpleName());
        synchronized (this.f1517a) {
            sb.append("{mMetadata=");
            sb.append(this.f1518b);
            sb.append(", mStartPositionMs=");
            sb.append(this.f1519c);
            sb.append(", mEndPositionMs=");
            sb.append(this.f1520d);
            sb.append('}');
        }
        return sb.toString();
    }
}
