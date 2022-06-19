package androidx.media2.player;

import android.content.Context;
import android.media.MediaFormat;
import android.net.Uri;
import androidx.core.p036e.C0833d;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.AbstractC1355b;
import androidx.media2.common.CallbackMediaItem;
import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import androidx.media2.common.UriMediaItem;
import androidx.media2.exoplayer.external.C1368ad;
import androidx.media2.exoplayer.external.C1378aj;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.audio.C1401c;
import androidx.media2.exoplayer.external.extractor.AbstractC1602j;
import androidx.media2.exoplayer.external.extractor.C1536e;
import androidx.media2.exoplayer.external.mediacodec.C1666g;
import androidx.media2.exoplayer.external.source.AbstractC1842t;
import androidx.media2.exoplayer.external.source.C1827n;
import androidx.media2.exoplayer.external.source.hls.HlsMediaSource;
import androidx.media2.exoplayer.external.upstream.AbstractC1968f;
import androidx.media2.exoplayer.external.upstream.HttpDataSource;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2012m;
import java.io.IOException;
import java.net.SocketTimeoutException;
/* renamed from: androidx.media2.player.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/player/d.class */
final class C2171d {

    /* renamed from: a */
    private static final AbstractC1602j f8546a = new C1536e().m42730a();

    private C2171d() {
    }

    /* renamed from: a */
    public static int m41255a(ExoPlaybackException exoPlaybackException) {
        boolean z = true;
        if (exoPlaybackException.f5068a == 0) {
            if (exoPlaybackException.f5068a != 0) {
                z = false;
            }
            C1993a.m41686b(z);
            IOException iOException = (IOException) C1993a.m41690a(exoPlaybackException.f5071d);
            if (iOException instanceof ParserException) {
                return -1007;
            }
            return (!(iOException instanceof HttpDataSource.HttpDataSourceException) || !(iOException.getCause() instanceof SocketTimeoutException)) ? -1004 : -110;
        }
        return 1;
    }

    /* renamed from: a */
    public static MediaFormat m41254a(Format format) {
        MediaFormat mediaFormat = new MediaFormat();
        String str = format.sampleMimeType;
        mediaFormat.setString("mime", str);
        int m41568g = C2012m.m41568g(str);
        int i = 1;
        if (m41568g == 1) {
            mediaFormat.setInteger("channel-count", format.channelCount);
            mediaFormat.setInteger("sample-rate", format.sampleRate);
            if (format.language != null) {
                mediaFormat.setString("language", format.language);
            }
        } else if (m41568g == 2) {
            C1666g.m42410a(mediaFormat, "width", format.width);
            C1666g.m42410a(mediaFormat, "height", format.height);
            C1666g.m42411a(mediaFormat, "frame-rate", format.frameRate);
            C1666g.m42410a(mediaFormat, "rotation-degrees", format.rotationDegrees);
            C1666g.m42412a(mediaFormat, format.colorInfo);
        } else if (m41568g == 3) {
            int i2 = format.selectionFlags == 4 ? 1 : 0;
            int i3 = format.selectionFlags == 1 ? 1 : 0;
            if (format.selectionFlags != 2) {
                i = 0;
            }
            mediaFormat.setInteger("is-autoselect", i2);
            mediaFormat.setInteger("is-default", i3);
            mediaFormat.setInteger("is-forced-subtitle", i);
            if (format.language == null) {
                mediaFormat.setString("language", "und");
            } else {
                mediaFormat.setString("language", format.language);
            }
            if ("application/cea-608".equals(str)) {
                mediaFormat.setString("mime", "text/cea-608");
            } else if ("application/cea-708".equals(str)) {
                mediaFormat.setString("mime", "text/cea-708");
            }
        }
        return mediaFormat;
    }

    /* renamed from: a */
    public static AudioAttributesCompat m41253a(C1401c c1401c) {
        AudioAttributesCompat.C1287a m43260b = new AudioAttributesCompat.C1287a().m43260b(c1401c.f5299b);
        m43260b.f4875a.mo43245c(c1401c.f5300c);
        return m43260b.m43261a(c1401c.f5301d).m43262a();
    }

