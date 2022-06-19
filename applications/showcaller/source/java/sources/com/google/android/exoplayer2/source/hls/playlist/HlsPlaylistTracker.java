package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import com.google.android.exoplayer2.source.AbstractC5297w;
import com.google.android.exoplayer2.source.hls.AbstractC5242h;
import com.google.android.exoplayer2.upstream.AbstractC5493u;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker.class */
public interface HlsPlaylistTracker {

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistResetException.class */
    public static final class PlaylistResetException extends IOException {
        public final Uri url;

        public PlaylistResetException(Uri uri) {
            this.url = uri;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$PlaylistStuckException.class */
    public static final class PlaylistStuckException extends IOException {
        public final Uri url;

        public PlaylistStuckException(Uri uri) {
            this.url = uri;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$a.class */
    public interface AbstractC5255a {
        /* renamed from: a */
        HlsPlaylistTracker mo19964a(AbstractC5242h abstractC5242h, AbstractC5493u abstractC5493u, AbstractC5271i abstractC5271i);
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$b.class */
    public interface AbstractC5256b {
        /* renamed from: g */
        void mo19967g();

        /* renamed from: i */
        boolean mo19966i(Uri uri, long j);
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/playlist/HlsPlaylistTracker$c.class */
    public interface AbstractC5257c {
        /* renamed from: c */
        void mo19965c(C5266f c5266f);
    }

    /* renamed from: a */
    boolean mo19951a(Uri uri);

    /* renamed from: b */
    void mo19950b(AbstractC5256b abstractC5256b);

    /* renamed from: c */
    void mo19949c(Uri uri);

    /* renamed from: d */
    long mo19948d();

    /* renamed from: e */
    boolean mo19947e();

    /* renamed from: f */
    C5263e mo19946f();

    /* renamed from: g */
    void mo19945g(Uri uri, AbstractC5297w.C5298a c5298a, AbstractC5257c abstractC5257c);

    /* renamed from: h */
    void mo19944h();

    /* renamed from: j */
    void mo19943j(Uri uri);

    /* renamed from: l */
    void mo19942l(AbstractC5256b abstractC5256b);

    /* renamed from: m */
    C5266f mo19941m(Uri uri, boolean z);

    void stop();
}
