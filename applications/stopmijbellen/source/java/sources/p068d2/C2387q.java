package p068d2;

import android.support.p012v4.media.AbstractC0081a;
/* renamed from: d2.q */
/* loaded from: classes-dex2jar.jar:d2/q.class */
public class C2387q {

    /* renamed from: a */
    public AbstractC0081a f8436a;

    /* renamed from: b */
    public AbstractC2389b f8437b;

    /* renamed from: c */
    public C2322j0 f8438c;

    /* renamed from: d */
    public C2268g f8439d;

    /* renamed from: e */
    public C2411t1 f8440e;

    /* renamed from: f */
    public int f8441f;

    /* renamed from: g */
    public String f8442g;

    /* renamed from: h */
    public String f8443h;

    /* renamed from: i */
    public final String f8444i;

    /* renamed from: j */
    public String f8445j;

    /* renamed from: k */
    public String f8446k;

    /* renamed from: l */
    public int f8447l = 1;

    /* renamed from: m */
    public boolean f8448m;

    /* renamed from: n */
    public String f8449n;

    /* renamed from: d2.q$a */
    /* loaded from: classes-dex2jar.jar:d2/q$a.class */
    public class RunnableC2388a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC0081a f8450a;

        public RunnableC2388a(AbstractC0081a abstractC0081a) {
            C2387q.this = r4;
            this.f8450a = abstractC0081a;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8450a.mo1946y(C2387q.this);
        }
    }

    /* renamed from: d2.q$b */
    /* loaded from: classes-dex2jar.jar:d2/q$b.class */
    public interface AbstractC2389b {
    }

    public C2387q(String str, AbstractC0081a abstractC0081a, String str2) {
        this.f8436a = abstractC0081a;
        this.f8444i = str2;
        this.f8442g = str;
    }

    /* renamed from: a */
    public boolean m3617a() {
        return this.f8440e != null;
    }

    /* renamed from: b */
    public void m3616b() {
        C2354k1 c2354k1;
        synchronized (this) {
            this.f8447l = 6;
            c2354k1 = this.f8437b;
            if (c2354k1 != null) {
                this.f8437b = null;
            } else {
                c2354k1 = null;
            }
        }
        if (c2354k1 != null) {
            C2230f1 c2230f1 = c2354k1.f8360a;
            int i = c2230f1.f8085W - 1;
            c2230f1.f8085W = i;
            if (i != 0) {
                return;
            }
            c2230f1.m3730d();
        }
    }

    /* renamed from: c */
    public boolean m3615c() {
        this.f8447l = 4;
        AbstractC0081a abstractC0081a = this.f8436a;
        if (abstractC0081a == null) {
            return false;
        }
        C2315i3.m3652s(new RunnableC2388a(abstractC0081a));
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0193  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m3614d() {
        /*
            Method dump skipped, instructions count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p068d2.C2387q.m3614d():boolean");
    }
}
