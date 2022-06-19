package p136j6;

import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import java.io.IOException;
import p115h6.C3013b;
import p169m6.C3652e;
import p180n6.C3729e;
import p204p9.AbstractC4097e;
import p204p9.AbstractC4100f;
import p204p9.C4084b0;
import p204p9.C4123s;
import p204p9.C4132x;
import p204p9.C4135y;
/* renamed from: j6.g */
/* loaded from: classes-dex2jar.jar:j6/g.class */
public class C3283g implements AbstractC4100f {

    /* renamed from: a */
    public final AbstractC4100f f11120a;

    /* renamed from: b */
    public final C3013b f11121b;

    /* renamed from: c */
    public final C3729e f11122c;

    /* renamed from: d */
    public final long f11123d;

    public C3283g(AbstractC4100f abstractC4100f, C3652e c3652e, C3729e c3729e, long j) {
        this.f11120a = abstractC4100f;
        this.f11121b = new C3013b(c3652e);
        this.f11123d = j;
        this.f11122c = c3729e;
    }

    /* renamed from: a */
    public void m2431a(AbstractC4097e abstractC4097e, IOException iOException) {
        C4135y c4135y = ((C4132x) abstractC4097e).f13035e;
        if (c4135y != null) {
            C4123s c4123s = c4135y.f13041a;
            if (c4123s != null) {
                this.f11121b.m2738m(c4123s.m1375q().toString());
            }
            String str = c4135y.f13042b;
            if (str != null) {
                this.f11121b.m2746c(str);
            }
        }
        this.f11121b.m2743g(this.f11123d);
        this.f11121b.m2740j(this.f11122c.m1840a());
        C3284h.m2427c(this.f11121b);
        ((C3283g) this.f11120a).m2431a(abstractC4097e, iOException);
    }

    /* renamed from: b */
    public void m2430b(AbstractC4097e abstractC4097e, C4084b0 c4084b0) throws IOException {
        FirebasePerfOkHttpClient.m4463a(c4084b0, this.f11121b, this.f11123d, this.f11122c.m1840a());
        ((C3283g) this.f11120a).m2430b(abstractC4097e, c4084b0);
    }
}
