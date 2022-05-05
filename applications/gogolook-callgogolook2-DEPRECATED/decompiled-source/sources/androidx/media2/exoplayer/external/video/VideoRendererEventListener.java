package androidx.media2.exoplayer.external.video;

import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.decoder.DecoderCounters;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.video.VideoRendererEventListener;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/VideoRendererEventListener.class */
public interface VideoRendererEventListener {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/VideoRendererEventListener$EventDispatcher.class */
    public static final class EventDispatcher {
        @Nullable
        public final Handler handler;
        @Nullable
        public final VideoRendererEventListener listener;

        public EventDispatcher(@Nullable Handler handler, @Nullable VideoRendererEventListener videoRendererEventListener) {
            this.handler = videoRendererEventListener != null ? (Handler) Assertions.checkNotNull(handler) : null;
            this.listener = videoRendererEventListener;
        }

        public void decoderInitialized(final String str, final long j, final long j2) {
            if (this.listener != null) {
                this.handler.post(new Runnable(this, str, j, j2) { // from class: androidx.media2.exoplayer.external.video.VideoRendererEventListener$EventDispatcher$$Lambda$1
                    public final VideoRendererEventListener.EventDispatcher arg$1;
                    public final String arg$2;
                    public final long arg$3;
                    public final long arg$4;

                    {
                        this.arg$1 = this;
                        this.arg$2 = str;
                        this.arg$3 = j;
                        this.arg$4 = j2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.m37481x9a08f997(this.arg$2, this.arg$3, this.arg$4);
                    }
                });
            }
        }

        public void disabled(final DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            if (this.listener != null) {
                this.handler.post(new Runnable(this, decoderCounters) { // from class: androidx.media2.exoplayer.external.video.VideoRendererEventListener$EventDispatcher$$Lambda$6
                    public final VideoRendererEventListener.EventDispatcher arg$1;
                    public final DecoderCounters arg$2;

                    {
                        this.arg$1 = this;
                        this.arg$2 = decoderCounters;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.lambda$disabled$6$VideoRendererEventListener$EventDispatcher(this.arg$2);
                    }
                });
            }
        }

        public void droppedFrames(final int i, final long j) {
            if (this.listener != null) {
                this.handler.post(new Runnable(this, i, j) { // from class: androidx.media2.exoplayer.external.video.VideoRendererEventListener$EventDispatcher$$Lambda$3
                    public final VideoRendererEventListener.EventDispatcher arg$1;
                    public final int arg$2;
                    public final long arg$3;

                    {
                        this.arg$1 = this;
                        this.arg$2 = i;
                        this.arg$3 = j;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.m37480xf7e95759(this.arg$2, this.arg$3);
                    }
                });
            }
        }

        public void enabled(final DecoderCounters decoderCounters) {
            if (this.listener != null) {
                this.handler.post(new Runnable(this, decoderCounters) { // from class: androidx.media2.exoplayer.external.video.VideoRendererEventListener$EventDispatcher$$Lambda$0
                    public final VideoRendererEventListener.EventDispatcher arg$1;
                    public final DecoderCounters arg$2;

                    {
                        this.arg$1 = this;
                        this.arg$2 = decoderCounters;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.lambda$enabled$0$VideoRendererEventListener$EventDispatcher(this.arg$2);
                    }
                });
            }
        }

        public void inputFormatChanged(final Format format) {
            if (this.listener != null) {
                this.handler.post(new Runnable(this, format) { // from class: androidx.media2.exoplayer.external.video.VideoRendererEventListener$EventDispatcher$$Lambda$2
                    public final VideoRendererEventListener.EventDispatcher arg$1;
                    public final Format arg$2;

                    {
                        this.arg$1 = this;
                        this.arg$2 = format;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.m37479xe7570b3(this.arg$2);
                    }
                });
            }
        }

        /* renamed from: lambda$decoderInitialized$1$VideoRendererEventListener$EventDispatcher */
        public final /* synthetic */ void m37481x9a08f997(String str, long j, long j2) {
            this.listener.onVideoDecoderInitialized(str, j, j2);
        }

        public final /* synthetic */ void lambda$disabled$6$VideoRendererEventListener$EventDispatcher(DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            this.listener.onVideoDisabled(decoderCounters);
        }

        /* renamed from: lambda$droppedFrames$3$VideoRendererEventListener$EventDispatcher */
        public final /* synthetic */ void m37480xf7e95759(int i, long j) {
            this.listener.onDroppedFrames(i, j);
        }

        public final /* synthetic */ void lambda$enabled$0$VideoRendererEventListener$EventDispatcher(DecoderCounters decoderCounters) {
            this.listener.onVideoEnabled(decoderCounters);
        }

        /* renamed from: lambda$inputFormatChanged$2$VideoRendererEventListener$EventDispatcher */
        public final /* synthetic */ void m37479xe7570b3(Format format) {
            this.listener.onVideoInputFormatChanged(format);
        }

        /* renamed from: lambda$renderedFirstFrame$5$VideoRendererEventListener$EventDispatcher */
        public final /* synthetic */ void m37478x44bb7f11(Surface surface) {
            this.listener.onRenderedFirstFrame(surface);
        }

        /* renamed from: lambda$videoSizeChanged$4$VideoRendererEventListener$EventDispatcher */
        public final /* synthetic */ void m37477x6ff94f6c(int i, int i2, int i3, float f) {
            this.listener.onVideoSizeChanged(i, i2, i3, f);
        }

        public void renderedFirstFrame(@Nullable final Surface surface) {
            if (this.listener != null) {
                this.handler.post(new Runnable(this, surface) { // from class: androidx.media2.exoplayer.external.video.VideoRendererEventListener$EventDispatcher$$Lambda$5
                    public final VideoRendererEventListener.EventDispatcher arg$1;
                    public final Surface arg$2;

                    {
                        this.arg$1 = this;
                        this.arg$2 = surface;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.m37478x44bb7f11(this.arg$2);
                    }
                });
            }
        }

        public void videoSizeChanged(final int i, final int i2, final int i3, final float f) {
            if (this.listener != null) {
                this.handler.post(new Runnable(this, i, i2, i3, f) { // from class: androidx.media2.exoplayer.external.video.VideoRendererEventListener$EventDispatcher$$Lambda$4
                    public final VideoRendererEventListener.EventDispatcher arg$1;
                    public final int arg$2;
                    public final int arg$3;
                    public final int arg$4;
                    public final float arg$5;

                    {
                        this.arg$1 = this;
                        this.arg$2 = i;
                        this.arg$3 = i2;
                        this.arg$4 = i3;
                        this.arg$5 = f;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.m37477x6ff94f6c(this.arg$2, this.arg$3, this.arg$4, this.arg$5);
                    }
                });
            }
        }
    }

    void onDroppedFrames(int i, long j);

    void onRenderedFirstFrame(@Nullable Surface surface);

    void onVideoDecoderInitialized(String str, long j, long j2);

    void onVideoDisabled(DecoderCounters decoderCounters);

    void onVideoEnabled(DecoderCounters decoderCounters);

    void onVideoInputFormatChanged(Format format);

    void onVideoSizeChanged(int i, int i2, int i3, float f);
}
