package com.squareup.picasso;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
/* renamed from: com.squareup.picasso.a0 */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/a0.class */
class C0171a0 {

    /* renamed from: a */
    final HandlerThread f292a;

    /* renamed from: b */
    final AbstractC0182d f293b;

    /* renamed from: c */
    final Handler f294c;

    /* renamed from: d */
    long f295d;

    /* renamed from: e */
    long f296e;

    /* renamed from: f */
    long f297f;

    /* renamed from: g */
    long f298g;

    /* renamed from: h */
    long f299h;

    /* renamed from: i */
    long f300i;

    /* renamed from: j */
    long f301j;

    /* renamed from: k */
    long f302k;

    /* renamed from: l */
    int f303l;

    /* renamed from: m */
    int f304m;

    /* renamed from: n */
    int f305n;

    /* renamed from: com.squareup.picasso.a0$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/a0$a.class */
    private static class HandlerC0172a extends Handler {

        /* renamed from: a */
        private final C0171a0 f306a;

        /* renamed from: com.squareup.picasso.a0$a$a */
        /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/a0$a$a.class */
        class RunnableC0173a implements Runnable {

            /* renamed from: f */
            final /* synthetic */ Message f307f;

            RunnableC0173a(HandlerC0172a aVar, Message message) {
                this.f307f = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new AssertionError("Unhandled stats message." + this.f307f.what);
            }
        }

        HandlerC0172a(Looper looper, C0171a0 a0Var) {
            super(looper);
            this.f306a = a0Var;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                this.f306a.m832j();
            } else if (i == 1) {
                this.f306a.m831k();
            } else if (i == 2) {
                this.f306a.m834h(message.arg1);
            } else if (i == 3) {
                this.f306a.m833i(message.arg1);
            } else if (i != 4) {
                Picasso.HANDLER.post(new RunnableC0173a(this, message));
            } else {
                this.f306a.m830l((Long) message.obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0171a0(AbstractC0182d dVar) {
        this.f293b = dVar;
        HandlerThread handlerThread = new HandlerThread("Picasso-Stats", 10);
        this.f292a = handlerThread;
        handlerThread.start();
        C0185f0.m786h(handlerThread.getLooper());
        this.f294c = new HandlerC0172a(handlerThread.getLooper(), this);
    }

    /* renamed from: g */
    private static long m835g(int i, long j) {
        return j / i;
    }

    /* renamed from: m */
    private void m829m(Bitmap bitmap, int i) {
        int i2 = C0185f0.m785i(bitmap);
        Handler handler = this.f294c;
        handler.sendMessage(handler.obtainMessage(i, i2, 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public C0174b0 m841a() {
        return new C0174b0(this.f293b.m797a(), this.f293b.size(), this.f295d, this.f296e, this.f297f, this.f298g, this.f299h, this.f300i, this.f301j, this.f302k, this.f303l, this.f304m, this.f305n, System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m840b(Bitmap bitmap) {
        m829m(bitmap, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m839c(Bitmap bitmap) {
        m829m(bitmap, 3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m838d() {
        this.f294c.sendEmptyMessage(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m837e() {
        this.f294c.sendEmptyMessage(1);
    }

    /* renamed from: f */
    void m836f(long j) {
        Handler handler = this.f294c;
        handler.sendMessage(handler.obtainMessage(4, Long.valueOf(j)));
    }

    /* renamed from: h */
    void m834h(long j) {
        int i = this.f304m + 1;
        this.f304m = i;
        long j2 = this.f298g + j;
        this.f298g = j2;
        this.f301j = m835g(i, j2);
    }

    /* renamed from: i */
    void m833i(long j) {
        this.f305n++;
        long j2 = this.f299h + j;
        this.f299h = j2;
        this.f302k = m835g(this.f304m, j2);
    }

    /* renamed from: j */
    void m832j() {
        this.f295d++;
    }

    /* renamed from: k */
    void m831k() {
        this.f296e++;
    }

    /* renamed from: l */
    void m830l(Long l) {
        this.f303l++;
        long longValue = this.f297f + l.longValue();
        this.f297f = longValue;
        this.f300i = m835g(this.f303l, longValue);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public void m828n() {
        this.f292a.quit();
    }
}
