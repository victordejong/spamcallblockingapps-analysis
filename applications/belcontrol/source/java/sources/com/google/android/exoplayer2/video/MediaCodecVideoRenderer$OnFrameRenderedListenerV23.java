package com.google.android.exoplayer2.video;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.os.Handler;
@TargetApi(23)
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23.class */
public final class MediaCodecVideoRenderer$OnFrameRenderedListenerV23 implements MediaCodec.OnFrameRenderedListener {
    public final /* synthetic */ MediaCodecVideoRenderer this$0;

    private MediaCodecVideoRenderer$OnFrameRenderedListenerV23(MediaCodecVideoRenderer mediaCodecVideoRenderer, MediaCodec mediaCodec) {
        this.this$0 = mediaCodecVideoRenderer;
        mediaCodec.setOnFrameRenderedListener(this, new Handler());
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
        MediaCodecVideoRenderer mediaCodecVideoRenderer = this.this$0;
        if (this != mediaCodecVideoRenderer.tunnelingOnFrameRenderedListener) {
            return;
        }
        mediaCodecVideoRenderer.maybeNotifyRenderedFirstFrame();
    }
}
