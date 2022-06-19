package p193e.p1512i.p1516b.p1522i2;

import android.content.Context;
import com.huawei.hms.framework.common.ContainerUtils;
import com.tenor.android.core.constant.StringConstant;
import java.io.InputStream;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.AbstractRunnableC22929c3;
import p193e.p1512i.p1516b.p1523l2.C22978b;
import p193e.p1512i.p1516b.p1523l2.p1524c.AbstractC22979a;
import p193e.p1512i.p1516b.p1523l2.p1524c.AbstractC22980c;
import p193e.p1512i.p1516b.p1526p1.C23006a;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1531s2.C23073b;
import p193e.p1512i.p1516b.p1533u2.C23134y;
/* renamed from: e.i.b.i2.a */
/* loaded from: classes-dex2jar.jar:e/i/b/i2/a.class */
public class C22959a extends AbstractRunnableC22929c3 {

    /* renamed from: c */
    public final C23021h f63655c = C23023i.m7583a(C22959a.class);

    /* renamed from: d */
    public final Context f63656d;

    /* renamed from: e */
    public final C23006a f63657e;

    /* renamed from: f */
    public final C23073b f63658f;

    /* renamed from: g */
    public final C22967g f63659g;

    /* renamed from: h */
    public final C23134y f63660h;

    /* renamed from: i */
    public final C22978b f63661i;

    /* renamed from: j */
    public final String f63662j;

    public C22959a(Context context, C23006a c23006a, C23073b c23073b, C22967g c22967g, C23134y c23134y, C22978b c22978b, String str) {
        this.f63656d = context;
        this.f63657e = c23006a;
        this.f63658f = c23073b;
        this.f63659g = c22967g;
        this.f63660h = c23134y;
        this.f63661i = c22978b;
        this.f63662j = str;
    }

    @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
    /* renamed from: a */
    public void mo7379a() throws Throwable {
        boolean z = this.f63658f.m7567c().f63900b;
        String m7568b = this.f63658f.m7568b();
        String packageName = this.f63656d.getPackageName();
        String str = this.f63660h.mo7427a().get();
        C22967g c22967g = this.f63659g;
        String str2 = this.f63662j;
        AbstractC22980c m7600a = this.f63661i.f63708d.m7600a();
        String str3 = m7600a == null ? null : ((AbstractC22979a) m7600a).f63709a;
        Objects.requireNonNull(c22967g);
        HashMap hashMap = new HashMap();
        hashMap.put("appId", packageName);
        if (m7568b != null) {
            hashMap.put("gaid", m7568b);
        }
        hashMap.put("eventType", str2);
        hashMap.put("limitedAdTracking", String.valueOf(z ? 1 : 0));
        if (str3 != null) {
            hashMap.put("gdpr_consent", str3);
        }
        StringBuilder m8720E = C22128a.m8720E("/appevent/v1/", 2379, "?");
        StringBuilder sb = new StringBuilder();
        try {
            for (Map.Entry entry : hashMap.entrySet()) {
                sb.append(URLEncoder.encode((String) entry.getKey(), Charset.forName(StringConstant.UTF8).name()));
                sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
                sb.append(URLEncoder.encode((String) entry.getValue(), Charset.forName(StringConstant.UTF8).name()));
                sb.append(ContainerUtils.FIELD_DELIMITER);
            }
        } catch (Exception e) {
            c22967g.f63688a.m7586a(new C23019f(3, "Impossible to encode params string", e, null));
        }
        m8720E.append(sb.length() > 0 ? sb.substring(0, sb.length() - 1) : sb.toString());
        String sb2 = m8720E.toString();
        StringBuilder sb3 = new StringBuilder();
        Objects.requireNonNull(c22967g.f63689b);
        sb3.append("https://gum.criteo.com");
        sb3.append(sb2);
        InputStream m7610b = C22967g.m7610b(c22967g.m7609c(new URL(sb3.toString()), str, "GET"));
        try {
            String m2354g = C26232y.m2354g(m7610b);
            JSONObject jSONObject = C26232y.m2338k(m2354g) ? new JSONObject() : new JSONObject(m2354g);
            if (m7610b != null) {
                m7610b.close();
            }
            this.f63655c.m7584c("App event response: %s", jSONObject);
            if (jSONObject.has("throttleSec")) {
                C23006a c23006a = this.f63657e;
                c23006a.f63764h.set(c23006a.f63759c.mo7355a() + (jSONObject.optInt("throttleSec", 0) * 1000));
                return;
            }
            C23006a c23006a2 = this.f63657e;
            c23006a2.f63764h.set(c23006a2.f63759c.mo7355a() + 0);
        } catch (Throwable th) {
            if (m7610b != null) {
                try {
                    m7610b.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
