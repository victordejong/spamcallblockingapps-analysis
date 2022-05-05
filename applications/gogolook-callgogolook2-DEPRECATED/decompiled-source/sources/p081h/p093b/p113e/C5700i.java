package p081h.p093b.p113e;

import androidx.media2.exoplayer.external.text.webvtt.WebvttDecoder;
import com.mopub.common.MoPubBrowser;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p081h.p093b.p113e.p114n.C5710b;
/* renamed from: h.b.e.i */
/* loaded from: classes-dex2jar.jar:h/b/e/i.class */
public final class C5700i extends AbstractC5695e {

    /* renamed from: b */
    public static final Set<String> f14289b = Collections.unmodifiableSet(new HashSet(Arrays.asList("BEGIN", "END", "LOGO", "PHOTO", "LABEL", "FN", "TITLE", "SOUND", "VERSION", "TEL", "EMAIL", "TZ", "GEO", WebvttDecoder.COMMENT_START, MoPubBrowser.DESTINATION_URL_KEY, "BDAY", "ROLE", "REV", "UID", "KEY", "MAILER")));

    /* renamed from: c */
    public static final Set<String> f14290c = Collections.unmodifiableSet(new HashSet(Arrays.asList("DOM", "INTL", "POSTAL", "PARCEL", "HOME", "WORK", "PREF", "VOICE", "FAX", "MSG", "CELL", "PAGER", "BBS", "MODEM", "CAR", "ISDN", "VIDEO", "AOL", "APPLELINK", "ATTMAIL", "CIS", "EWORLD", "INTERNET", "IBMMAIL", "MCIMAIL", "POWERSHARE", "PRODIGY", "TLX", "X400", "GIF", "CGM", "WMF", "BMP", "MET", "PMB", "DIB", "PICT", "TIFF", "PDF", "PS", "JPEG", "QTIME", "MPEG", "MPEG2", "AVI", "WAVE", "AIFF", "PCM", "X509", "PGP")));

    /* renamed from: d */
    public static final Set<String> f14291d = Collections.unmodifiableSet(new HashSet(Arrays.asList("INLINE", MoPubBrowser.DESTINATION_URL_KEY, "CONTENT-ID", "CID")));

    /* renamed from: e */
    public static final Set<String> f14292e = Collections.unmodifiableSet(new HashSet(Arrays.asList("7BIT", "8BIT", "QUOTED-PRINTABLE", "BASE64", "B")));

    /* renamed from: a */
    public final C5696f f14293a;

    public C5700i(int i) {
        this.f14293a = new C5696f(i);
    }

    /* renamed from: a */
    public void m24695a(AbstractC5694d dVar) {
        this.f14293a.m24736a(dVar);
    }

    /* renamed from: a */
    public void m24694a(InputStream inputStream) throws IOException, C5710b {
        this.f14293a.m24733a(inputStream);
    }
}
