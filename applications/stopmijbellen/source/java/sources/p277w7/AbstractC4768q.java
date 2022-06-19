package p277w7;

import android.content.Context;
import java.lang.reflect.Type;
import p033c8.AbstractC0853a;
import p148k7.AbstractC3360m;
import p170m7.AbstractC3656d;
import p170m7.AbstractFutureC3655c;
import p181n7.C3759h;
import p192o7.C3939b;
/* renamed from: w7.q */
/* loaded from: classes2-dex2jar.jar:w7/q.class */
public interface AbstractC4768q {

    /* renamed from: w7.q$a */
    /* loaded from: classes2-dex2jar.jar:w7/q$a.class */
    public static class C4769a {

        /* renamed from: a */
        public AbstractC3360m f14679a;

        /* renamed from: b */
        public long f14680b;

        /* renamed from: c */
        public int f14681c;

        /* renamed from: d */
        public C3939b f14682d;

        /* renamed from: e */
        public C3759h f14683e;

        public C4769a(AbstractC3360m abstractC3360m, long j, int i, C3939b c3939b, C3759h c3759h) {
            this.f14680b = j;
            this.f14679a = abstractC3360m;
            this.f14681c = i;
            this.f14682d = c3939b;
            this.f14683e = c3759h;
        }
    }

    /* renamed from: a */
    <T> AbstractC0853a<T> mo487a(C4749e c4749e, C3759h c3759h, Type type);

    /* renamed from: b */
    AbstractFutureC3655c<C3759h> mo486b(Context context, C4749e c4749e, C3759h c3759h);

    /* renamed from: c */
    AbstractFutureC3655c<AbstractC3360m> mo485c(C4749e c4749e, C3759h c3759h, AbstractC3656d<C4769a> abstractC3656d);
}