    /* renamed from: a */
    public static C1368ad m41252a(C2187j c2187j) {
        Float m41188c = c2187j.m41188c();
        Float m41189b = c2187j.m41189b();
        float f = 1.0f;
        float floatValue = m41188c != null ? m41188c.floatValue() : 1.0f;
        if (m41189b != null) {
            f = m41189b.floatValue();
        }
        return new C1368ad(floatValue, f);
    }

    /* renamed from: a */
    public static C1378aj m41258a(int i) {
        if (i != 0) {
            if (i == 1) {
                return C1378aj.f5156d;
            }
            if (i == 2) {
                return C1378aj.f5154b;
            }
            if (i != 3) {
                throw new IllegalArgumentException();
            }
            return C1378aj.f5153a;
        }
        return C1378aj.f5155c;
    }

    /* renamed from: a */
    public static C1401c m41256a(AudioAttributesCompat audioAttributesCompat) {
        C1401c.C1403a c1403a = new C1401c.C1403a();
        c1403a.f5303a = audioAttributesCompat.m43265c();
        c1403a.f5304b = audioAttributesCompat.m43263e();
        c1403a.f5305c = audioAttributesCompat.m43264d();
        return c1403a.m43018a();
    }

    /* renamed from: a */
    public static AbstractC1842t m41257a(Context context, AbstractC1968f.AbstractC1969a abstractC1969a, MediaItem mediaItem) {
        int i;
        if (!(mediaItem instanceof UriMediaItem)) {
            if (mediaItem instanceof FileMediaItem) {
                return new C1827n.C1831c(abstractC1969a).m42114a(f8546a).m42113a(mediaItem).mo42112b(Uri.EMPTY);
            }
            if (!(mediaItem instanceof CallbackMediaItem)) {
                throw new IllegalStateException();
            }
            final AbstractC1355b abstractC1355b = ((CallbackMediaItem) mediaItem).f5015a;
            return new C1827n.C1831c(new AbstractC1968f.AbstractC1969a() { // from class: androidx.media2.player.b.1
                @Override // androidx.media2.exoplayer.external.upstream.AbstractC1968f.AbstractC1969a
                /* renamed from: a */
                public final AbstractC1968f mo41195a() {
                    return new C2130b(abstractC1355b);
                }
            }).m42114a(f8546a).m42113a(mediaItem).mo42112b(Uri.EMPTY);
        }
        Uri uri = ((UriMediaItem) mediaItem).f5060a;
        boolean z = true;
        if (C1996ac.m41632b(uri) == 2) {
            HlsMediaSource.Factory factory = new HlsMediaSource.Factory(abstractC1969a);
            C1993a.m41686b(!factory.f7032a);
            factory.f7033b = mediaItem;
            return factory.mo42112b(uri);
        }
        Uri uri2 = uri;
        if ("android.resource".equals(uri.getScheme())) {
            String str = (String) C0833d.m44410a(uri.getPath());
            if (uri.getPathSegments().size() != 1 || !uri.getPathSegments().get(0).matches("\\d+")) {
                String str2 = "";
                String replaceAll = str.replaceAll("^/", "");
                String host = uri.getHost();
                StringBuilder sb = new StringBuilder();
                if (host != null) {
                    str2 = host + ":";
                }
                sb.append(str2);
                sb.append(replaceAll);
                i = context.getResources().getIdentifier(sb.toString(), "raw", context.getPackageName());
            } else {
                i = Integer.parseInt(uri.getPathSegments().get(0));
            }
            if (i == 0) {
                z = false;
            }
            C0833d.m44406b(z);
            StringBuilder sb2 = new StringBuilder(26);
            sb2.append("rawresource:///");
            sb2.append(i);
            uri2 = Uri.parse(sb2.toString());
        }
        return new C1827n.C1831c(abstractC1969a).m42114a(f8546a).m42113a(mediaItem).mo42112b(uri2);
    }
}
