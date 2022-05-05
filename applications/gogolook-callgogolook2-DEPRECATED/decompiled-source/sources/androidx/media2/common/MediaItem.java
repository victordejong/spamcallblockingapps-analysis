package androidx.media2.common;

import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItem.class */
public class MediaItem extends CustomVersionedParcelable {
    public static final long LONG_MAX = 576460752303423487L;
    public static final long POSITION_UNKNOWN = 576460752303423487L;
    public static final String TAG = "MediaItem";
    public long mEndPositionMs;
    @GuardedBy("mLock")
    public final List<Pair<OnMetadataChangedListener, Executor>> mListeners;
    public final Object mLock;
    @GuardedBy("mLock")
    public MediaMetadata mMetadata;
    public long mStartPositionMs;

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItem$Builder.class */
    public static class Builder {
        public MediaMetadata mMetadata;
        public long mStartPositionMs = 0;
        public long mEndPositionMs = 576460752303423487L;

        @NonNull
        public MediaItem build() {
            return new MediaItem(this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v0 */
        /* JADX WARN: Type inference failed for: r8v2 */
        @NonNull
        public Builder setEndPosition(long j) {
            long j2 = j;
            if (j < 0) {
                j2 = 576460752303423487;
            }
            this.mEndPositionMs = j2;
            return this;
        }

        @NonNull
        public Builder setMetadata(@Nullable MediaMetadata mediaMetadata) {
            this.mMetadata = mediaMetadata;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v0 */
        /* JADX WARN: Type inference failed for: r8v2 */
        @NonNull
        public Builder setStartPosition(long j) {
            long j2 = j;
            if (j < 0) {
                j2 = 0;
            }
            this.mStartPositionMs = j2;
            return this;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaItem$OnMetadataChangedListener.class */
    public interface OnMetadataChangedListener {
        void onMetadataChanged(MediaItem mediaItem);
    }

    public MediaItem() {
        this.mLock = new Object();
        this.mStartPositionMs = 0L;
        this.mEndPositionMs = 576460752303423487L;
        this.mListeners = new ArrayList();
    }

    public MediaItem(Builder builder) {
        this(builder.mMetadata, builder.mStartPositionMs, builder.mEndPositionMs);
    }

    public MediaItem(MediaItem mediaItem) {
        this(mediaItem.mMetadata, mediaItem.mStartPositionMs, mediaItem.mEndPositionMs);
    }

    public MediaItem(@Nullable MediaMetadata mediaMetadata, long j, long j2) {
        this.mLock = new Object();
        this.mStartPositionMs = 0L;
        this.mEndPositionMs = 576460752303423487L;
        this.mListeners = new ArrayList();
        if (j <= j2) {
            if (mediaMetadata != null && mediaMetadata.containsKey(MediaMetadata.METADATA_KEY_DURATION)) {
                long j3 = mediaMetadata.getLong(MediaMetadata.METADATA_KEY_DURATION);
                if (!(j3 == Long.MIN_VALUE || j2 == 576460752303423487L || j2 <= j3)) {
                    throw new IllegalStateException("endPositionMs shouldn't be greater than duration in the metdata, endPositionMs=" + j2 + ", durationMs=" + j3);
                }
            }
            this.mMetadata = mediaMetadata;
            this.mStartPositionMs = j;
            this.mEndPositionMs = j2;
            return;
        }
        throw new IllegalStateException("Illegal start/end position: " + j + " : " + j2);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void addOnMetadataChangedListener(Executor executor, OnMetadataChangedListener onMetadataChangedListener) {
        synchronized (this.mLock) {
            Iterator<Pair<OnMetadataChangedListener, Executor>> it = this.mListeners.iterator();
            do {
                if (!it.hasNext()) {
                    this.mListeners.add(new Pair<>(onMetadataChangedListener, executor));
                    return;
                }
            } while (it.next().first != onMetadataChangedListener);
        }
    }

    public long getEndPosition() {
        return this.mEndPositionMs;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public String getMediaId() {
        String string;
        synchronized (this.mLock) {
            string = this.mMetadata != null ? this.mMetadata.getString(MediaMetadata.METADATA_KEY_MEDIA_ID) : null;
        }
        return string;
    }

    @Nullable
    public MediaMetadata getMetadata() {
        MediaMetadata mediaMetadata;
        synchronized (this.mLock) {
            mediaMetadata = this.mMetadata;
        }
        return mediaMetadata;
    }

    public long getStartPosition() {
        return this.mStartPositionMs;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void onPreParceling(boolean z) {
        if (getClass() == MediaItem.class) {
            super.onPreParceling(z);
            return;
        }
        throw new RuntimeException("MediaItem's subclasses shouldn't be parcelized.");
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void removeOnMetadataChangedListener(OnMetadataChangedListener onMetadataChangedListener) {
        synchronized (this.mLock) {
            for (int size = this.mListeners.size() - 1; size >= 0; size--) {
                if (this.mListeners.get(size).first == onMetadataChangedListener) {
                    this.mListeners.remove(size);
                    return;
                }
            }
        }
    }

    public void setMetadata(@Nullable MediaMetadata mediaMetadata) {
        ArrayList<Pair> arrayList = new ArrayList();
        synchronized (this.mLock) {
            if (this.mMetadata == null || mediaMetadata == null || TextUtils.equals(getMediaId(), mediaMetadata.getMediaId())) {
                this.mMetadata = mediaMetadata;
                arrayList.addAll(this.mListeners);
                for (Pair pair : arrayList) {
                    final OnMetadataChangedListener onMetadataChangedListener = (OnMetadataChangedListener) pair.first;
                    ((Executor) pair.second).execute(new Runnable() { // from class: androidx.media2.common.MediaItem.1
                        @Override // java.lang.Runnable
                        public void run() {
                            onMetadataChangedListener.onMetadataChanged(MediaItem.this);
                        }
                    });
                }
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(getClass().getSimpleName());
        synchronized (this.mLock) {
            sb.append("{mMetadata=");
            sb.append(this.mMetadata);
            sb.append(", mStartPositionMs=");
            sb.append(this.mStartPositionMs);
            sb.append(", mEndPositionMs=");
            sb.append(this.mEndPositionMs);
            sb.append('}');
        }
        return sb.toString();
    }
}
