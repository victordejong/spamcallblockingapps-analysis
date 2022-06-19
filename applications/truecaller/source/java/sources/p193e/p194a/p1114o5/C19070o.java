package p193e.p194a.p1114o5;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.CallLog;
import com.razorpay.AnalyticsConstants;
import com.truecaller.TrueApp;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p372b0.p413i.AbstractC8449b;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.o5.o */
/* loaded from: classes15-dex2jar.jar:e/a/o5/o.class */
public final class C19070o extends AbstractC8449b {

    /* renamed from: f */
    public static p1 f53266f;

    /* renamed from: d */
    public final AbstractC19854f<AbstractC17348c> f53268d;

    /* renamed from: g */
    public static final C19071a f53267g = new C19071a(null);

    /* renamed from: e */
    public static final Uri f53265e = CallLog.Calls.CONTENT_URI;

    /* renamed from: e.a.o5.o$a */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/o$a.class */
    public static final class C19071a {

        @e(c = "com.truecaller.util.CallLogObserver$Companion$registerOnce$1", f = "CallLogObserver.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.o5.o$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/o5/o$a$a.class */
        public static final class C19072a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public final /* synthetic */ TrueApp f53269e;

            /* renamed from: f */
            public final /* synthetic */ Handler f53270f;

            /* renamed from: g */
            public final /* synthetic */ Context f53271g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C19072a(TrueApp trueApp, Handler handler, Context context, d dVar) {
                super(2, dVar);
                this.f53269e = trueApp;
                this.f53270f = handler;
                this.f53271g = context;
            }

            /* renamed from: i */
            public final d<s> m14149i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C19072a(this.f53269e, this.f53270f, this.f53271g, dVar);
            }

            /* renamed from: k */
            public final Object m14148k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                TrueApp trueApp = this.f53269e;
                Handler handler = this.f53270f;
                Context context = this.f53271g;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                AbstractC19854f<AbstractC17348c> mo12471Z0 = trueApp.mo10154s().mo12471Z0();
                l.d(mo12471Z0, "app.objectsGraph.callHistoryManager()");
                try {
                    context.getContentResolver().registerContentObserver(C19070o.f53265e, true, new C19070o(handler, mo12471Z0, null));
                } catch (SecurityException e) {
                }
                return sVar;
            }

            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:6:0x0038 -> B:4:0x0034). Please submit an issue!!! */
            /* renamed from: s */
            public final Object m14147s(Object obj) {
                C25225a.m3932a3(obj);
                AbstractC19854f<AbstractC17348c> mo12471Z0 = this.f53269e.mo10154s().mo12471Z0();
                l.d(mo12471Z0, "app.objectsGraph.callHistoryManager()");
                try {
                    this.f53271g.getContentResolver().registerContentObserver(C19070o.f53265e, true, new C19070o(this.f53270f, mo12471Z0, null));
                } catch (SecurityException e) {
                }
                return s.a;
            }
        }

        public C19071a(f fVar) {
        }

        /* renamed from: a */
        public final void m14150a(Context context) {
            synchronized (this) {
                l.e(context, AnalyticsConstants.CONTEXT);
                if (C19070o.f53266f == null) {
                    if (!(C26467a.m1801a(context, "android.permission.READ_CALL_LOG") != 0)) {
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext == null) {
                            throw new NullPointerException("null cannot be cast to non-null type com.truecaller.TrueApp");
                        }
                        TrueApp trueApp = (TrueApp) applicationContext;
                        s1.w.f mo12315k6 = trueApp.mo10154s().mo12315k6();
                        l.d(mo12315k6, "app.objectsGraph.asyncIoCoroutineContext()");
                        C19070o.f53266f = s1.a.a.a.v0.f.d.w2(h1.a, mo12315k6, (j0) null, new C19072a(trueApp, new Handler(Looper.getMainLooper()), context, null), 2, (Object) null);
                    }
                }
            }
        }
    }

    public C19070o(Handler handler, AbstractC19854f abstractC19854f, f fVar) {
        super(handler, 300L);
        this.f53268d = abstractC19854f;
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8449b
    /* renamed from: a */
    public void mo9046a() {
        this.f53268d.mo11854a().mo16223y();
    }
}
