package p000;

import android.os.Handler;
import androidx.media2.exoplayer.external.Format;
import p000.AbstractC1431fi;
/* renamed from: fi */
/* loaded from: classes-dex2jar.jar:fi.class */
public interface AbstractC1431fi {

    /* renamed from: fi$a */
    /* loaded from: classes-dex2jar.jar:fi$a.class */
    public static final class C1432a {

        /* renamed from: a */
        public final Handler f6632a;

        /* renamed from: b */
        public final AbstractC1431fi f6633b;

        public C1432a(Handler handler, AbstractC1431fi abstractC1431fi) {
            Handler handler2;
            if (abstractC1431fi != null) {
                it.e(handler);
                handler2 = handler;
            } else {
                handler2 = null;
            }
            this.f6632a = handler2;
            this.f6633b = abstractC1431fi;
        }

        /* renamed from: a */
        public void m1745a(int i) {
            if (this.f6633b != null) {
                this.f6632a.post(new Runnable(this, i) { // from class: ei

                    /* renamed from: a */
                    public final AbstractC1431fi.C1432a f6350a;

                    /* renamed from: b */
                    public final int f6351b;

                    {
                        this.f6350a = this;
                        this.f6351b = i;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f6350a.m1739g(this.f6351b);
                    }
                });
            }
        }

        /* renamed from: b */
        public void m1744b(int i, long j, long j2) {
            if (this.f6633b != null) {
                this.f6632a.post(new Runnable(this, i, j, j2) { // from class: ci

                    /* renamed from: a */
                    public final AbstractC1431fi.C1432a f2383a;

                    /* renamed from: b */
                    public final int f2384b;

                    /* renamed from: c */
                    public final long f2385c;

                    /* renamed from: d */
                    public final long f2386d;

                    {
                        this.f2383a = this;
                        this.f2384b = i;
                        this.f2385c = j;
                        this.f2386d = j2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f2383a.m1738h(this.f2384b, this.f2385c, this.f2386d);
                    }
                });
            }
        }

        /* renamed from: c */
        public void m1743c(String str, long j, long j2) {
            if (this.f6633b != null) {
                this.f6632a.post(new Runnable(this, str, j, j2) { // from class: ai

                    /* renamed from: a */
                    public final AbstractC1431fi.C1432a f300a;

                    /* renamed from: b */
                    public final String f301b;

                    /* renamed from: c */
                    public final long f302c;

                    /* renamed from: d */
                    public final long f303d;

                    {
                        this.f300a = this;
                        this.f301b = str;
                        this.f302c = j;
                        this.f303d = j2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f300a.m1737i(this.f301b, this.f302c, this.f303d);
                    }
                });
            }
        }

        /* renamed from: d */
        public void m1742d(yi yiVar) {
            yiVar.a();
            if (this.f6633b != null) {
                this.f6632a.post(new Runnable(this, yiVar) { // from class: di

                    /* renamed from: a */
                    public final AbstractC1431fi.C1432a f5888a;

                    /* renamed from: b */
                    public final yi f5889b;

                    {
                        this.f5888a = this;
                        this.f5889b = yiVar;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f5888a.m1736j(this.f5889b);
                    }
                });
            }
        }

        /* renamed from: e */
        public void m1741e(yi yiVar) {
            if (this.f6633b != null) {
                this.f6632a.post(new zh(this, yiVar));
            }
        }

        /* renamed from: f */
        public void m1740f(Format format) {
            if (this.f6633b != null) {
                this.f6632a.post(new Runnable(this, format) { // from class: bi

                    /* renamed from: a */
                    public final AbstractC1431fi.C1432a f1948a;

                    /* renamed from: b */
                    public final Format f1949b;

                    {
                        this.f1948a = this;
                        this.f1949b = format;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f1948a.m1734l(this.f1949b);
                    }
                });
            }
        }

        /* renamed from: g */
        public final /* synthetic */ void m1739g(int i) {
            this.f6633b.onAudioSessionId(i);
        }

        /* renamed from: h */
        public final /* synthetic */ void m1738h(int i, long j, long j2) {
            this.f6633b.onAudioSinkUnderrun(i, j, j2);
        }

        /* renamed from: i */
        public final /* synthetic */ void m1737i(String str, long j, long j2) {
            this.f6633b.onAudioDecoderInitialized(str, j, j2);
        }

        /* renamed from: j */
        public final /* synthetic */ void m1736j(yi yiVar) {
            yiVar.a();
            this.f6633b.m1747r(yiVar);
        }

        /* renamed from: k */
        public final /* synthetic */ void m1735k(yi yiVar) {
            this.f6633b.m1748i(yiVar);
        }

        /* renamed from: l */
        public final /* synthetic */ void m1734l(Format format) {
            this.f6633b.m1746u(format);
        }
    }

    /* renamed from: i */
    void m1748i(yi yiVar);

    void onAudioDecoderInitialized(String str, long j, long j2);

    void onAudioSessionId(int i);

    void onAudioSinkUnderrun(int i, long j, long j2);

    /* renamed from: r */
    void m1747r(yi yiVar);

    /* renamed from: u */
    void m1746u(Format format);
}
