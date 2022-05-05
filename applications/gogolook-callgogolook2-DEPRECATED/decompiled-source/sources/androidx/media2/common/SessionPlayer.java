package androidx.media2.common;

import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.futures.ResolvableFuture;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParser;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executor;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer.class */
public abstract class SessionPlayer implements AutoCloseable {
    public static final int BUFFERING_STATE_BUFFERING_AND_PLAYABLE = 1;
    public static final int BUFFERING_STATE_BUFFERING_AND_STARVED = 2;
    public static final int BUFFERING_STATE_COMPLETE = 3;
    public static final int BUFFERING_STATE_UNKNOWN = 0;
    public static final int INVALID_ITEM_INDEX = -1;
    public static final int PLAYER_STATE_ERROR = 3;
    public static final int PLAYER_STATE_IDLE = 0;
    public static final int PLAYER_STATE_PAUSED = 1;
    public static final int PLAYER_STATE_PLAYING = 2;
    public static final int REPEAT_MODE_ALL = 2;
    public static final int REPEAT_MODE_GROUP = 3;
    public static final int REPEAT_MODE_NONE = 0;
    public static final int REPEAT_MODE_ONE = 1;
    public static final int SHUFFLE_MODE_ALL = 1;
    public static final int SHUFFLE_MODE_GROUP = 2;
    public static final int SHUFFLE_MODE_NONE = 0;
    public static final String TAG = "SessionPlayer";
    public static final long UNKNOWN_TIME = Long.MIN_VALUE;
    public final Object mLock = new Object();
    @GuardedBy("mLock")
    public final List<Pair<PlayerCallback, Executor>> mCallbacks = new ArrayList();

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$BuffState.class */
    public @interface BuffState {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$PlayerCallback.class */
    public static abstract class PlayerCallback {
        public void onAudioAttributesChanged(@NonNull SessionPlayer sessionPlayer, @Nullable AudioAttributesCompat audioAttributesCompat) {
        }

        public void onBufferingStateChanged(@NonNull SessionPlayer sessionPlayer, @Nullable MediaItem mediaItem, int i) {
        }

        public void onCurrentMediaItemChanged(@NonNull SessionPlayer sessionPlayer, @NonNull MediaItem mediaItem) {
        }

        public void onPlaybackCompleted(@NonNull SessionPlayer sessionPlayer) {
        }

        public void onPlaybackSpeedChanged(@NonNull SessionPlayer sessionPlayer, float f) {
        }

        public void onPlayerStateChanged(@NonNull SessionPlayer sessionPlayer, int i) {
        }

        public void onPlaylistChanged(@NonNull SessionPlayer sessionPlayer, @Nullable List<MediaItem> list, @Nullable MediaMetadata mediaMetadata) {
        }

        public void onPlaylistMetadataChanged(@NonNull SessionPlayer sessionPlayer, @Nullable MediaMetadata mediaMetadata) {
        }

        public void onRepeatModeChanged(@NonNull SessionPlayer sessionPlayer, int i) {
        }

        public void onSeekCompleted(@NonNull SessionPlayer sessionPlayer, long j) {
        }

