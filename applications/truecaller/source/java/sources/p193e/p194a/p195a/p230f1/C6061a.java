package p193e.p194a.p195a.p230f1;

import android.content.ContentValues;
import android.os.Handler;
import android.os.Looper;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1053m0.p1058d1.AbstractC18091a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.p231g.AbstractC6233m;
import s1.u.i;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.f1.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/f1/a.class */
public final class C6061a implements AbstractC18091a {

    /* renamed from: a */
    public final Handler f20125a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public final Runnable f20126b = new RunnableC6062a();

    /* renamed from: c */
    public final a<AbstractC19854f<AbstractC6233m>> f20127c;

    /* renamed from: e.a.a.f1.a$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/f1/a$a.class */
    public static final class RunnableC6062a implements Runnable {
        public RunnableC6062a() {
            C6061a.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ((AbstractC6233m) ((AbstractC19854f) C6061a.this.f20127c.get()).mo11854a()).mo31705V(false, i.y0(5));
        }
    }

    @Inject
    public C6061a(a<AbstractC19854f<AbstractC6233m>> aVar) {
        l.e(aVar, "messagesStorage");
        this.f20127c = aVar;
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    @Override // p193e.p194a.p1053m0.p1058d1.AbstractC18091a
    /* renamed from: a */
    public void mo15495a(ContentValues contentValues) {
        Long asLong;
        char longValue = (contentValues == null || (asLong = contentValues.getAsLong("timestamp")) == null) ? (char) 0 : asLong.longValue();
        if (longValue > 0) {
            ((AbstractC6233m) ((AbstractC19854f) this.f20127c.get()).mo11854a()).mo31695d(5, new b(longValue), false);
            return;
        }
        this.f20125a.removeCallbacks(this.f20126b);
        this.f20125a.postDelayed(this.f20126b, 300L);
    }
}
