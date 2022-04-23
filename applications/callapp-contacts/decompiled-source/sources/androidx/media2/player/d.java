package androidx.media2.player;

import android.content.Context;
import android.media.MediaFormat;
import android.net.Uri;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.CallbackMediaItem;
import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import androidx.media2.common.UriMediaItem;
import androidx.media2.common.b;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.ad;
import androidx.media2.exoplayer.external.aj;
import androidx.media2.exoplayer.external.audio.c;
import androidx.media2.exoplayer.external.extractor.e;
import androidx.media2.exoplayer.external.extractor.j;
import androidx.media2.exoplayer.external.mediacodec.g;
import androidx.media2.exoplayer.external.source.hls.HlsMediaSource;
import androidx.media2.exoplayer.external.source.n;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.upstream.HttpDataSource;
import androidx.media2.exoplayer.external.upstream.f;
import androidx.media2.exoplayer.external.util.a;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.m;
import java.io.IOException;
import java.net.SocketTimeoutException;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/d.class */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final j f4423a = new e().a();

    private d() {
    }

    public static int a(ExoPlaybackException exoPlaybackException) {
        boolean z = true;
        if (exoPlaybackException.f2772a != 0) {
            return 1;
        }
        if (exoPlaybackException.f2772a != 0) {
            z = false;
        }
        a.b(z);
        IOException iOException = (IOException) a.a(exoPlaybackException.f2775d);
        if (iOException instanceof ParserException) {
            return -1007;
        }
        return (!(iOException instanceof HttpDataSource.HttpDataSourceException) || !(iOException.getCause() instanceof SocketTimeoutException)) ? -1004 : -110;
    }

    public static MediaFormat a(Format format) {
        MediaFormat mediaFormat = new MediaFormat();
        String str = format.sampleMimeType;
        mediaFormat.setString("mime", str);
        int g = m.g(str);
        int i = 1;
        if (g == 1) {
            mediaFormat.setInteger("channel-count", format.channelCount);
            mediaFormat.setInteger("sample-rate", format.sampleRate);
            if (format.language != null) {
                mediaFormat.setString("language", format.language);
            }
        } else if (g == 2) {
            g.a(mediaFormat, "width", format.width);
            g.a(mediaFormat, "height", format.height);
            g.a(mediaFormat, "frame-rate", format.frameRate);
            g.a(mediaFormat, "rotation-degrees", format.rotationDegrees);
            g.a(mediaFormat, format.colorInfo);
        } else if (g == 3) {
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

    public static AudioAttributesCompat a(c cVar) {
        AudioAttributesCompat.a b2 = new AudioAttributesCompat.a().b(cVar.f2869b);
        b2.f2613a.c(cVar.f2870c);
        return b2.a(cVar.f2871d).a();
    }

    public static ad a(j jVar) {
        Float c2 = jVar.c();
        Float b2 = jVar.b();
        float f = 1.0f;
        float floatValue = c2 != null ? c2.floatValue() : 1.0f;
        if (b2 != null) {
            f = b2.floatValue();
        }
        return new ad(floatValue, f);
    }

    public static aj a(int i) {
        if (i == 0) {
            return aj.f2819c;
        }
        if (i == 1) {
            return aj.f2820d;
        }
        if (i == 2) {
            return aj.f2818b;
        }
        if (i == 3) {
            return aj.f2817a;
        }
        throw new IllegalArgumentException();
    }

    public static c a(AudioAttributesCompat audioAttributesCompat) {
        c.a aVar = new c.a();
        aVar.f2872a = audioAttributesCompat.c();
        aVar.f2873b = audioAttributesCompat.e();
        aVar.f2874c = audioAttributesCompat.d();
        return aVar.a();
    }

    public static t a(Context context, f.a aVar, MediaItem mediaItem) {
        int i;
        if (mediaItem instanceof UriMediaItem) {
            Uri uri = ((UriMediaItem) mediaItem).f2764a;
            boolean z = true;
            if (ac.b(uri) == 2) {
                HlsMediaSource.Factory factory = new HlsMediaSource.Factory(aVar);
                a.b(!factory.f3635a);
                factory.f3636b = mediaItem;
                return factory.b(uri);
            }
            Uri uri2 = uri;
            if ("android.resource".equals(uri.getScheme())) {
                String str = (String) androidx.core.e.d.a(uri.getPath());
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
                androidx.core.e.d.b(z);
                StringBuilder sb2 = new StringBuilder(26);
                sb2.append("rawresource:///");
                sb2.append(i);
                uri2 = Uri.parse(sb2.toString());
            }
            return new n.c(aVar).a(f4423a).a(mediaItem).b(uri2);
        } else if (mediaItem instanceof FileMediaItem) {
            return new n.c(aVar).a(f4423a).a(mediaItem).b(Uri.EMPTY);
        } else {
            if (mediaItem instanceof CallbackMediaItem) {
                final b bVar = ((CallbackMediaItem) mediaItem).f2728a;
                return new n.c(new f.a() { // from class: androidx.media2.player.b.1
                    @Override // androidx.media2.exoplayer.external.upstream.f.a
                    public final f a() {
                        return new b(bVar);
                    }
                }).a(f4423a).a(mediaItem).b(Uri.EMPTY);
            }
            throw new IllegalStateException();
        }
    }
}