        public void onShuffleModeChanged(@NonNull SessionPlayer sessionPlayer, int i) {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public void onSubtitleData(@NonNull SessionPlayer sessionPlayer, @NonNull MediaItem mediaItem, @NonNull TrackInfo trackInfo, @NonNull SubtitleData subtitleData) {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public void onTrackDeselected(@NonNull SessionPlayer sessionPlayer, @NonNull TrackInfo trackInfo) {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public void onTrackInfoChanged(@NonNull SessionPlayer sessionPlayer, @NonNull List<TrackInfo> list) {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public void onTrackSelected(@NonNull SessionPlayer sessionPlayer, @NonNull TrackInfo trackInfo) {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public void onVideoSizeChangedInternal(@NonNull SessionPlayer sessionPlayer, @NonNull MediaItem mediaItem, @NonNull VideoSize videoSize) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$PlayerResult.class */
    public static class PlayerResult implements BaseResult {
        public final long mCompletionTime;
        public final MediaItem mItem;
        public final int mResultCode;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$PlayerResult$ResultCode.class */
        public @interface ResultCode {
        }

        public PlayerResult(int i, @Nullable MediaItem mediaItem) {
            this(i, mediaItem, SystemClock.elapsedRealtime());
        }

        public PlayerResult(int i, @Nullable MediaItem mediaItem, long j) {
            this.mResultCode = i;
            this.mItem = mediaItem;
            this.mCompletionTime = j;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static AbstractFutureC9382a<PlayerResult> createFuture(int i) {
            ResolvableFuture create = ResolvableFuture.create();
            create.set(new PlayerResult(i, null));
            return create;
        }

        @Override // androidx.media2.common.BaseResult
        public long getCompletionTime() {
            return this.mCompletionTime;
        }

        @Override // androidx.media2.common.BaseResult
        @Nullable
        public MediaItem getMediaItem() {
            return this.mItem;
        }

        @Override // androidx.media2.common.BaseResult
        public int getResultCode() {
            return this.mResultCode;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$PlayerState.class */
    public @interface PlayerState {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$RepeatMode.class */
    public @interface RepeatMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$ShuffleMode.class */
    public @interface ShuffleMode {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$TrackInfo.class */
    public static final class TrackInfo extends CustomVersionedParcelable {
        public static final int MEDIA_TRACK_TYPE_AUDIO = 2;
        public static final int MEDIA_TRACK_TYPE_METADATA = 5;
        public static final int MEDIA_TRACK_TYPE_SUBTITLE = 4;
        public static final int MEDIA_TRACK_TYPE_UNKNOWN = 0;
        public static final int MEDIA_TRACK_TYPE_VIDEO = 1;
        public MediaFormat mFormat;
        public int mId;
        public MediaItem mMediaItem;
        public Bundle mParcelledFormat;
        public int mTrackType;
        public MediaItem mUpCastMediaItem;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes-dex2jar.jar:androidx/media2/common/SessionPlayer$TrackInfo$MediaTrackType.class */
        public @interface MediaTrackType {
        }

        public TrackInfo() {
        }

        public TrackInfo(int i, MediaItem mediaItem, int i2, MediaFormat mediaFormat) {
            this.mId = i;
            this.mMediaItem = mediaItem;
            this.mTrackType = i2;
            this.mFormat = mediaFormat;
        }

        private boolean intEquals(String str, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
            boolean containsKey = mediaFormat.containsKey(str);
            boolean containsKey2 = mediaFormat2.containsKey(str);
            boolean z = true;
            boolean z2 = true;
            if (!containsKey || !containsKey2) {
                if (containsKey || containsKey2) {
                    z = false;
                }
                return z;
            }
            if (mediaFormat.getInteger(str) != mediaFormat2.getInteger(str)) {
                z2 = false;
            }
            return z2;
        }

        private void parcelIntValue(String str) {
            if (this.mFormat.containsKey(str)) {
                this.mParcelledFormat.putInt(str, this.mFormat.getInteger(str));
            }
        }

        private void parcelStringValue(String str) {
            if (this.mFormat.containsKey(str)) {
                this.mParcelledFormat.putString(str, this.mFormat.getString(str));
            }
        }

        private boolean stringEquals(String str, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
            return TextUtils.equals(mediaFormat.getString(str), mediaFormat2.getString(str));
        }

        private void unparcelIntValue(String str) {
            if (this.mParcelledFormat.containsKey(str)) {
                this.mFormat.setInteger(str, this.mParcelledFormat.getInt(str));
            }
        }

        private void unparcelStringValue(String str) {
            if (this.mParcelledFormat.containsKey(str)) {
                this.mFormat.setString(str, this.mParcelledFormat.getString(str));
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || TrackInfo.class != obj.getClass()) {
                return false;
            }
            TrackInfo trackInfo = (TrackInfo) obj;
            if (this.mId != trackInfo.mId || this.mTrackType != trackInfo.mTrackType) {
                return false;
            }
            if (!(this.mFormat == null && trackInfo.mFormat == null)) {
                if (this.mFormat == null && trackInfo.mFormat != null) {
                    return false;
                }
                if ((this.mFormat != null && trackInfo.mFormat == null) || !stringEquals("language", this.mFormat, trackInfo.mFormat) || !stringEquals("mime", this.mFormat, trackInfo.mFormat) || !intEquals("is-forced-subtitle", this.mFormat, trackInfo.mFormat) || !intEquals("is-autoselect", this.mFormat, trackInfo.mFormat) || !intEquals("is-default", this.mFormat, trackInfo.mFormat)) {
                    return false;
                }
            }
            if (this.mMediaItem == null && trackInfo.mMediaItem == null) {
                return true;
            }
            MediaItem mediaItem = this.mMediaItem;
            if (mediaItem == null || trackInfo.mMediaItem == null) {
                return false;
            }
            String mediaId = mediaItem.getMediaId();
            return mediaId != null ? mediaId.equals(trackInfo.mMediaItem.getMediaId()) : this.mMediaItem.equals(trackInfo.mMediaItem);
        }

        @Nullable
        public MediaFormat getFormat() {
            if (this.mTrackType == 4) {
                return this.mFormat;
            }
            return null;
        }

        public int getId() {
            return this.mId;
        }

        @NonNull
        public Locale getLanguage() {
            MediaFormat mediaFormat = this.mFormat;
            String string = mediaFormat != null ? mediaFormat.getString("language") : null;
            String str = string;
            if (string == null) {
                str = "und";
            }
            return new Locale(str);
        }

        @Nullable
        public MediaItem getMediaItem() {
            return this.mMediaItem;
        }

        public int getTrackType() {
            return this.mTrackType;
        }

        public int hashCode() {
            int i = this.mId;
            MediaItem mediaItem = this.mMediaItem;
            return ((i + 31) * 31) + (mediaItem != null ? mediaItem.getMediaId() != null ? this.mMediaItem.getMediaId().hashCode() : this.mMediaItem.hashCode() : 0);
        }

        @Override // androidx.versionedparcelable.CustomVersionedParcelable
        public void onPostParceling() {
            if (this.mParcelledFormat != null) {
                this.mFormat = new MediaFormat();
                unparcelStringValue("language");
                unparcelStringValue("mime");
                unparcelIntValue("is-forced-subtitle");
                unparcelIntValue("is-autoselect");
                unparcelIntValue("is-default");
            }
            if (this.mMediaItem == null) {
                this.mMediaItem = this.mUpCastMediaItem;
            }
        }

        @Override // androidx.versionedparcelable.CustomVersionedParcelable
        public void onPreParceling(boolean z) {
            if (this.mFormat != null) {
                this.mParcelledFormat = new Bundle();
                parcelStringValue("language");
                parcelStringValue("mime");
                parcelIntValue("is-forced-subtitle");
                parcelIntValue("is-autoselect");
                parcelIntValue("is-default");
            }
            MediaItem mediaItem = this.mMediaItem;
            if (mediaItem != null && this.mUpCastMediaItem == null) {
                this.mUpCastMediaItem = new MediaItem(mediaItem);
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append(TrackInfo.class.getName());
            sb.append(", id: ");
            sb.append(this.mId);
            sb.append(", MediaItem: " + this.mMediaItem);
            sb.append(", TrackType: ");
            int i = this.mTrackType;
            if (i == 1) {
                sb.append("VIDEO");
            } else if (i == 2) {
                sb.append(HlsPlaylistParser.TYPE_AUDIO);
            } else if (i != 4) {
                sb.append("UNKNOWN");
            } else {
                sb.append("SUBTITLE");
            }
            sb.append(", Format: " + this.mFormat);
            return sb.toString();
        }
    }

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> addPlaylistItem(int i, @NonNull MediaItem mediaItem);

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public AbstractFutureC9382a<PlayerResult> deselectTrackInternal(@NonNull TrackInfo trackInfo) {
        throw new UnsupportedOperationException("deselectTrackInternal is for internal use only");
    }

    @Nullable
    public abstract AudioAttributesCompat getAudioAttributes();

    public abstract long getBufferedPosition();

    public abstract int getBufferingState();

    @NonNull
    public final List<Pair<PlayerCallback, Executor>> getCallbacks() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mLock) {
            arrayList.addAll(this.mCallbacks);
        }
        return arrayList;
    }

    @Nullable
    public abstract MediaItem getCurrentMediaItem();

    @IntRange(from = -1)
    public abstract int getCurrentMediaItemIndex();

    public abstract long getCurrentPosition();

    public abstract long getDuration();

    @IntRange(from = -1)
    public abstract int getNextMediaItemIndex();

    public abstract float getPlaybackSpeed();

    public abstract int getPlayerState();

    @Nullable
    public abstract List<MediaItem> getPlaylist();

    @Nullable
    public abstract MediaMetadata getPlaylistMetadata();

    @IntRange(from = -1)
    public abstract int getPreviousMediaItemIndex();

    public abstract int getRepeatMode();

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public TrackInfo getSelectedTrackInternal(int i) {
        throw new UnsupportedOperationException("getSelectedTrackInternal is for internal use only.");
    }

    public abstract int getShuffleMode();

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public List<TrackInfo> getTrackInfoInternal() {
        throw new UnsupportedOperationException("getTrackInfoInternal is for internal use only");
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public VideoSize getVideoSizeInternal() {
        throw new UnsupportedOperationException("getVideoSizeInternal is internal use only");
    }

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> pause();

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> play();

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> prepare();

    public final void registerPlayerCallback(@NonNull Executor executor, @NonNull PlayerCallback playerCallback) {
        if (executor == null) {
            throw new NullPointerException("executor shouldn't be null");
        } else if (playerCallback != null) {
            synchronized (this.mLock) {
                for (Pair<PlayerCallback, Executor> pair : this.mCallbacks) {
                    if (pair.first == playerCallback && pair.second != null) {
                        return;
                    }
                }
                this.mCallbacks.add(new Pair<>(playerCallback, executor));
            }
        } else {
            throw new NullPointerException("callback shouldn't be null");
        }
    }

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> removePlaylistItem(@IntRange(from = 0) int i);

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> replacePlaylistItem(int i, @NonNull MediaItem mediaItem);

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> seekTo(long j);

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public AbstractFutureC9382a<PlayerResult> selectTrackInternal(@NonNull TrackInfo trackInfo) {
        throw new UnsupportedOperationException("selectTrackInternal is for internal use only");
    }

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> setAudioAttributes(@NonNull AudioAttributesCompat audioAttributesCompat);

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> setMediaItem(@NonNull MediaItem mediaItem);

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> setPlaybackSpeed(float f);

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> setPlaylist(@NonNull List<MediaItem> list, @Nullable MediaMetadata mediaMetadata);

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> setRepeatMode(int i);

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> setShuffleMode(int i);

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public AbstractFutureC9382a<PlayerResult> setSurfaceInternal(@Nullable Surface surface) {
        return PlayerResult.createFuture(-6);
    }

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> skipToNextPlaylistItem();

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> skipToPlaylistItem(@IntRange(from = 0) int i);

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> skipToPreviousPlaylistItem();

    public final void unregisterPlayerCallback(@NonNull PlayerCallback playerCallback) {
        if (playerCallback != null) {
            synchronized (this.mLock) {
                for (int size = this.mCallbacks.size() - 1; size >= 0; size--) {
                    if (this.mCallbacks.get(size).first == playerCallback) {
                        this.mCallbacks.remove(size);
                    }
                }
            }
            return;
        }
        throw new NullPointerException("callback shouldn't be null");
    }

    @NonNull
    public abstract AbstractFutureC9382a<PlayerResult> updatePlaylistMetadata(@Nullable MediaMetadata mediaMetadata);
}
