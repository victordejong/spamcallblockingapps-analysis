package p193e.p1512i.p1516b.p1518b2;

import com.tenor.android.core.constant.StringConstant;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1519d2.EnumC22933a;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1531s2.C23090m;
import p193e.p1512i.p1516b.p1531s2.EnumC23072a;
import p193e.p1512i.p1516b.p1533u2.C23131w;
/* renamed from: e.i.b.b2.e */
/* loaded from: classes-dex2jar.jar:e/i/b/b2/e.class */
public class C22923e implements AbstractC22922d {

    /* renamed from: b */
    public static final List<String> f63595b = Arrays.asList("crt_cpm", "crt_displayUrl", "crt_size");

    /* renamed from: a */
    public final C23021h f63596a = C23023i.m7583a(C22923e.class);

    @Override // p193e.p1512i.p1516b.p1518b2.AbstractC22922d
    /* renamed from: a */
    public EnumC22933a mo7626a() {
        return EnumC22933a.MOPUB_APP_BIDDING;
    }

    @Override // p193e.p1512i.p1516b.p1518b2.AbstractC22922d
    /* renamed from: a */
    public void mo7625a(Object obj) {
        String str;
        if (mo7624b(obj) && (str = (String) C23090m.m7559a(obj, "getKeywords", new Object[0])) != null) {
            StringBuilder sb = new StringBuilder();
            String[] split = str.split(",");
            int length = split.length;
            int i = 0;
            while (true) {
                boolean z = true;
                if (i >= length) {
                    C23090m.m7559a(obj, "setKeywords", sb.toString().replaceAll(",$", ""));
                    return;
                }
                String str2 = split[i];
                Iterator<String> it = f63595b.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    if (str2.startsWith(it.next() + StringConstant.COLON)) {
                        break;
                    }
                }
                if (!z) {
                    sb.append(str2);
                    sb.append(",");
                }
                i++;
            }
        }
    }

    @Override // p193e.p1512i.p1516b.p1518b2.AbstractC22922d
    /* renamed from: b */
    public boolean mo7624b(Object obj) {
        return C23090m.m7558b(obj, "com.mopub.mobileads.MoPubView") || C23090m.m7558b(obj, "com.mopub.mobileads.MoPubInterstitial");
    }

    @Override // p193e.p1512i.p1516b.p1518b2.AbstractC22922d
    /* renamed from: c */
    public void mo7623c(Object obj, EnumC23072a enumC23072a, C23131w c23131w) {
        String str;
        if (!mo7624b(obj)) {
            return;
        }
        StringBuilder m8696K = C22128a.m8696K("crt_cpm", StringConstant.COLON);
        m8696K.append(c23131w.m7483b());
        m8696K.append(",");
        m8696K.append("crt_displayUrl");
        m8696K.append(StringConstant.COLON);
        m8696K.append(c23131w.m7479f());
        if (enumC23072a == EnumC23072a.CRITEO_BANNER) {
            m8696K.append(",");
            m8696K.append("crt_size");
            m8696K.append(StringConstant.COLON);
            m8696K.append(c23131w.m7473l());
            m8696K.append("x");
            m8696K.append(c23131w.m7478g());
        }
        Object m7559a = C23090m.m7559a(obj, "getKeywords", new Object[0]);
        if (m7559a != null) {
            str = m7559a + "," + m8696K.toString();
        } else {
            str = m8696K.toString();
        }
        C23090m.m7559a(obj, "setKeywords", str);
        this.f63596a.m7586a(C22915a.m7630a(EnumC22933a.MOPUB_APP_BIDDING, m8696K.toString()));
    }
}
