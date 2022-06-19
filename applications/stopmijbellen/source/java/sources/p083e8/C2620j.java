package p083e8;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import java.io.InputStream;
import p148k7.AbstractC3360m;
import p170m7.AbstractC3656d;
import p170m7.AbstractFutureC3655c;
import p181n7.C3759h;
import p244t7.C4425c;
import p277w7.AbstractC4768q;
import p277w7.C4749e;
/* renamed from: e8.j */
/* loaded from: classes2-dex2jar.jar:e8/j.class */
public class C2620j extends C2624l {

    /* renamed from: e8.j$a */
    /* loaded from: classes2-dex2jar.jar:e8/j$a.class */
    public class RunnableC2621a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C4749e f9051a;

        /* renamed from: b */
        public final /* synthetic */ C3759h f9052b;

        /* renamed from: c */
        public final /* synthetic */ C2617g f9053c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC3656d f9054d;

        public RunnableC2621a(C2620j c2620j, C4749e c4749e, C3759h c3759h, C2617g c2617g, AbstractC3656d abstractC3656d) {
            this.f9051a = c4749e;
            this.f9052b = c3759h;
            this.f9053c = c2617g;
            this.f9054d = abstractC3656d;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C2622b m3383d = C2620j.m3383d(this.f9051a.f14642g, this.f9052b.f12186c.toString());
                InputStream openRawResource = m3383d.f9055a.openRawResource(m3383d.f9056b);
                if (openRawResource == null) {
                    throw new Exception("Unable to load content stream");
                }
                int available = openRawResource.available();
                C4425c c4425c = new C4425c(this.f9051a.f14636a.f12125d, openRawResource);
                this.f9053c.m1914p(null, c4425c, null);
                this.f9054d.mo99a(null, new AbstractC4768q.C4769a(c4425c, available, 2, null, null));
            } catch (Exception e) {
                this.f9053c.m1914p(e, null, null);
                this.f9054d.mo99a(e, null);
            }
        }
    }

    /* renamed from: e8.j$b */
    /* loaded from: classes2-dex2jar.jar:e8/j$b.class */
    public static class C2622b {

        /* renamed from: a */
        public Resources f9055a;

        /* renamed from: b */
        public int f9056b;

        public C2622b(RunnableC2619i runnableC2619i) {
        }
    }

    /* renamed from: d */
    public static C2622b m3383d(Context context, String str) throws Exception {
        int i;
        Uri parse = Uri.parse(str);
        if (parse.getPathSegments() != null) {
            String authority = parse.getAuthority();
            Resources resources = context.createPackageContext(authority, 0).getResources();
            if (parse.getPathSegments().size() == 1) {
                i = Integer.valueOf(parse.getPathSegments().get(0)).intValue();
            } else if (parse.getPathSegments().size() != 2) {
                throw new IllegalArgumentException("uri is not a valid resource uri");
            } else {
                i = resources.getIdentifier(parse.getPathSegments().get(1), parse.getPathSegments().get(0), authority);
                if (i == 0) {
                    throw new IllegalArgumentException("resource not found in given package");
                }
            }
            C2622b c2622b = new C2622b(null);
            c2622b.f9055a = resources;
            c2622b.f9056b = i;
            return c2622b;
        }
        throw new IllegalArgumentException("uri is not a valid resource uri");
    }

    @Override // p083e8.C2623k, p277w7.AbstractC4768q
    /* renamed from: c */
    public AbstractFutureC3655c<AbstractC3360m> mo485c(C4749e c4749e, C3759h c3759h, AbstractC3656d<AbstractC4768q.C4769a> abstractC3656d) {
        if (c3759h.f12186c.getScheme() == null || !c3759h.f12186c.getScheme().equals("android.resource")) {
            return null;
        }
        C2617g c2617g = new C2617g();
        c4749e.f14636a.f12125d.m2357i(new RunnableC2621a(this, c4749e, c3759h, c2617g, abstractC3656d), 0L);
        return c2617g;
    }
}
