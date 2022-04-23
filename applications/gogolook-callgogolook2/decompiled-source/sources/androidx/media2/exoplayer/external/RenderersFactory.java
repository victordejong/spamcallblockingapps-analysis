package androidx.media2.exoplayer.external;

import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.audio.AudioRendererEventListener;
import androidx.media2.exoplayer.external.drm.DrmSessionManager;
import androidx.media2.exoplayer.external.drm.FrameworkMediaCrypto;
import androidx.media2.exoplayer.external.metadata.MetadataOutput;
import androidx.media2.exoplayer.external.text.TextOutput;
import androidx.media2.exoplayer.external.video.VideoRendererEventListener;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/RenderersFactory.class */
public interface RenderersFactory {
    Renderer[] createRenderers(Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput, @Nullable DrmSessionManager<FrameworkMediaCrypto> drmSessionManager);
}
