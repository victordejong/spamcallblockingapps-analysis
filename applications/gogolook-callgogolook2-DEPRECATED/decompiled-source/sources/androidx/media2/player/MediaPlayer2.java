package androidx.media2.player;

import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmException;
import android.media.MediaFormat;
import android.os.PersistableBundle;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SubtitleData;
import androidx.media2.player.exoplayer.ExoPlayerMediaPlayer2Impl;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executor;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2.class */
public abstract class MediaPlayer2 {
    public static final int CALL_COMPLETED_ATTACH_AUX_EFFECT = 1;
    public static final int CALL_COMPLETED_DESELECT_TRACK = 2;
    public static final int CALL_COMPLETED_LOOP_CURRENT = 3;
    public static final int CALL_COMPLETED_NOTIFY_WHEN_COMMAND_LABEL_REACHED = 1000;
    public static final int CALL_COMPLETED_PAUSE = 4;
    public static final int CALL_COMPLETED_PLAY = 5;
    public static final int CALL_COMPLETED_PREPARE = 6;
    public static final int CALL_COMPLETED_PREPARE_DRM = 1001;
    public static final int CALL_COMPLETED_SEEK_TO = 14;
    public static final int CALL_COMPLETED_SELECT_TRACK = 15;
    public static final int CALL_COMPLETED_SET_AUDIO_ATTRIBUTES = 16;
    public static final int CALL_COMPLETED_SET_AUDIO_SESSION_ID = 17;
    public static final int CALL_COMPLETED_SET_AUX_EFFECT_SEND_LEVEL = 18;
    public static final int CALL_COMPLETED_SET_DATA_SOURCE = 19;
    public static final int CALL_COMPLETED_SET_NEXT_DATA_SOURCE = 22;
    public static final int CALL_COMPLETED_SET_NEXT_DATA_SOURCES = 23;
    public static final int CALL_COMPLETED_SET_PLAYBACK_PARAMS = 24;
    public static final int CALL_COMPLETED_SET_PLAYER_VOLUME = 26;
    public static final int CALL_COMPLETED_SET_SURFACE = 27;
    public static final int CALL_COMPLETED_SKIP_TO_NEXT = 29;
    public static final int CALL_STATUS_BAD_VALUE = 2;
    public static final int CALL_STATUS_ERROR_IO = 4;
    public static final int CALL_STATUS_ERROR_UNKNOWN = Integer.MIN_VALUE;
    public static final int CALL_STATUS_INVALID_OPERATION = 1;
    public static final int CALL_STATUS_NO_ERROR = 0;
    public static final int CALL_STATUS_PERMISSION_DENIED = 3;
    public static final int CALL_STATUS_SKIPPED = 5;
    public static final int MEDIA_ERROR_IO = -1004;
    public static final int MEDIA_ERROR_MALFORMED = -1007;
    public static final int MEDIA_ERROR_SYSTEM = Integer.MIN_VALUE;
    public static final int MEDIA_ERROR_TIMED_OUT = -110;
    public static final int MEDIA_ERROR_UNKNOWN = 1;
    public static final int MEDIA_ERROR_UNSUPPORTED = -1010;
    public static final int MEDIA_INFO_AUDIO_NOT_PLAYING = 804;
    public static final int MEDIA_INFO_AUDIO_RENDERING_START = 4;
    public static final int MEDIA_INFO_BAD_INTERLEAVING = 800;
    public static final int MEDIA_INFO_BUFFERING_END = 702;
    public static final int MEDIA_INFO_BUFFERING_START = 701;
    public static final int MEDIA_INFO_BUFFERING_UPDATE = 704;
    public static final int MEDIA_INFO_DATA_SOURCE_END = 5;
    public static final int MEDIA_INFO_DATA_SOURCE_LIST_END = 6;
    public static final int MEDIA_INFO_DATA_SOURCE_REPEAT = 7;
    public static final int MEDIA_INFO_DATA_SOURCE_START = 2;
    public static final int MEDIA_INFO_EXTERNAL_METADATA_UPDATE = 803;
    public static final int MEDIA_INFO_METADATA_UPDATE = 802;
    public static final int MEDIA_INFO_NETWORK_BANDWIDTH = 703;
    public static final int MEDIA_INFO_NOT_SEEKABLE = 801;
    public static final int MEDIA_INFO_PREPARED = 100;
    public static final int MEDIA_INFO_SUBTITLE_TIMED_OUT = 902;
    public static final int MEDIA_INFO_UNKNOWN = 1;
    public static final int MEDIA_INFO_UNSUPPORTED_SUBTITLE = 901;
    public static final int MEDIA_INFO_VIDEO_NOT_PLAYING = 805;
    public static final int MEDIA_INFO_VIDEO_RENDERING_START = 3;
    public static final int MEDIA_INFO_VIDEO_TRACK_LAGGING = 700;
    public static final int PLAYER_STATE_ERROR = 1005;
    public static final int PLAYER_STATE_IDLE = 1001;
    public static final int PLAYER_STATE_PAUSED = 1003;
    public static final int PLAYER_STATE_PLAYING = 1004;
    public static final int PLAYER_STATE_PREPARED = 1002;
    public static final int PREPARE_DRM_STATUS_PREPARATION_ERROR = 3;
    public static final int PREPARE_DRM_STATUS_PROVISIONING_NETWORK_ERROR = 1;
    public static final int PREPARE_DRM_STATUS_PROVISIONING_SERVER_ERROR = 2;
    public static final int PREPARE_DRM_STATUS_RESOURCE_BUSY = 5;
    public static final int PREPARE_DRM_STATUS_SUCCESS = 0;
    public static final int PREPARE_DRM_STATUS_UNSUPPORTED_SCHEME = 4;
    public static final int SEEK_CLOSEST = 3;
    public static final int SEEK_CLOSEST_SYNC = 2;
    public static final int SEEK_NEXT_SYNC = 1;
    public static final int SEEK_PREVIOUS_SYNC = 0;
    public static final int SEPARATE_CALL_COMPLETE_CALLBACK_START = 1000;
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT = 1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$CallCompleted.class */
    public @interface CallCompleted {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$CallStatus.class */
    public @interface CallStatus {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$DrmEventCallback.class */
    public static abstract class DrmEventCallback {
        public void onDrmInfo(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, DrmInfo drmInfo) {
        }

