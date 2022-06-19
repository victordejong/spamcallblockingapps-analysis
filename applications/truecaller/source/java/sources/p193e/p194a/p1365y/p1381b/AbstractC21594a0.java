package p193e.p194a.p1365y.p1381b;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import s1.z.c.l;
/* renamed from: e.a.y.b.a0 */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/a0.class */
public abstract class AbstractC21594a0<T> {

    /* renamed from: a */
    public final List<T> f60249a;

    /* renamed from: b */
    public final AbstractC21626w f60250b;

    /* renamed from: c */
    public final int f60251c;

    public AbstractC21594a0(AbstractC21626w abstractC21626w, int i) {
        l.e(abstractC21626w, "preferenceUtil");
        this.f60250b = abstractC21626w;
        this.f60251c = i;
        this.f60249a = new ArrayList(i);
    }

    /* renamed from: e */
    public final int m9395e() {
        return this.f60249a.size();
    }

    /* renamed from: f */
    public final void m9394f(String str) {
        l.e(str, AnalyticsConstants.KEY);
        this.f60249a.clear();
        StringTokenizer stringTokenizer = new StringTokenizer(this.f60250b.getString(str, ""), StringConstant.NEW_LINE);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            l.d(nextToken, "tokenizer.nextToken()");
            T mo9337i = mo9337i(nextToken);
            this.f60249a.add(this.f60249a.size(), mo9337i);
        }
    }

    /* renamed from: g */
    public final void m9393g(T t) {
        boolean remove = this.f60249a.remove(t);
        int m9395e = m9395e();
        int i = this.f60251c;
        if (m9395e >= i && !remove) {
            this.f60249a.remove(i - 1);
        }
        this.f60249a.add(0, t);
    }

    /* renamed from: h */
    public final void m9392h(String str) {
        l.e(str, AnalyticsConstants.KEY);
        int m9395e = m9395e();
        if (m9395e > 0) {
            StringBuilder sb = new StringBuilder();
            int i = m9395e - 1;
            for (int i2 = 0; i2 < i; i2++) {
                sb.append(mo9336j(this.f60249a.get(i2)));
                sb.append(StringConstant.NEW_LINE);
            }
            sb.append(mo9336j(this.f60249a.get(i)));
            AbstractC21626w abstractC21626w = this.f60250b;
            String sb2 = sb.toString();
            l.d(sb2, "str.toString()");
            abstractC21626w.mo9340l(str, sb2);
        }
    }

    /* renamed from: i */
    public abstract T mo9337i(String str);

    /* renamed from: j */
    public abstract String mo9336j(T t);
}
