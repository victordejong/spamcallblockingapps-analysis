package com.google.android.exoplayer2.source.hls.playlist;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.MimeTypes;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl.class */
public final class HlsMasterPlaylist$HlsUrl {
    public final Format format;
    public final String url;

    public HlsMasterPlaylist$HlsUrl(String str, Format format) {
        this.url = str;
        this.format = format;
    }

    public static HlsMasterPlaylist$HlsUrl createMediaPlaylistHlsUrl(String str) {
        return new HlsMasterPlaylist$HlsUrl(str, Format.createContainerFormat("0", MimeTypes.APPLICATION_M3U8, null, null, -1, 0, null));
    }
}
