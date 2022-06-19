package p083e8;

import android.content.Context;
import android.net.Uri;
import java.io.InputStream;
import java.util.Objects;
import p148k7.AbstractC3360m;
import p170m7.AbstractC3656d;
import p170m7.AbstractFutureC3655c;
import p181n7.C3759h;
import p244t7.C4425c;
import p277w7.AbstractC4768q;
import p277w7.C4749e;
/* renamed from: e8.a */
/* loaded from: classes2-dex2jar.jar:e8/a.class */
public class C2606a extends C2624l {

    /* renamed from: e8.a$a */
    /* loaded from: classes2-dex2jar.jar:e8/a$a.class */
    public class RunnableC2607a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C4749e f9037a;

        /* renamed from: b */
        public final /* synthetic */ C3759h f9038b;

        /* renamed from: c */
        public final /* synthetic */ C2617g f9039c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC3656d f9040d;

        public RunnableC2607a(C4749e c4749e, C3759h c3759h, C2617g c2617g, AbstractC3656d abstractC3656d) {
            C2606a.this = r4;
            this.f9037a = c4749e;
            this.f9038b = c3759h;
            this.f9039c = c2617g;
            this.f9040d = abstractC3656d;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C2606a c2606a = C2606a.this;
                Context context = this.f9037a.f14642g;
                String uri = this.f9038b.f12186c.toString();
                Objects.requireNonNull(c2606a);
                InputStream open = context.getAssets().open(Uri.parse(uri).getPath().replaceFirst("^/android_asset/", ""));
                if (open == null) {
                    throw new Exception("Unable to load content stream");
                }
                int available = open.available();
                C4425c c4425c = new C4425c(this.f9037a.f14636a.f12125d, open);
                this.f9039c.m1914p(null, c4425c, null);
                this.f9040d.mo99a(null, new AbstractC4768q.C4769a(c4425c, available, 2, null, null));
            } catch (Exception e) {
                this.f9039c.m1914p(e, null, null);
                this.f9040d.mo99a(e, null);
            }
        }
    }

    @Override // p083e8.C2623k, p277w7.AbstractC4768q
    /* renamed from: c */
    public AbstractFutureC3655c<AbstractC3360m> mo485c(C4749e c4749e, C3759h c3759h, AbstractC3656d<AbstractC4768q.C4769a> abstractC3656d) {
        if (c3759h.f12186c.getScheme() == null || !c3759h.f12186c.toString().startsWith("file:///android_asset/")) {
            return null;
        }
        C2617g c2617g = new C2617g();
        c4749e.f14636a.f12125d.m2357i(new RunnableC2607a(c4749e, c3759h, c2617g, abstractC3656d), 0L);
        return c2617g;
    }
}
