package p193e.p1432d.p1441d;

import com.mopub.common.MoPubBrowser;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p193e.p1432d.p1441d.p1442p.C22166b;
/* renamed from: e.d.d.l */
/* loaded from: classes-dex2jar.jar:e/d/d/l.class */
public class C22159l extends AbstractC22153f {

    /* renamed from: b */
    public static final Set<String> f61577b = Collections.unmodifiableSet(new HashSet(Arrays.asList("BEGIN", "END", "VERSION", "SOURCE", "KIND", "FN", "N", "NICKNAME", "PHOTO", "BDAY", "ANNIVERSARY", "GENDER", "ADR", "TEL", "EMAIL", "IMPP", "LANG", "TZ", "GEO", "TITLE", "ROLE", "LOGO", "ORG", "MEMBER", "RELATED", "CATEGORIES", "NOTE", "PRODID", "REV", "SOUND", "UID", "CLIENTPIDMAP", MoPubBrowser.DESTINATION_URL_KEY, "KEY", "FBURL", "CALENDRURI", "CALURI", "XML")));

    /* renamed from: a */
    public final i f61578a = new i();

    static {
        Collections.unmodifiableSet(new HashSet(Arrays.asList("8BIT", "B")));
    }

    @Override // p193e.p1432d.p1441d.AbstractC22153f
    /* renamed from: a */
    public void mo8508a(AbstractC22152e abstractC22152e) {
        this.f61578a.f61560b.add(abstractC22152e);
    }

    @Override // p193e.p1432d.p1441d.AbstractC22153f
    /* renamed from: b */
    public void mo8507b(InputStream inputStream) throws IOException, C22166b {
        this.f61578a.m8527o(inputStream);
    }
}
