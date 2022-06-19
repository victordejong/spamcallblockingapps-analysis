package p193e.p194a.p1129p5;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.p5.k0 */
/* loaded from: classes15-dex2jar.jar:e/a/p5/k0.class */
public final class C19240k0 implements AbstractC19237j0 {

    /* renamed from: a */
    public final g f53607a = C25225a.m3978P1(C19242b.f53613b);

    /* renamed from: b */
    public final Context f53608b;

    /* renamed from: e.a.p5.k0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/k0$a.class */
    public static final class RunnableC19241a implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ int f53610b;

        /* renamed from: c */
        public final /* synthetic */ CharSequence f53611c;

        /* renamed from: d */
        public final /* synthetic */ int f53612d;

        public RunnableC19241a(int i, CharSequence charSequence, int i2) {
            C19240k0.this = r4;
            this.f53610b = i;
            this.f53611c = charSequence;
            this.f53612d = i2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C19291g.m13592R1(C19240k0.this.f53608b, this.f53610b, this.f53611c, this.f53612d);
        }
    }

    /* renamed from: e.a.p5.k0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/p5/k0$b.class */
    public static final class C19242b extends m implements a<Handler> {

        /* renamed from: b */
        public static final C19242b f53613b = new C19242b();

        public C19242b() {
            super(0);
        }

        public Object invoke() {
            return new Handler(Looper.getMainLooper());
        }
    }

    @Inject
    public C19240k0(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f53608b = context;
    }

    @Override // p193e.p194a.p1129p5.AbstractC19237j0
    /* renamed from: a */
    public void mo13754a(int i, CharSequence charSequence, int i2) {
        if (l.a(Looper.myLooper(), Looper.getMainLooper())) {
            C19291g.m13592R1(this.f53608b, i, charSequence, i2);
        } else {
            ((Handler) this.f53607a.getValue()).post(new RunnableC19241a(i, charSequence, i2));
        }
    }
}
