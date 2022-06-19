package p193e.p1512i.p1516b.p1533u2;

import android.content.SharedPreferences;
import com.criteo.publisher.logging.RemoteLogRecords;
import com.tenor.android.core.constant.StringConstant;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1531s2.C23087j;
import p193e.p1512i.p1516b.p1531s2.C23088k;
import p193e.p1512i.p1516b.p1531s2.C23089l;
/* renamed from: e.i.b.u2.x */
/* loaded from: classes-dex2jar.jar:e/i/b/u2/x.class */
public class C23132x {

    /* renamed from: a */
    public final C23021h f64079a;

    /* renamed from: b */
    public volatile AbstractC23118d0 f64080b;

    /* renamed from: c */
    public final SharedPreferences f64081c;

    /* renamed from: d */
    public final C23087j f64082d;

    /* renamed from: e.i.b.u2.x$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/u2/x$a.class */
    public static class C23133a {

        /* renamed from: a */
        public static final RemoteLogRecords.RemoteLogLevel f64083a = RemoteLogRecords.RemoteLogLevel.WARNING;
    }

    public C23132x() {
        this.f64079a = C23023i.m7583a(C23132x.class);
        this.f64081c = null;
        this.f64082d = null;
        this.f64080b = AbstractC23118d0.m7527a();
    }

    public C23132x(SharedPreferences sharedPreferences, C23087j c23087j) {
        String str;
        this.f64079a = C23023i.m7583a(C23132x.class);
        this.f64081c = sharedPreferences;
        this.f64082d = c23087j;
        AbstractC23118d0 m7527a = AbstractC23118d0.m7527a();
        AbstractC23118d0 abstractC23118d0 = m7527a;
        if (sharedPreferences != null) {
            if (c23087j == null) {
                abstractC23118d0 = m7527a;
            } else {
                try {
                    str = sharedPreferences.getString("CriteoCachedConfig", "{}");
                } catch (ClassCastException e) {
                    C23089l.m7560a(new IllegalStateException(C22128a.m8543z2("Expected a String type when reading: ", "CriteoCachedConfig"), e));
                    str = "{}";
                }
                try {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes(Charset.forName(StringConstant.UTF8)));
                    AbstractC23118d0 abstractC23118d02 = (AbstractC23118d0) this.f64082d.m7563a(AbstractC23118d0.class, byteArrayInputStream);
                    byteArrayInputStream.close();
                    abstractC23118d0 = m7470a(m7527a, abstractC23118d02);
                } catch (IOException e2) {
                    this.f64079a.m7586a(new C23019f(3, "Couldn't read cached values", e2, null));
                    abstractC23118d0 = m7527a;
                }
            }
        }
        this.f64080b = abstractC23118d0;
    }

    /* renamed from: a */
    public final AbstractC23118d0 m7470a(AbstractC23118d0 abstractC23118d0, AbstractC23118d0 abstractC23118d02) {
        return AbstractC23118d0.m7526b((Boolean) C23088k.m7561a(abstractC23118d02.mo7511h(), abstractC23118d0.mo7511h()), (String) C23088k.m7561a(abstractC23118d02.mo7513f(), abstractC23118d0.mo7513f()), (String) C23088k.m7561a(abstractC23118d02.mo7514e(), abstractC23118d0.mo7514e()), (String) C23088k.m7561a(abstractC23118d02.mo7516c(), abstractC23118d0.mo7516c()), (String) C23088k.m7561a(abstractC23118d02.mo7515d(), abstractC23118d0.mo7515d()), (Boolean) C23088k.m7561a(abstractC23118d02.mo7512g(), abstractC23118d0.mo7512g()), (Boolean) C23088k.m7561a(abstractC23118d02.mo7510i(), abstractC23118d0.mo7510i()), (Integer) C23088k.m7561a(abstractC23118d02.mo7509j(), abstractC23118d0.mo7509j()), (Boolean) C23088k.m7561a(abstractC23118d02.mo7508k(), abstractC23118d0.mo7508k()), (RemoteLogRecords.RemoteLogLevel) C23088k.m7561a(abstractC23118d02.mo7507l(), abstractC23118d0.mo7507l()));
    }
}
