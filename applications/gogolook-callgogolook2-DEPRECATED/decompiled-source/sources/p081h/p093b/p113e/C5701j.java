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
/* renamed from: h.b.e.j */
/* loaded from: classes-dex2jar.jar:h/b/e/j.class */
public class C5701j extends AbstractC5695e {

    /* renamed from: b */
    public static final Set<String> f14294b = Collections.unmodifiableSet(new HashSet(Arrays.asList("BEGIN", "END", "LOGO", "PHOTO", "LABEL", "FN", "TITLE", "SOUND", "VERSION", "TEL", "EMAIL", "TZ", "GEO", WebvttDecoder.COMMENT_START, MoPubBrowser.DESTINATION_URL_KEY, "BDAY", "ROLE", "REV", "UID", "KEY", "MAILER", "NAME", "PROFILE", "SOURCE", "NICKNAME", "CLASS", "SORT-STRING", "CATEGORIES", "PRODID", "IMPP")));

    /* renamed from: a */
    public final C5698g f14295a;

    static {
        Collections.unmodifiableSet(new HashSet(Arrays.asList("7BIT", "8BIT", "BASE64", "B")));
    }

    public C5701j(int i) {
        this.f14295a = new C5698g(i);
    }

    /* renamed from: a */
    public void m24693a(AbstractC5694d dVar) {
        this.f14295a.m24736a(dVar);
    }

    /* renamed from: a */
    public void m24692a(InputStream inputStream) throws IOException, C5710b {
        this.f14295a.m24733a(inputStream);
    }
}
