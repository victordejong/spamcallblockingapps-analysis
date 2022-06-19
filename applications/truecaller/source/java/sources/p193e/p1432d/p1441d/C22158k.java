package p193e.p1432d.p1441d;

import com.mopub.common.MoPubBrowser;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p193e.p1432d.p1441d.p1442p.C22166b;
/* renamed from: e.d.d.k */
/* loaded from: classes-dex2jar.jar:e/d/d/k.class */
public class C22158k extends AbstractC22153f {

    /* renamed from: b */
    public static final Set<String> f61575b = Collections.unmodifiableSet(new HashSet(Arrays.asList("BEGIN", "END", "LOGO", "PHOTO", "LABEL", "FN", "TITLE", "SOUND", "VERSION", "TEL", "EMAIL", "TZ", "GEO", "NOTE", MoPubBrowser.DESTINATION_URL_KEY, "BDAY", "ROLE", "REV", "UID", "KEY", "MAILER", "NAME", "PROFILE", "SOURCE", "NICKNAME", "CLASS", "SORT-STRING", "CATEGORIES", "PRODID", "IMPP")));

    /* renamed from: a */
    public final C22156h f61576a = new C22156h();

    static {
        Collections.unmodifiableSet(new HashSet(Arrays.asList("7BIT", "8BIT", "BASE64", "B")));
    }

    @Override // p193e.p1432d.p1441d.AbstractC22153f
    /* renamed from: a */
    public void mo8508a(AbstractC22152e abstractC22152e) {
        this.f61576a.f61560b.add(abstractC22152e);
    }

    @Override // p193e.p1432d.p1441d.AbstractC22153f
    /* renamed from: b */
    public void mo8507b(InputStream inputStream) throws IOException, C22166b {
        this.f61576a.m8527o(inputStream);
    }
}
