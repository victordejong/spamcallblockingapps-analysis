package p193e.p1432d.p1441d;

import com.mopub.common.MoPubBrowser;
import com.tenor.android.core.constant.MediaCollectionFormat;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p193e.p1432d.p1441d.p1442p.C22166b;
/* renamed from: e.d.d.j */
/* loaded from: classes-dex2jar.jar:e/d/d/j.class */
public final class C22157j extends AbstractC22153f {

    /* renamed from: b */
    public static final Set<String> f61570b = Collections.unmodifiableSet(new HashSet(Arrays.asList("BEGIN", "END", "LOGO", "PHOTO", "LABEL", "FN", "TITLE", "SOUND", "VERSION", "TEL", "EMAIL", "TZ", "GEO", "NOTE", MoPubBrowser.DESTINATION_URL_KEY, "BDAY", "ROLE", "REV", "UID", "KEY", "MAILER")));

    /* renamed from: c */
    public static final Set<String> f61571c = Collections.unmodifiableSet(new HashSet(Arrays.asList("DOM", "INTL", "POSTAL", "PARCEL", "HOME", "WORK", "PREF", "VOICE", "FAX", "MSG", "CELL", "PAGER", "BBS", "MODEM", "CAR", "ISDN", "VIDEO", "AOL", "APPLELINK", "ATTMAIL", "CIS", "EWORLD", "INTERNET", "IBMMAIL", "MCIMAIL", "POWERSHARE", "PRODIGY", "TLX", "X400", MediaCollectionFormat.GIF, "CGM", "WMF", "BMP", "MET", "PMB", "DIB", "PICT", "TIFF", "PDF", "PS", "JPEG", "QTIME", "MPEG", "MPEG2", "AVI", "WAVE", "AIFF", "PCM", "X509", "PGP")));

    /* renamed from: d */
    public static final Set<String> f61572d = Collections.unmodifiableSet(new HashSet(Arrays.asList("INLINE", MoPubBrowser.DESTINATION_URL_KEY, "CONTENT-ID", "CID")));

    /* renamed from: e */
    public static final Set<String> f61573e = Collections.unmodifiableSet(new HashSet(Arrays.asList("7BIT", "8BIT", "QUOTED-PRINTABLE", "BASE64", "B")));

    /* renamed from: a */
    public final C22154g f61574a = new C22154g();

    @Override // p193e.p1432d.p1441d.AbstractC22153f
    /* renamed from: a */
    public void mo8508a(AbstractC22152e abstractC22152e) {
        this.f61574a.f61560b.add(abstractC22152e);
    }

    @Override // p193e.p1432d.p1441d.AbstractC22153f
    /* renamed from: b */
    public void mo8507b(InputStream inputStream) throws IOException, C22166b {
        this.f61574a.m8527o(inputStream);
    }
}
