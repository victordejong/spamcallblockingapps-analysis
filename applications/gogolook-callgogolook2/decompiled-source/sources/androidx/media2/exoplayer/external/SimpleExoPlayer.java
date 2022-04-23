package androidx.media2.exoplayer.external;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.media.PlaybackParams;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ExoPlayer;
import androidx.media2.exoplayer.external.Player;
import androidx.media2.exoplayer.external.PlayerMessage;
import androidx.media2.exoplayer.external.analytics.AnalyticsCollector;
import androidx.media2.exoplayer.external.analytics.AnalyticsListener;
import androidx.media2.exoplayer.external.audio.AudioAttributes;
import androidx.media2.exoplayer.external.audio.AudioFocusManager;
import androidx.media2.exoplayer.external.audio.AudioListener;
import androidx.media2.exoplayer.external.audio.AudioRendererEventListener;
import androidx.media2.exoplayer.external.audio.AuxEffectInfo;
import androidx.media2.exoplayer.external.decoder.DecoderCounters;
import androidx.media2.exoplayer.external.drm.DefaultDrmSessionManager;
import androidx.media2.exoplayer.external.drm.DrmSessionManager;
import androidx.media2.exoplayer.external.drm.FrameworkMediaCrypto;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.MetadataOutput;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.text.Cue;
import androidx.media2.exoplayer.external.text.TextOutput;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionArray;
import androidx.media2.exoplayer.external.trackselection.TrackSelector;
import androidx.media2.exoplayer.external.upstream.BandwidthMeter;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Clock;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.PriorityTaskManager;
import androidx.media2.exoplayer.external.util.Util;
import androidx.media2.exoplayer.external.video.VideoFrameMetadataListener;
import androidx.media2.exoplayer.external.video.VideoRendererEventListener;
import androidx.media2.exoplayer.external.video.spherical.CameraMotionListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/SimpleExoPlayer.class */
public class SimpleExoPlayer extends BasePlayer implements ExoPlayer, Player.AudioComponent, Player.VideoComponent, Player.TextComponent, Player.MetadataComponent {
    public static final String TAG = "SimpleExoPlayer";
    public final AnalyticsCollector analyticsCollector;
    public AudioAttributes audioAttributes;
    public final CopyOnWriteArraySet<AudioRendererEventListener> audioDebugListeners;
    @Nullable
    public DecoderCounters audioDecoderCounters;
    public final AudioFocusManager audioFocusManager;
    @Nullable
    public Format audioFormat;
    public final CopyOnWriteArraySet<AudioListener> audioListeners;
    public int audioSessionId;
    public float audioVolume;
    public final BandwidthMeter bandwidthMeter;
    @Nullable
    public CameraMotionListener cameraMotionListener;
    public final ComponentListener componentListener;
    public List<Cue> currentCues;
    public final Handler eventHandler;
    public boolean hasNotifiedFullWrongThreadWarning;
    public boolean isPriorityTaskManagerRegistered;
    @Nullable
    public MediaSource mediaSource;
    public final CopyOnWriteArraySet<MetadataOutput> metadataOutputs;
    public boolean ownsSurface;
    public final ExoPlayerImpl player;
    @Nullable
    public PriorityTaskManager priorityTaskManager;
    public final Renderer[] renderers;
    @Nullable
    public Surface surface;
    public int surfaceHeight;
    @Nullable
    public SurfaceHolder surfaceHolder;
    public int surfaceWidth;
    public final CopyOnWriteArraySet<TextOutput> textOutputs;
    @Nullable
    public TextureView textureView;
    public final CopyOnWriteArraySet<VideoRendererEventListener> videoDebugListeners;
    @Nullable
    public DecoderCounters videoDecoderCounters;
    @Nullable
    public Format videoFormat;
    @Nullable
    public VideoFrameMetadataListener videoFrameMetadataListener;
    public final CopyOnWriteArraySet<androidx.media2.exoplayer.external.video.VideoListener> videoListeners;
    public int videoScalingMode;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/SimpleExoPlayer$ComponentListener.class */
    public final class ComponentListener implements VideoRendererEventListener, AudioRendererEventListener, TextOutput, MetadataOutput, SurfaceHolder.Callback, TextureView.SurfaceTextureListener, AudioFocusManager.PlayerControl, Player.EventListener {
        public ComponentListener() {
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioFocusManager.PlayerControl
        public void executePlayerCommand(int i) {
            SimpleExoPlayer simpleExoPlayer = SimpleExoPlayer.this;
            simpleExoPlayer.updatePlayWhenReady(simpleExoPlayer.getPlayWhenReady(), i);
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
        public void onAudioDecoderInitialized(String str, long j, long j2) {
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AudioRendererEventListener) it.next()).onAudioDecoderInitialized(str, j, j2);
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
        public void onAudioDisabled(DecoderCounters decoderCounters) {
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AudioRendererEventListener) it.next()).onAudioDisabled(decoderCounters);
            }
            SimpleExoPlayer.this.audioFormat = null;
            SimpleExoPlayer.this.audioDecoderCounters = null;
            SimpleExoPlayer.this.audioSessionId = 0;
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
        public void onAudioEnabled(DecoderCounters decoderCounters) {
            SimpleExoPlayer.this.audioDecoderCounters = decoderCounters;
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AudioRendererEventListener) it.next()).onAudioEnabled(decoderCounters);
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
        public void onAudioInputFormatChanged(Format format) {
            SimpleExoPlayer.this.audioFormat = format;
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AudioRendererEventListener) it.next()).onAudioInputFormatChanged(format);
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
        public void onAudioSessionId(int i) {
            if (SimpleExoPlayer.this.audioSessionId != i) {
                SimpleExoPlayer.this.audioSessionId = i;
                Iterator it = SimpleExoPlayer.this.audioListeners.iterator();
                while (it.hasNext()) {
                    AudioListener audioListener = (AudioListener) it.next();
                    if (!SimpleExoPlayer.this.audioDebugListeners.contains(audioListener)) {
                        audioListener.onAudioSessionId(i);
                    }
                }
                Iterator it2 = SimpleExoPlayer.this.audioDebugListeners.iterator();
                while (it2.hasNext()) {
                    ((AudioRendererEventListener) it2.next()).onAudioSessionId(i);
                }
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioRendererEventListener
        public void onAudioSinkUnderrun(int i, long j, long j2) {
            Iterator it = SimpleExoPlayer.this.audioDebugListeners.iterator();
            while (it.hasNext()) {
                ((AudioRendererEventListener) it.next()).onAudioSinkUnderrun(i, j, j2);
            }
        }

        @Override // androidx.media2.exoplayer.external.text.TextOutput
        public void onCues(List<Cue> list) {
            SimpleExoPlayer.this.currentCues = list;
            Iterator it = SimpleExoPlayer.this.textOutputs.iterator();
            while (it.hasNext()) {
                ((TextOutput) it.next()).onCues(list);
            }
        }

        @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
        public void onDroppedFrames(int i, long j) {
            Iterator it = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it.hasNext()) {
                ((VideoRendererEventListener) it.next()).onDroppedFrames(i, j);
            }
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onLoadingChanged(boolean z) {
            if (SimpleExoPlayer.this.priorityTaskManager == null) {
                return;
            }
            if (z && !SimpleExoPlayer.this.isPriorityTaskManagerRegistered) {
                SimpleExoPlayer.this.priorityTaskManager.add(0);
                SimpleExoPlayer.this.isPriorityTaskManagerRegistered = true;
            } else if (!z && SimpleExoPlayer.this.isPriorityTaskManagerRegistered) {
                SimpleExoPlayer.this.priorityTaskManager.remove(0);
                SimpleExoPlayer.this.isPriorityTaskManagerRegistered = false;
            }
        }

        @Override // androidx.media2.exoplayer.external.metadata.MetadataOutput
        public void onMetadata(Metadata metadata) {
            Iterator it = SimpleExoPlayer.this.metadataOutputs.iterator();
            while (it.hasNext()) {
                ((MetadataOutput) it.next()).onMetadata(metadata);
            }
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
            Player$EventListener$$CC.onPlaybackParametersChanged$$dflt$$(this, playbackParameters);
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onPlayerError(ExoPlaybackException exoPlaybackException) {
            Player$EventListener$$CC.onPlayerError$$dflt$$(this, exoPlaybackException);
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onPlayerStateChanged(boolean z, int i) {
            Player$EventListener$$CC.onPlayerStateChanged$$dflt$$(this, z, i);
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onPositionDiscontinuity(int i) {
            Player$EventListener$$CC.onPositionDiscontinuity$$dflt$$(this, i);
        }

        @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
        public void onRenderedFirstFrame(Surface surface) {
            if (SimpleExoPlayer.this.surface == surface) {
                Iterator it = SimpleExoPlayer.this.videoListeners.iterator();
                while (it.hasNext()) {
                    ((androidx.media2.exoplayer.external.video.VideoListener) it.next()).onRenderedFirstFrame();
                }
            }
            Iterator it2 = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it2.hasNext()) {
                ((VideoRendererEventListener) it2.next()).onRenderedFirstFrame(surface);
            }
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onRepeatModeChanged(int i) {
            Player$EventListener$$CC.onRepeatModeChanged$$dflt$$(this, i);
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onSeekProcessed() {
            Player$EventListener$$CC.onSeekProcessed$$dflt$$(this);
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onShuffleModeEnabledChanged(boolean z) {
            Player$EventListener$$CC.onShuffleModeEnabledChanged$$dflt$$(this, z);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            SimpleExoPlayer.this.setVideoSurfaceInternal(new Surface(surfaceTexture), true);
            SimpleExoPlayer.this.maybeNotifySurfaceSizeChanged(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            SimpleExoPlayer.this.setVideoSurfaceInternal(null, true);
            SimpleExoPlayer.this.maybeNotifySurfaceSizeChanged(0, 0);
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            SimpleExoPlayer.this.maybeNotifySurfaceSizeChanged(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onTimelineChanged(Timeline timeline, Object obj, int i) {
            Player$EventListener$$CC.onTimelineChanged$$dflt$$(this, timeline, obj, i);
        }

        @Override // androidx.media2.exoplayer.external.Player.EventListener
        public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
            Player$EventListener$$CC.onTracksChanged$$dflt$$(this, trackGroupArray, trackSelectionArray);
        }

        @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
        public void onVideoDecoderInitialized(String str, long j, long j2) {
            Iterator it = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it.hasNext()) {
                ((VideoRendererEventListener) it.next()).onVideoDecoderInitialized(str, j, j2);
            }
        }

        @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
        public void onVideoDisabled(DecoderCounters decoderCounters) {
            Iterator it = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it.hasNext()) {
                ((VideoRendererEventListener) it.next()).onVideoDisabled(decoderCounters);
            }
            SimpleExoPlayer.this.videoFormat = null;
            SimpleExoPlayer.this.videoDecoderCounters = null;
        }

        @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
        public void onVideoEnabled(DecoderCounters decoderCounters) {
            SimpleExoPlayer.this.videoDecoderCounters = decoderCounters;
            Iterator it = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it.hasNext()) {
                ((VideoRendererEventListener) it.next()).onVideoEnabled(decoderCounters);
            }
        }

        @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
        public void onVideoInputFormatChanged(Format format) {
            SimpleExoPlayer.this.videoFormat = format;
            Iterator it = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it.hasNext()) {
                ((VideoRendererEventListener) it.next()).onVideoInputFormatChanged(format);
            }
        }

        @Override // androidx.media2.exoplayer.external.video.VideoRendererEventListener
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            Iterator it = SimpleExoPlayer.this.videoListeners.iterator();
            while (it.hasNext()) {
                androidx.media2.exoplayer.external.video.VideoListener videoListener = (androidx.media2.exoplayer.external.video.VideoListener) it.next();
                if (!SimpleExoPlayer.this.videoDebugListeners.contains(videoListener)) {
                    videoListener.onVideoSizeChanged(i, i2, i3, f);
                }
            }
            Iterator it2 = SimpleExoPlayer.this.videoDebugListeners.iterator();
            while (it2.hasNext()) {
                ((VideoRendererEventListener) it2.next()).onVideoSizeChanged(i, i2, i3, f);
            }
        }

        @Override // androidx.media2.exoplayer.external.audio.AudioFocusManager.PlayerControl
        public void setVolumeMultiplier(float f) {
            SimpleExoPlayer.this.sendVolumeToRenderers();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            SimpleExoPlayer.this.maybeNotifySurfaceSizeChanged(i2, i3);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            SimpleExoPlayer.this.setVideoSurfaceInternal(surfaceHolder.getSurface(), false);
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            SimpleExoPlayer.this.setVideoSurfaceInternal(null, false);
            SimpleExoPlayer.this.maybeNotifySurfaceSizeChanged(0, 0);
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/SimpleExoPlayer$VideoListener.class */
    public interface VideoListener extends androidx.media2.exoplayer.external.video.VideoListener {
    }

    public SimpleExoPlayer(Context context, RenderersFactory renderersFactory, TrackSelector trackSelector, LoadControl loadControl, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, BandwidthMeter bandwidthMeter, AnalyticsCollector.Factory factory, Looper looper) {
        this(context, renderersFactory, trackSelector, loadControl, drmSessionManager, bandwidthMeter, factory, Clock.DEFAULT, looper);
    }

    public SimpleExoPlayer(Context context, RenderersFactory renderersFactory, TrackSelector trackSelector, LoadControl loadControl, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, BandwidthMeter bandwidthMeter, AnalyticsCollector.Factory factory, Clock clock, Looper looper) {
        this.bandwidthMeter = bandwidthMeter;
        this.componentListener = new ComponentListener();
        this.videoListeners = new CopyOnWriteArraySet<>();
        this.audioListeners = new CopyOnWriteArraySet<>();
        this.textOutputs = new CopyOnWriteArraySet<>();
        this.metadataOutputs = new CopyOnWriteArraySet<>();
        this.videoDebugListeners = new CopyOnWriteArraySet<>();
        this.audioDebugListeners = new CopyOnWriteArraySet<>();
        this.eventHandler = new Handler(looper);
        Handler handler = this.eventHandler;
        ComponentListener componentListener = this.componentListener;
        this.renderers = renderersFactory.createRenderers(handler, componentListener, componentListener, componentListener, componentListener, drmSessionManager);
        this.audioVolume = 1.0f;
        this.audioSessionId = 0;
        this.audioAttributes = AudioAttributes.DEFAULT;
        this.videoScalingMode = 1;
        this.currentCues = Collections.emptyList();
        this.player = new ExoPlayerImpl(this.renderers, trackSelector, loadControl, bandwidthMeter, clock, looper);
        this.analyticsCollector = factory.createAnalyticsCollector(this.player, clock);
        addListener(this.analyticsCollector);
        addListener(this.componentListener);
        this.videoDebugListeners.add(this.analyticsCollector);
        this.videoListeners.add(this.analyticsCollector);
        this.audioDebugListeners.add(this.analyticsCollector);
        this.audioListeners.add(this.analyticsCollector);
        addMetadataOutput(this.analyticsCollector);
        bandwidthMeter.addEventListener(this.eventHandler, this.analyticsCollector);
        if (drmSessionManager instanceof DefaultDrmSessionManager) {
            ((DefaultDrmSessionManager) drmSessionManager).addListener(this.eventHandler, this.analyticsCollector);
        }
        this.audioFocusManager = new AudioFocusManager(context, this.componentListener);
    }

    public SimpleExoPlayer(Context context, RenderersFactory renderersFactory, TrackSelector trackSelector, LoadControl loadControl, BandwidthMeter bandwidthMeter, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager, Looper looper) {
        this(context, renderersFactory, trackSelector, loadControl, drmSessionManager, bandwidthMeter, new AnalyticsCollector.Factory(), looper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeNotifySurfaceSizeChanged(int i, int i2) {
        if (i != this.surfaceWidth || i2 != this.surfaceHeight) {
            this.surfaceWidth = i;
            this.surfaceHeight = i2;
            Iterator<androidx.media2.exoplayer.external.video.VideoListener> it = this.videoListeners.iterator();
            while (it.hasNext()) {
                it.next().onSurfaceSizeChanged(i, i2);
            }
        }
    }

    private void removeSurfaceCallbacks() {
        TextureView textureView = this.textureView;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != this.componentListener) {
                Log.m37483w(TAG, "SurfaceTextureListener already unset or replaced.");
            } else {
                this.textureView.setSurfaceTextureListener(null);
            }
            this.textureView = null;
        }
        SurfaceHolder surfaceHolder = this.surfaceHolder;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(this.componentListener);
            this.surfaceHolder = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendVolumeToRenderers() {
        Renderer[] rendererArr;
        float f = this.audioVolume;
        float volumeMultiplier = this.audioFocusManager.getVolumeMultiplier();
        for (Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == 1) {
                this.player.createMessage(renderer).setType(2).setPayload(Float.valueOf(f * volumeMultiplier)).send();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVideoSurfaceInternal(@Nullable Surface surface, boolean z) {
        Renderer[] rendererArr;
        ArrayList<PlayerMessage> arrayList = new ArrayList();
        for (Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == 2) {
                arrayList.add(this.player.createMessage(renderer).setType(1).setPayload(surface).send());
            }
        }
        Surface surface2 = this.surface;
        if (!(surface2 == null || surface2 == surface)) {
            try {
                for (PlayerMessage playerMessage : arrayList) {
                    playerMessage.blockUntilDelivered();
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
            if (this.ownsSurface) {
                this.surface.release();
            }
        }
        this.surface = surface;
        this.ownsSurface = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayWhenReady(boolean z, int i) {
        ExoPlayerImpl exoPlayerImpl = this.player;
        boolean z2 = false;
        boolean z3 = z && i != -1;
        if (i != 1) {
            z2 = true;
        }
        exoPlayerImpl.setPlayWhenReady(z3, z2);
    }

    private void verifyApplicationThread() {
        if (Looper.myLooper() != getApplicationLooper()) {
            Log.m37482w(TAG, "Player is accessed on the wrong thread. See https://exoplayer.dev/troubleshooting.html#what-do-player-is-accessed-on-the-wrong-thread-warnings-mean", this.hasNotifiedFullWrongThreadWarning ? null : new IllegalStateException());
            this.hasNotifiedFullWrongThreadWarning = true;
        }
    }

    public void addAnalyticsListener(AnalyticsListener analyticsListener) {
        verifyApplicationThread();
        this.analyticsCollector.addListener(analyticsListener);
    }

    @Deprecated
    public void addAudioDebugListener(AudioRendererEventListener audioRendererEventListener) {
        this.audioDebugListeners.add(audioRendererEventListener);
    }

    @Override // androidx.media2.exoplayer.external.Player.AudioComponent
    public void addAudioListener(AudioListener audioListener) {
        this.audioListeners.add(audioListener);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void addListener(Player.EventListener eventListener) {
        verifyApplicationThread();
        this.player.addListener(eventListener);
    }

    @Override // androidx.media2.exoplayer.external.Player.MetadataComponent
    public void addMetadataOutput(MetadataOutput metadataOutput) {
        this.metadataOutputs.add(metadataOutput);
    }

    @Override // androidx.media2.exoplayer.external.Player.TextComponent
    public void addTextOutput(TextOutput textOutput) {
        if (!this.currentCues.isEmpty()) {
            textOutput.onCues(this.currentCues);
        }
        this.textOutputs.add(textOutput);
    }

    @Deprecated
    public void addVideoDebugListener(VideoRendererEventListener videoRendererEventListener) {
        this.videoDebugListeners.add(videoRendererEventListener);
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void addVideoListener(androidx.media2.exoplayer.external.video.VideoListener videoListener) {
        this.videoListeners.add(videoListener);
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    @Deprecated
    public void blockingSendMessages(ExoPlayer.ExoPlayerMessage... exoPlayerMessageArr) {
        this.player.blockingSendMessages(exoPlayerMessageArr);
    }

    @Override // androidx.media2.exoplayer.external.Player.AudioComponent
    public void clearAuxEffectInfo() {
        setAuxEffectInfo(new AuxEffectInfo(0, 0.0f));
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void clearCameraMotionListener(CameraMotionListener cameraMotionListener) {
        Renderer[] rendererArr;
        verifyApplicationThread();
        if (this.cameraMotionListener == cameraMotionListener) {
            for (Renderer renderer : this.renderers) {
                if (renderer.getTrackType() == 5) {
                    this.player.createMessage(renderer).setType(7).setPayload(null).send();
                }
            }
        }
    }

    @Deprecated
    public void clearMetadataOutput(MetadataOutput metadataOutput) {
        removeMetadataOutput(metadataOutput);
    }

    @Deprecated
    public void clearTextOutput(TextOutput textOutput) {
        removeTextOutput(textOutput);
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void clearVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        Renderer[] rendererArr;
        verifyApplicationThread();
        if (this.videoFrameMetadataListener == videoFrameMetadataListener) {
            for (Renderer renderer : this.renderers) {
                if (renderer.getTrackType() == 2) {
                    this.player.createMessage(renderer).setType(6).setPayload(null).send();
                }
            }
        }
    }

    @Deprecated
    public void clearVideoListener(VideoListener videoListener) {
        removeVideoListener(videoListener);
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void clearVideoSurface() {
        verifyApplicationThread();
        setVideoSurface(null);
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void clearVideoSurface(Surface surface) {
        verifyApplicationThread();
        if (surface != null && surface == this.surface) {
            setVideoSurface(null);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void clearVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        verifyApplicationThread();
        if (surfaceHolder != null && surfaceHolder == this.surfaceHolder) {
            setVideoSurfaceHolder(null);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void clearVideoSurfaceView(SurfaceView surfaceView) {
        clearVideoSurfaceHolder(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void clearVideoTextureView(TextureView textureView) {
        verifyApplicationThread();
        if (textureView != null && textureView == this.textureView) {
            setVideoTextureView(null);
        }
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public PlayerMessage createMessage(PlayerMessage.Target target) {
        verifyApplicationThread();
        return this.player.createMessage(target);
    }

    public AnalyticsCollector getAnalyticsCollector() {
        return this.analyticsCollector;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public Looper getApplicationLooper() {
        return this.player.getApplicationLooper();
    }

    @Override // androidx.media2.exoplayer.external.Player.AudioComponent
    public AudioAttributes getAudioAttributes() {
        return this.audioAttributes;
    }

    @Override // androidx.media2.exoplayer.external.Player
    @Nullable
    public Player.AudioComponent getAudioComponent() {
        return this;
    }

    @Nullable
    public DecoderCounters getAudioDecoderCounters() {
        return this.audioDecoderCounters;
    }

    @Nullable
    public Format getAudioFormat() {
        return this.audioFormat;
    }

    @Override // androidx.media2.exoplayer.external.Player.AudioComponent
    public int getAudioSessionId() {
        return this.audioSessionId;
    }

    @Deprecated
    public int getAudioStreamType() {
        return Util.getStreamTypeForAudioUsage(this.audioAttributes.usage);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public long getBufferedPosition() {
        verifyApplicationThread();
        return this.player.getBufferedPosition();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public long getContentBufferedPosition() {
        verifyApplicationThread();
        return this.player.getContentBufferedPosition();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public long getContentPosition() {
        verifyApplicationThread();
        return this.player.getContentPosition();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getCurrentAdGroupIndex() {
        verifyApplicationThread();
        return this.player.getCurrentAdGroupIndex();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getCurrentAdIndexInAdGroup() {
        verifyApplicationThread();
        return this.player.getCurrentAdIndexInAdGroup();
    }

    @Override // androidx.media2.exoplayer.external.Player
    @Nullable
    public Object getCurrentManifest() {
        verifyApplicationThread();
        return this.player.getCurrentManifest();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getCurrentPeriodIndex() {
        verifyApplicationThread();
        return this.player.getCurrentPeriodIndex();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public long getCurrentPosition() {
        verifyApplicationThread();
        return this.player.getCurrentPosition();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public Timeline getCurrentTimeline() {
        verifyApplicationThread();
        return this.player.getCurrentTimeline();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public TrackGroupArray getCurrentTrackGroups() {
        verifyApplicationThread();
        return this.player.getCurrentTrackGroups();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public TrackSelectionArray getCurrentTrackSelections() {
        verifyApplicationThread();
        return this.player.getCurrentTrackSelections();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getCurrentWindowIndex() {
        verifyApplicationThread();
        return this.player.getCurrentWindowIndex();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public long getDuration() {
        verifyApplicationThread();
        return this.player.getDuration();
    }

    @Override // androidx.media2.exoplayer.external.Player
    @Nullable
    public Player.MetadataComponent getMetadataComponent() {
        return this;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public boolean getPlayWhenReady() {
        verifyApplicationThread();
        return this.player.getPlayWhenReady();
    }

    @Override // androidx.media2.exoplayer.external.Player
    @Nullable
    public ExoPlaybackException getPlaybackError() {
        verifyApplicationThread();
        return this.player.getPlaybackError();
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public Looper getPlaybackLooper() {
        return this.player.getPlaybackLooper();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public PlaybackParameters getPlaybackParameters() {
        verifyApplicationThread();
        return this.player.getPlaybackParameters();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getPlaybackState() {
        verifyApplicationThread();
        return this.player.getPlaybackState();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getRendererCount() {
        verifyApplicationThread();
        return this.player.getRendererCount();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getRendererType(int i) {
        verifyApplicationThread();
        return this.player.getRendererType(i);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public int getRepeatMode() {
        verifyApplicationThread();
        return this.player.getRepeatMode();
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public SeekParameters getSeekParameters() {
        verifyApplicationThread();
        return this.player.getSeekParameters();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public boolean getShuffleModeEnabled() {
        verifyApplicationThread();
        return this.player.getShuffleModeEnabled();
    }

    @Override // androidx.media2.exoplayer.external.Player
    @Nullable
    public Player.TextComponent getTextComponent() {
        return this;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public long getTotalBufferedDuration() {
        verifyApplicationThread();
        return this.player.getTotalBufferedDuration();
    }

    @Override // androidx.media2.exoplayer.external.Player
    @Nullable
    public Player.VideoComponent getVideoComponent() {
        return this;
    }

    @Nullable
    public DecoderCounters getVideoDecoderCounters() {
        return this.videoDecoderCounters;
    }

    @Nullable
    public Format getVideoFormat() {
        return this.videoFormat;
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public int getVideoScalingMode() {
        return this.videoScalingMode;
    }

    @Override // androidx.media2.exoplayer.external.Player.AudioComponent
    public float getVolume() {
        return this.audioVolume;
    }

    @Override // androidx.media2.exoplayer.external.Player
    public boolean isLoading() {
        verifyApplicationThread();
        return this.player.isLoading();
    }

    @Override // androidx.media2.exoplayer.external.Player
    public boolean isPlayingAd() {
        verifyApplicationThread();
        return this.player.isPlayingAd();
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public void prepare(MediaSource mediaSource) {
        prepare(mediaSource, true, true);
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public void prepare(MediaSource mediaSource, boolean z, boolean z2) {
        verifyApplicationThread();
        MediaSource mediaSource2 = this.mediaSource;
        if (mediaSource2 != null) {
            mediaSource2.removeEventListener(this.analyticsCollector);
            this.analyticsCollector.resetForNewMediaSource();
        }
        this.mediaSource = mediaSource;
        mediaSource.addEventListener(this.eventHandler, this.analyticsCollector);
        updatePlayWhenReady(getPlayWhenReady(), this.audioFocusManager.handlePrepare(getPlayWhenReady()));
        this.player.prepare(mediaSource, z, z2);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void release() {
        verifyApplicationThread();
        this.audioFocusManager.handleStop();
        this.player.release();
        removeSurfaceCallbacks();
        Surface surface = this.surface;
        if (surface != null) {
            if (this.ownsSurface) {
                surface.release();
            }
            this.surface = null;
        }
        MediaSource mediaSource = this.mediaSource;
        if (mediaSource != null) {
            mediaSource.removeEventListener(this.analyticsCollector);
            this.mediaSource = null;
        }
        if (this.isPriorityTaskManagerRegistered) {
            ((PriorityTaskManager) Assertions.checkNotNull(this.priorityTaskManager)).remove(0);
            this.isPriorityTaskManagerRegistered = false;
        }
        this.bandwidthMeter.removeEventListener(this.analyticsCollector);
        this.currentCues = Collections.emptyList();
    }

    public void removeAnalyticsListener(AnalyticsListener analyticsListener) {
        verifyApplicationThread();
        this.analyticsCollector.removeListener(analyticsListener);
    }

    @Deprecated
    public void removeAudioDebugListener(AudioRendererEventListener audioRendererEventListener) {
        this.audioDebugListeners.remove(audioRendererEventListener);
    }

    @Override // androidx.media2.exoplayer.external.Player.AudioComponent
    public void removeAudioListener(AudioListener audioListener) {
        this.audioListeners.remove(audioListener);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void removeListener(Player.EventListener eventListener) {
        verifyApplicationThread();
        this.player.removeListener(eventListener);
    }

    @Override // androidx.media2.exoplayer.external.Player.MetadataComponent
    public void removeMetadataOutput(MetadataOutput metadataOutput) {
        this.metadataOutputs.remove(metadataOutput);
    }

    @Override // androidx.media2.exoplayer.external.Player.TextComponent
    public void removeTextOutput(TextOutput textOutput) {
        this.textOutputs.remove(textOutput);
    }

    @Deprecated
    public void removeVideoDebugListener(VideoRendererEventListener videoRendererEventListener) {
        this.videoDebugListeners.remove(videoRendererEventListener);
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void removeVideoListener(androidx.media2.exoplayer.external.video.VideoListener videoListener) {
        this.videoListeners.remove(videoListener);
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public void retry() {
        verifyApplicationThread();
        if (this.mediaSource == null) {
            return;
        }
        if (getPlaybackError() != null || getPlaybackState() == 1) {
            prepare(this.mediaSource, false, false);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void seekTo(int i, long j) {
        verifyApplicationThread();
        this.analyticsCollector.notifySeekStarted();
        this.player.seekTo(i, j);
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    @Deprecated
    public void sendMessages(ExoPlayer.ExoPlayerMessage... exoPlayerMessageArr) {
        this.player.sendMessages(exoPlayerMessageArr);
    }

    @Override // androidx.media2.exoplayer.external.Player.AudioComponent
    public void setAudioAttributes(AudioAttributes audioAttributes) {
        setAudioAttributes(audioAttributes, false);
    }

    @Override // androidx.media2.exoplayer.external.Player.AudioComponent
    public void setAudioAttributes(AudioAttributes audioAttributes, boolean z) {
        Renderer[] rendererArr;
        verifyApplicationThread();
        if (!Util.areEqual(this.audioAttributes, audioAttributes)) {
            this.audioAttributes = audioAttributes;
            for (Renderer renderer : this.renderers) {
                if (renderer.getTrackType() == 1) {
                    this.player.createMessage(renderer).setType(3).setPayload(audioAttributes).send();
                }
            }
            Iterator<AudioListener> it = this.audioListeners.iterator();
            while (it.hasNext()) {
                it.next().onAudioAttributesChanged(audioAttributes);
            }
        }
        AudioFocusManager audioFocusManager = this.audioFocusManager;
        if (!z) {
            audioAttributes = null;
        }
        updatePlayWhenReady(getPlayWhenReady(), audioFocusManager.setAudioAttributes(audioAttributes, getPlayWhenReady(), getPlaybackState()));
    }

    @Deprecated
    public void setAudioDebugListener(AudioRendererEventListener audioRendererEventListener) {
        this.audioDebugListeners.retainAll(Collections.singleton(this.analyticsCollector));
        if (audioRendererEventListener != null) {
            addAudioDebugListener(audioRendererEventListener);
        }
    }

    @Deprecated
    public void setAudioStreamType(int i) {
        int audioUsageForStreamType = Util.getAudioUsageForStreamType(i);
        setAudioAttributes(new AudioAttributes.Builder().setUsage(audioUsageForStreamType).setContentType(Util.getAudioContentTypeForStreamType(i)).build());
    }

    @Override // androidx.media2.exoplayer.external.Player.AudioComponent
    public void setAuxEffectInfo(AuxEffectInfo auxEffectInfo) {
        Renderer[] rendererArr;
        verifyApplicationThread();
        for (Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == 1) {
                this.player.createMessage(renderer).setType(5).setPayload(auxEffectInfo).send();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void setCameraMotionListener(CameraMotionListener cameraMotionListener) {
        Renderer[] rendererArr;
        verifyApplicationThread();
        this.cameraMotionListener = cameraMotionListener;
        for (Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == 5) {
                this.player.createMessage(renderer).setType(7).setPayload(cameraMotionListener).send();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public void setForegroundMode(boolean z) {
        this.player.setForegroundMode(z);
    }

    @Deprecated
    public void setMetadataOutput(MetadataOutput metadataOutput) {
        this.metadataOutputs.retainAll(Collections.singleton(this.analyticsCollector));
        if (metadataOutput != null) {
            addMetadataOutput(metadataOutput);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void setPlayWhenReady(boolean z) {
        verifyApplicationThread();
        updatePlayWhenReady(z, this.audioFocusManager.handleSetPlayWhenReady(z, getPlaybackState()));
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void setPlaybackParameters(@Nullable PlaybackParameters playbackParameters) {
        verifyApplicationThread();
        this.player.setPlaybackParameters(playbackParameters);
    }

    @Deprecated
    @TargetApi(23)
    public void setPlaybackParams(@Nullable PlaybackParams playbackParams) {
        PlaybackParameters playbackParameters;
        if (playbackParams != null) {
            playbackParams.allowDefaults();
            playbackParameters = new PlaybackParameters(playbackParams.getSpeed(), playbackParams.getPitch());
        } else {
            playbackParameters = null;
        }
        setPlaybackParameters(playbackParameters);
    }

    public void setPriorityTaskManager(@Nullable PriorityTaskManager priorityTaskManager) {
        verifyApplicationThread();
        if (!Util.areEqual(this.priorityTaskManager, priorityTaskManager)) {
            if (this.isPriorityTaskManagerRegistered) {
                ((PriorityTaskManager) Assertions.checkNotNull(this.priorityTaskManager)).remove(0);
            }
            if (priorityTaskManager == null || !isLoading()) {
                this.isPriorityTaskManagerRegistered = false;
            } else {
                priorityTaskManager.add(0);
                this.isPriorityTaskManagerRegistered = true;
            }
            this.priorityTaskManager = priorityTaskManager;
        }
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void setRepeatMode(int i) {
        verifyApplicationThread();
        this.player.setRepeatMode(i);
    }

    @Override // androidx.media2.exoplayer.external.ExoPlayer
    public void setSeekParameters(@Nullable SeekParameters seekParameters) {
        verifyApplicationThread();
        this.player.setSeekParameters(seekParameters);
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void setShuffleModeEnabled(boolean z) {
        verifyApplicationThread();
        this.player.setShuffleModeEnabled(z);
    }

    @Deprecated
    public void setTextOutput(TextOutput textOutput) {
        this.textOutputs.clear();
        if (textOutput != null) {
            addTextOutput(textOutput);
        }
    }

    @Deprecated
    public void setVideoDebugListener(VideoRendererEventListener videoRendererEventListener) {
        this.videoDebugListeners.retainAll(Collections.singleton(this.analyticsCollector));
        if (videoRendererEventListener != null) {
            addVideoDebugListener(videoRendererEventListener);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void setVideoFrameMetadataListener(VideoFrameMetadataListener videoFrameMetadataListener) {
        Renderer[] rendererArr;
        verifyApplicationThread();
        this.videoFrameMetadataListener = videoFrameMetadataListener;
        for (Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == 2) {
                this.player.createMessage(renderer).setType(6).setPayload(videoFrameMetadataListener).send();
            }
        }
    }

    @Deprecated
    public void setVideoListener(VideoListener videoListener) {
        this.videoListeners.clear();
        if (videoListener != null) {
            addVideoListener(videoListener);
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void setVideoScalingMode(int i) {
        Renderer[] rendererArr;
        verifyApplicationThread();
        this.videoScalingMode = i;
        for (Renderer renderer : this.renderers) {
            if (renderer.getTrackType() == 2) {
                this.player.createMessage(renderer).setType(4).setPayload(Integer.valueOf(i)).send();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void setVideoSurface(@Nullable Surface surface) {
        verifyApplicationThread();
        removeSurfaceCallbacks();
        int i = 0;
        setVideoSurfaceInternal(surface, false);
        if (surface != null) {
            i = -1;
        }
        maybeNotifySurfaceSizeChanged(i, i);
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void setVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        verifyApplicationThread();
        removeSurfaceCallbacks();
        this.surfaceHolder = surfaceHolder;
        if (surfaceHolder == null) {
            setVideoSurfaceInternal(null, false);
            maybeNotifySurfaceSizeChanged(0, 0);
            return;
        }
        surfaceHolder.addCallback(this.componentListener);
        Surface surface = surfaceHolder.getSurface();
        if (surface == null || !surface.isValid()) {
            setVideoSurfaceInternal(null, false);
            maybeNotifySurfaceSizeChanged(0, 0);
            return;
        }
        setVideoSurfaceInternal(surface, false);
        Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
        maybeNotifySurfaceSizeChanged(surfaceFrame.width(), surfaceFrame.height());
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void setVideoSurfaceView(SurfaceView surfaceView) {
        setVideoSurfaceHolder(surfaceView == null ? null : surfaceView.getHolder());
    }

    @Override // androidx.media2.exoplayer.external.Player.VideoComponent
    public void setVideoTextureView(TextureView textureView) {
        verifyApplicationThread();
        removeSurfaceCallbacks();
        this.textureView = textureView;
        if (textureView == null) {
            setVideoSurfaceInternal(null, true);
            maybeNotifySurfaceSizeChanged(0, 0);
            return;
        }
        if (textureView.getSurfaceTextureListener() != null) {
            Log.m37483w(TAG, "Replacing existing SurfaceTextureListener.");
        }
        textureView.setSurfaceTextureListener(this.componentListener);
        SurfaceTexture surfaceTexture = textureView.isAvailable() ? textureView.getSurfaceTexture() : null;
        if (surfaceTexture == null) {
            setVideoSurfaceInternal(null, true);
            maybeNotifySurfaceSizeChanged(0, 0);
            return;
        }
        setVideoSurfaceInternal(new Surface(surfaceTexture), true);
        maybeNotifySurfaceSizeChanged(textureView.getWidth(), textureView.getHeight());
    }

    @Override // androidx.media2.exoplayer.external.Player.AudioComponent
    public void setVolume(float f) {
        verifyApplicationThread();
        float constrainValue = Util.constrainValue(f, 0.0f, 1.0f);
        if (this.audioVolume != constrainValue) {
            this.audioVolume = constrainValue;
            sendVolumeToRenderers();
            Iterator<AudioListener> it = this.audioListeners.iterator();
            while (it.hasNext()) {
                it.next().onVolumeChanged(constrainValue);
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.Player
    public void stop(boolean z) {
        verifyApplicationThread();
        this.player.stop(z);
        MediaSource mediaSource = this.mediaSource;
        if (mediaSource != null) {
            mediaSource.removeEventListener(this.analyticsCollector);
            this.analyticsCollector.resetForNewMediaSource();
            if (z) {
                this.mediaSource = null;
            }
        }
        this.audioFocusManager.handleStop();
        this.currentCues = Collections.emptyList();
    }
}
