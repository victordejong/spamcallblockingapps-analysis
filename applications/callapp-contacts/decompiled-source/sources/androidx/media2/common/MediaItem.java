package androidx.media2.common;

import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItem.class */
public class MediaItem extends CustomVersionedParcelable {

    /* renamed from: a  reason: collision with root package name */
    private final Object f2736a;

    /* renamed from: b  reason: collision with root package name */
    private final List<androidx.core.e.b<b, Executor>> f2737b;

    /* renamed from: d  reason: collision with root package name */
    MediaMetadata f2738d;
    public long e;
    public long f;

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItem$a.class */
    public static class a {

        /* renamed from: d  reason: collision with root package name */
        MediaMetadata f2742d;
        long e = 0;
        long f = 576460752303423487L;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v0 */
        /* JADX WARN: Type inference failed for: r8v2 */
        public a a(long j) {
            long j2 = j;
            if (j < 0) {
                j2 = 576460752303423487;
            }
            this.f = j2;
            return this;
        }

        public a a(MediaMetadata mediaMetadata) {
            this.f2742d = mediaMetadata;
            return this;
        }

        public MediaItem a() {
            return new MediaItem(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v0 */
        /* JADX WARN: Type inference failed for: r8v2 */
        public a b(long j) {
            long j2 = j;
            if (j < 0) {
                j2 = 0;
            }
            this.e = j2;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItem$b.class */
    public interface b {
        void a(MediaItem mediaItem, MediaMetadata mediaMetadata);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaItem() {
        this.f2736a = new Object();
        this.e = 0L;
        this.f = 576460752303423487L;
        this.f2737b = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaItem(a aVar) {
        this(aVar.f2742d, aVar.e, aVar.f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaItem(MediaItem mediaItem) {
        this(mediaItem.f2738d, mediaItem.e, mediaItem.f);
    }

    MediaItem(MediaMetadata mediaMetadata, long j, long j2) {
        this.f2736a = new Object();
        this.e = 0L;
        this.f = 576460752303423487L;
        this.f2737b = new ArrayList();
        if (j <= j2) {
            if (mediaMetadata != null && mediaMetadata.a(MediaMetadataCompat.METADATA_KEY_DURATION)) {
                long d2 = mediaMetadata.d(MediaMetadataCompat.METADATA_KEY_DURATION);
                if (!(d2 == Long.MIN_VALUE || j2 == 576460752303423487L || j2 <= d2)) {
                    throw new IllegalStateException("endPositionMs shouldn't be greater than duration in the metdata, endPositionMs=" + j2 + ", durationMs=" + d2);
                }
            }
            this.f2738d = mediaMetadata;
            this.e = j;
            this.f = j2;
            return;
        }
        throw new IllegalStateException("Illegal start/end position: " + j + " : " + j2);
    }

    public final void a(b bVar) {
        synchronized (this.f2736a) {
            for (int size = this.f2737b.size() - 1; size >= 0; size--) {
                if (this.f2737b.get(size).f1889a == bVar) {
                    this.f2737b.remove(size);
                    return;
                }
            }
        }
    }

    public final void a(final MediaMetadata mediaMetadata) {
        ArrayList<androidx.core.e.b> arrayList = new ArrayList();
        synchronized (this.f2736a) {
            MediaMetadata mediaMetadata2 = this.f2738d;
            if (mediaMetadata2 != mediaMetadata) {
                if (mediaMetadata2 == null || mediaMetadata == null || TextUtils.equals(f(), mediaMetadata.c(MediaMetadataCompat.METADATA_KEY_MEDIA_ID))) {
                    this.f2738d = mediaMetadata;
                    arrayList.addAll(this.f2737b);
                    for (androidx.core.e.b bVar : arrayList) {
                        final b bVar2 = (b) bVar.f1889a;
                        ((Executor) bVar.f1890b).execute(new Runnable() { // from class: androidx.media2.common.MediaItem.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                bVar2.a(MediaItem.this, mediaMetadata);
                            }
                        });
                    }
                    return;
                }
                Log.w("MediaItem", "MediaItem's media ID shouldn't be changed");
            }
        }
    }

    public final void a(Executor executor, b bVar) {
        synchronized (this.f2736a) {
            Iterator<androidx.core.e.b<b, Executor>> it2 = this.f2737b.iterator();
            do {
                if (!it2.hasNext()) {
                    this.f2737b.add(new androidx.core.e.b<>(bVar, executor));
                    return;
                }
            } while (it2.next().f1889a != bVar);
        }
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public final void a(boolean z) {
        if (getClass() == MediaItem.class) {
            super.a(z);
            return;
        }
        throw new RuntimeException("MediaItem's subclasses shouldn't be parcelized.");
    }

    public final MediaMetadata d() {
        MediaMetadata mediaMetadata;
        synchronized (this.f2736a) {
            mediaMetadata = this.f2738d;
        }
        return mediaMetadata;
    }

    public final String f() {
        String c2;
        synchronized (this.f2736a) {
            MediaMetadata mediaMetadata = this.f2738d;
            c2 = mediaMetadata != null ? mediaMetadata.c(MediaMetadataCompat.METADATA_KEY_MEDIA_ID) : null;
        }
        return c2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(getClass().getSimpleName());
        synchronized (this.f2736a) {
            sb.append("{Media Id=");
            sb.append(f());
            sb.append(", mMetadata=");
            sb.append(this.f2738d);
            sb.append(", mStartPositionMs=");
            sb.append(this.e);
            sb.append(", mEndPositionMs=");
            sb.append(this.f);
            sb.append('}');
        }
        return sb.toString();
    }
}
