package androidx.media2.common;

import android.support.p008v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.p036e.C0828b;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItem.class */
public class MediaItem extends CustomVersionedParcelable {

    /* renamed from: a */
    private final Object f5026a;

    /* renamed from: b */
    private final List<C0828b<AbstractC1347b, Executor>> f5027b;

    /* renamed from: d */
    MediaMetadata f5028d;

    /* renamed from: e */
    public long f5029e;

    /* renamed from: f */
    public long f5030f;

    /* renamed from: androidx.media2.common.MediaItem$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItem$a.class */
    public static class C1346a {

        /* renamed from: d */
        MediaMetadata f5034d;

        /* renamed from: e */
        long f5035e = 0;

        /* renamed from: f */
        long f5036f = 576460752303423487L;

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public C1346a mo43176a(long j) {
            char c = j;
            if (j < 0) {
                c = 65535;
            }
            this.f5036f = c;
            return this;
        }

        /* renamed from: a */
        public C1346a mo43175a(MediaMetadata mediaMetadata) {
            this.f5034d = mediaMetadata;
            return this;
        }

        /* renamed from: a */
        public MediaItem mo43177a() {
            return new MediaItem(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: b */
        public C1346a mo43173b(long j) {
            char c = j;
            if (j < 0) {
                c = 0;
            }
            this.f5035e = c;
            return this;
        }
    }

    /* renamed from: androidx.media2.common.MediaItem$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItem$b.class */
    public interface AbstractC1347b {
        /* renamed from: a */
        void mo40916a(MediaItem mediaItem, MediaMetadata mediaMetadata);
    }

    public MediaItem() {
        this.f5026a = new Object();
        this.f5029e = 0L;
        this.f5030f = 576460752303423487L;
        this.f5027b = new ArrayList();
    }

    public MediaItem(C1346a c1346a) {
        this(c1346a.f5034d, c1346a.f5035e, c1346a.f5036f);
    }

    public MediaItem(MediaItem mediaItem) {
        this(mediaItem.f5028d, mediaItem.f5029e, mediaItem.f5030f);
    }

    MediaItem(MediaMetadata mediaMetadata, long j, long j2) {
        this.f5026a = new Object();
        this.f5029e = 0L;
        this.f5030f = 576460752303423487L;
        this.f5027b = new ArrayList();
        if (j > j2) {
            throw new IllegalStateException("Illegal start/end position: " + j + " : " + j2);
        }
        if (mediaMetadata != null && mediaMetadata.m43197a(MediaMetadataCompat.METADATA_KEY_DURATION)) {
            long m43194d = mediaMetadata.m43194d(MediaMetadataCompat.METADATA_KEY_DURATION);
            if (m43194d != Long.MIN_VALUE && j2 != 576460752303423487L && j2 > m43194d) {
                throw new IllegalStateException("endPositionMs shouldn't be greater than duration in the metdata, endPositionMs=" + j2 + ", durationMs=" + m43194d);
            }
        }
        this.f5028d = mediaMetadata;
        this.f5029e = j;
        this.f5030f = j2;
    }

    /* renamed from: a */
    public final void m43203a(AbstractC1347b abstractC1347b) {
        synchronized (this.f5026a) {
            for (int size = this.f5027b.size() - 1; size >= 0; size--) {
                if (this.f5027b.get(size).f3556a == abstractC1347b) {
                    this.f5027b.remove(size);
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m43202a(final MediaMetadata mediaMetadata) {
        ArrayList<C0828b> arrayList = new ArrayList();
        synchronized (this.f5026a) {
            MediaMetadata mediaMetadata2 = this.f5028d;
            if (mediaMetadata2 == mediaMetadata) {
                return;
            }
            if (mediaMetadata2 != null && mediaMetadata != null && !TextUtils.equals(m43199f(), mediaMetadata.m43195c(MediaMetadataCompat.METADATA_KEY_MEDIA_ID))) {
                Log.w("MediaItem", "MediaItem's media ID shouldn't be changed");
                return;
            }
            this.f5028d = mediaMetadata;
            arrayList.addAll(this.f5027b);
            for (C0828b c0828b : arrayList) {
                final AbstractC1347b abstractC1347b = (AbstractC1347b) c0828b.f3556a;
                ((Executor) c0828b.f3557b).execute(new Runnable() { // from class: androidx.media2.common.MediaItem.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        abstractC1347b.mo40916a(MediaItem.this, mediaMetadata);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public final void m43201a(Executor executor, AbstractC1347b abstractC1347b) {
        synchronized (this.f5026a) {
            Iterator<C0828b<AbstractC1347b, Executor>> it2 = this.f5027b.iterator();
            do {
                if (!it2.hasNext()) {
                    this.f5027b.add(new C0828b<>(abstractC1347b, executor));
                    return;
                }
            } while (it2.next().f3556a != abstractC1347b);
        }
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    /* renamed from: a */
    public final void mo39667a(boolean z) {
        if (getClass() == MediaItem.class) {
            super.mo39667a(z);
            return;
        }
        throw new RuntimeException("MediaItem's subclasses shouldn't be parcelized.");
    }

    /* renamed from: d */
    public final MediaMetadata m43200d() {
        MediaMetadata mediaMetadata;
        synchronized (this.f5026a) {
            mediaMetadata = this.f5028d;
        }
        return mediaMetadata;
    }

    /* renamed from: f */
    public final String m43199f() {
        String m43195c;
        synchronized (this.f5026a) {
            MediaMetadata mediaMetadata = this.f5028d;
            m43195c = mediaMetadata != null ? mediaMetadata.m43195c(MediaMetadataCompat.METADATA_KEY_MEDIA_ID) : null;
        }
        return m43195c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(getClass().getSimpleName());
        synchronized (this.f5026a) {
            sb.append("{Media Id=");
            sb.append(m43199f());
            sb.append(", mMetadata=");
            sb.append(this.f5028d);
            sb.append(", mStartPositionMs=");
            sb.append(this.f5029e);
            sb.append(", mEndPositionMs=");
            sb.append(this.f5030f);
            sb.append('}');
        }
        return sb.toString();
    }
}
