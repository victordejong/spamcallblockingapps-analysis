package p107g9;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.support.p012v4.media.C0082b;
/* renamed from: g9.z */
/* loaded from: classes2-dex2jar.jar:g9/z.class */
public class C2971z {

    /* renamed from: a */
    public final AbstractC2928d f9988a;

    /* renamed from: b */
    public final Handler f9989b;

    /* renamed from: c */
    public long f9990c;

    /* renamed from: d */
    public long f9991d;

    /* renamed from: e */
    public long f9992e;

    /* renamed from: f */
    public long f9993f;

    /* renamed from: g */
    public long f9994g;

    /* renamed from: h */
    public long f9995h;

    /* renamed from: i */
    public long f9996i;

    /* renamed from: j */
    public long f9997j;

    /* renamed from: k */
    public int f9998k;

    /* renamed from: l */
    public int f9999l;

    /* renamed from: m */
    public int f10000m;

    /* renamed from: g9.z$a */
    /* loaded from: classes2-dex2jar.jar:g9/z$a.class */
    public static class HandlerC2972a extends Handler {

        /* renamed from: a */
        public final C2971z f10001a;

        /* renamed from: g9.z$a$a */
        /* loaded from: classes2-dex2jar.jar:g9/z$a$a.class */
        public class RunnableC2973a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Message f10002a;

            public RunnableC2973a(HandlerC2972a handlerC2972a, Message message) {
                this.f10002a = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                StringBuilder m8752j = C0082b.m8752j("Unhandled stats message.");
                m8752j.append(this.f10002a.what);
                throw new AssertionError(m8752j.toString());
            }
        }

        public HandlerC2972a(Looper looper, C2971z c2971z) {
            super(looper);
            this.f10001a = c2971z;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                this.f10001a.f9990c++;
            } else if (i == 1) {
                this.f10001a.f9991d++;
            } else if (i == 2) {
                C2971z c2971z = this.f10001a;
                long j = message.arg1;
                int i2 = c2971z.f9999l + 1;
                c2971z.f9999l = i2;
                long j2 = c2971z.f9993f + j;
                c2971z.f9993f = j2;
                c2971z.f9996i = j2 / i2;
            } else if (i == 3) {
                C2971z c2971z2 = this.f10001a;
                long j3 = message.arg1;
                c2971z2.f10000m++;
                long j4 = c2971z2.f9994g + j3;
                c2971z2.f9994g = j4;
                c2971z2.f9997j = j4 / c2971z2.f9999l;
            } else if (i != 4) {
                C2953s.f9920n.post(new RunnableC2973a(this, message));
            } else {
                C2971z c2971z3 = this.f10001a;
                Long l = (Long) message.obj;
                c2971z3.f9998k++;
                long longValue = l.longValue() + c2971z3.f9992e;
                c2971z3.f9992e = longValue;
                c2971z3.f9995h = longValue / c2971z3.f9998k;
            }
        }
    }

    public C2971z(AbstractC2928d abstractC2928d) {
        this.f9988a = abstractC2928d;
        HandlerThread handlerThread = new HandlerThread("Picasso-Stats", 10);
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        StringBuilder sb = C2929d0.f9877a;
        HandlerC2927c0 handlerC2927c0 = new HandlerC2927c0(looper);
        handlerC2927c0.sendMessageDelayed(handlerC2927c0.obtainMessage(), 1000L);
        this.f9989b = new HandlerC2972a(handlerThread.getLooper(), this);
    }

    /* renamed from: a */
    public C2917a0 m2798a() {
        return new C2917a0(((C2945n) this.f9988a).f9904a.maxSize(), ((C2945n) this.f9988a).f9904a.size(), this.f9990c, this.f9991d, this.f9992e, this.f9993f, this.f9994g, this.f9995h, this.f9996i, this.f9997j, this.f9998k, this.f9999l, this.f10000m, System.currentTimeMillis());
    }
}
