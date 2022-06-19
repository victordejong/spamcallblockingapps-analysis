package p083e8;

import android.net.Uri;
import com.applovin.sdk.AppLovinEventTypes;
import java.io.InputStream;
import p148k7.AbstractC3360m;
import p170m7.AbstractC3656d;
import p170m7.AbstractFutureC3655c;
import p181n7.C3759h;
import p244t7.C4425c;
import p277w7.AbstractC4768q;
import p277w7.C4749e;
/* renamed from: e8.c */
/* loaded from: classes2-dex2jar.jar:e8/c.class */
public class C2609c extends C2624l {

    /* renamed from: e8.c$a */
    /* loaded from: classes2-dex2jar.jar:e8/c$a.class */
    public class RunnableC2610a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C4749e f9042a;

        /* renamed from: b */
        public final /* synthetic */ C3759h f9043b;

        /* renamed from: c */
        public final /* synthetic */ C2617g f9044c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC3656d f9045d;

        public RunnableC2610a(C2609c c2609c, C4749e c4749e, C3759h c3759h, C2617g c2617g, AbstractC3656d abstractC3656d) {
            this.f9042a = c4749e;
            this.f9043b = c3759h;
            this.f9044c = c2617g;
            this.f9045d = abstractC3656d;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                InputStream openInputStream = this.f9042a.f14642g.getContentResolver().openInputStream(Uri.parse(this.f9043b.f12186c.toString()));
                if (openInputStream == null) {
                    throw new Exception("Unable to load content stream");
                }
                int available = openInputStream.available();
                C4425c c4425c = new C4425c(this.f9042a.f14636a.f12125d, openInputStream);
                this.f9044c.m1914p(null, c4425c, null);
                this.f9045d.mo99a(null, new AbstractC4768q.C4769a(c4425c, available, 2, null, null));
            } catch (Exception e) {
                this.f9044c.m1914p(e, null, null);
                this.f9045d.mo99a(e, null);
            }
        }
    }

    @Override // p083e8.C2623k, p277w7.AbstractC4768q
    /* renamed from: c */
    public AbstractFutureC3655c<AbstractC3360m> mo485c(C4749e c4749e, C3759h c3759h, AbstractC3656d<AbstractC4768q.C4769a> abstractC3656d) {
        if (c3759h.f12186c.getScheme() == null || !c3759h.f12186c.getScheme().startsWith(AppLovinEventTypes.USER_VIEWED_CONTENT)) {
            return null;
        }
        C2617g c2617g = new C2617g();
        c4749e.f14636a.f12125d.m2357i(new RunnableC2610a(this, c4749e, c3759h, c2617g, abstractC3656d), 0L);
        return c2617g;
    }
}
