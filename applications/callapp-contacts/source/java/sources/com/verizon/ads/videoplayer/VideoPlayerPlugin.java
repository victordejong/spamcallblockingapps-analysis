package com.verizon.ads.videoplayer;

import android.content.Context;
import com.verizon.ads.ComponentRegistry;
import com.verizon.ads.Plugin;
import com.verizon.ads.videoplayer.VerizonVideoPlayer;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/videoplayer/VideoPlayerPlugin.class */
public class VideoPlayerPlugin extends Plugin {

    /* renamed from: i */
    private static final URI f62064i = null;

    /* renamed from: j */
    private static final URL f62065j = null;

    public VideoPlayerPlugin(Context context) {
        super(context, BuildConfig.LIBRARY_PACKAGE_NAME, "VideoPlayer", BuildConfig.VAS_VIDEOPLAYER_VERSION, "Verizon", f62064i, f62065j, 1);
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginDisabled() {
    }

    @Override // com.verizon.ads.Plugin
    public final void onPluginEnabled() {
        ComponentRegistry.registerComponent("video/player-v2", new VerizonVideoPlayer.Factory());
    }

    @Override // com.verizon.ads.Plugin
    public final boolean prepare() {
        return true;
    }
}