        public void onDrmPrepared(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$DrmInfo.class */
    public static abstract class DrmInfo {
        public abstract Map<UUID, byte[]> getPssh();

        public abstract List<UUID> getSupportedSchemes();
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$EventCallback.class */
    public static abstract class EventCallback {
        public void onCallCompleted(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, int i2) {
        }

        public void onCommandLabelReached(MediaPlayer2 mediaPlayer2, @NonNull Object obj) {
        }

        public void onError(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, int i2) {
        }

        public void onInfo(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, int i2) {
        }

        public void onMediaTimeDiscontinuity(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, MediaTimestamp mediaTimestamp) {
        }

        public void onSubtitleData(@NonNull MediaPlayer2 mediaPlayer2, @NonNull MediaItem mediaItem, int i, @NonNull SubtitleData subtitleData) {
        }

        public void onTimedMetaDataAvailable(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, TimedMetaData timedMetaData) {
        }

        public void onVideoSizeChanged(MediaPlayer2 mediaPlayer2, MediaItem mediaItem, int i, int i2) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$MediaError.class */
    public @interface MediaError {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$MediaInfo.class */
    public @interface MediaInfo {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$MediaPlayer2State.class */
    public @interface MediaPlayer2State {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$MetricsConstants.class */
    public static final class MetricsConstants {
        public static final String CODEC_AUDIO = "android.media.mediaplayer.audio.codec";
        public static final String CODEC_VIDEO = "android.media.mediaplayer.video.codec";
        public static final String DURATION = "android.media.mediaplayer.durationMs";
        public static final String ERRORS = "android.media.mediaplayer.err";
        public static final String ERROR_CODE = "android.media.mediaplayer.errcode";
        public static final String FRAMES = "android.media.mediaplayer.frames";
        public static final String FRAMES_DROPPED = "android.media.mediaplayer.dropped";
        public static final String HEIGHT = "android.media.mediaplayer.height";
        public static final String MIME_TYPE_AUDIO = "android.media.mediaplayer.audio.mime";
        public static final String MIME_TYPE_VIDEO = "android.media.mediaplayer.video.mime";
        public static final String PLAYING = "android.media.mediaplayer.playingMs";
        public static final String WIDTH = "android.media.mediaplayer.width";
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$NoDrmSchemeException.class */
    public static class NoDrmSchemeException extends MediaDrmException {
        public NoDrmSchemeException(String str) {
            super(str);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$OnDrmConfigHelper.class */
    public interface OnDrmConfigHelper {
        void onDrmConfig(MediaPlayer2 mediaPlayer2, MediaItem mediaItem);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$PrepareDrmStatusCode.class */
    public @interface PrepareDrmStatusCode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$SeekMode.class */
    public @interface SeekMode {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/player/MediaPlayer2$TrackInfo.class */
    public static abstract class TrackInfo {
        public static final int MEDIA_TRACK_TYPE_AUDIO = 2;
        public static final int MEDIA_TRACK_TYPE_METADATA = 5;
        public static final int MEDIA_TRACK_TYPE_SUBTITLE = 4;
        public static final int MEDIA_TRACK_TYPE_UNKNOWN = 0;
        public static final int MEDIA_TRACK_TYPE_VIDEO = 1;

        public abstract MediaFormat getFormat();

        public abstract String getLanguage();

        public abstract int getTrackType();

        public abstract String toString();
    }

    @NonNull
    public static MediaPlayer2 create(@NonNull Context context) {
        return new ExoPlayerMediaPlayer2Impl(context);
    }

    public abstract Object attachAuxEffect(int i);

    public abstract boolean cancel(Object obj);

    public abstract void clearDrmEventCallback();

    public abstract void clearEventCallback();

    public abstract void clearPendingCommands();

    public abstract void close();

    public abstract Object deselectTrack(int i);

    @Nullable
    public abstract AudioAttributesCompat getAudioAttributes();

    public abstract int getAudioSessionId();

    public abstract long getBufferedPosition();

    @Nullable
    public abstract MediaItem getCurrentMediaItem();

    public abstract long getCurrentPosition();

    public abstract DrmInfo getDrmInfo();

    @NonNull
    public abstract MediaDrm.KeyRequest getDrmKeyRequest(@Nullable byte[] bArr, @Nullable byte[] bArr2, @Nullable String str, int i, @Nullable Map<String, String> map) throws NoDrmSchemeException;

    @NonNull
    public abstract String getDrmPropertyString(@NonNull String str) throws NoDrmSchemeException;

    public abstract long getDuration();

    public float getMaxPlayerVolume() {
        return 1.0f;
    }

    @RequiresApi(21)
    public abstract PersistableBundle getMetrics();

    @NonNull
    public abstract PlaybackParams getPlaybackParams();

    public abstract float getPlayerVolume();

    public abstract int getSelectedTrack(int i);

    public abstract int getState();

    @Nullable
    public abstract MediaTimestamp getTimestamp();

    public abstract List<TrackInfo> getTrackInfo();

    public abstract int getVideoHeight();

    public abstract int getVideoWidth();

    public abstract Object loopCurrent(boolean z);

    public abstract Object notifyWhenCommandLabelReached(@NonNull Object obj);

    public abstract Object pause();

    public abstract Object play();

    public abstract Object prepare();

    public abstract Object prepareDrm(@NonNull UUID uuid);

    public abstract byte[] provideDrmKeyResponse(@Nullable byte[] bArr, @NonNull byte[] bArr2) throws NoDrmSchemeException, DeniedByServerException;

    public abstract void releaseDrm() throws NoDrmSchemeException;

    public abstract void reset();

    public abstract void restoreDrmKeys(@NonNull byte[] bArr) throws NoDrmSchemeException;

    public Object seekTo(long j) {
        return seekTo(j, 0);
    }

    public abstract Object seekTo(long j, int i);

    public abstract Object selectTrack(int i);

    public abstract Object setAudioAttributes(@NonNull AudioAttributesCompat audioAttributesCompat);

    public abstract Object setAudioSessionId(int i);

    public abstract Object setAuxEffectSendLevel(float f);

    public abstract void setDrmEventCallback(@NonNull Executor executor, @NonNull DrmEventCallback drmEventCallback);

    public abstract void setDrmPropertyString(@NonNull String str, @NonNull String str2) throws NoDrmSchemeException;

    public abstract void setEventCallback(@NonNull Executor executor, @NonNull EventCallback eventCallback);

    public abstract Object setMediaItem(@NonNull MediaItem mediaItem);

    public abstract Object setNextMediaItem(@NonNull MediaItem mediaItem);

    public abstract Object setNextMediaItems(@NonNull List<MediaItem> list);

    public abstract void setOnDrmConfigHelper(OnDrmConfigHelper onDrmConfigHelper);

    public abstract Object setPlaybackParams(@NonNull PlaybackParams playbackParams);

    public abstract Object setPlayerVolume(float f);

    public abstract Object setSurface(@Nullable Surface surface);

    public abstract Object skipToNext();
}
