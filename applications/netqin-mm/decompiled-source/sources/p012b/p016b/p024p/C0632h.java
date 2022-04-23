package p012b.p016b.p024p;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;
import p012b.p042i.p054p.AbstractC1021z;
import p012b.p042i.p054p.C0951a0;
import p012b.p042i.p054p.C1017y;
/* renamed from: b.b.p.h */
/* loaded from: classes-dex2jar.jar:b/b/p/h.class */
public class C0632h {

    /* renamed from: c */
    public Interpolator f3136c;

    /* renamed from: d */
    public AbstractC1021z f3137d;

    /* renamed from: e */
    public boolean f3138e;

    /* renamed from: b */
    public long f3135b = -1;

    /* renamed from: f */
    public final C0951a0 f3139f = new C0633a();

    /* renamed from: a */
    public final ArrayList<C1017y> f3134a = new ArrayList<>();

    /* renamed from: b.b.p.h$a */
    /* loaded from: classes-dex2jar.jar:b/b/p/h$a.class */
    public class C0633a extends C0951a0 {

        /* renamed from: a */
        public boolean f3140a = false;

        /* renamed from: b */
        public int f3141b = 0;

        public C0633a() {
        }

        /* renamed from: a */
        public void m36655a() {
            this.f3141b = 0;
            this.f3140a = false;
            C0632h.this.m36657b();
        }

        @Override // p012b.p042i.p054p.AbstractC1021z
        /* renamed from: b */
        public void mo35153b(View view) {
            int i = this.f3141b + 1;
            this.f3141b = i;
            if (i == C0632h.this.f3134a.size()) {
                AbstractC1021z zVar = C0632h.this.f3137d;
                if (zVar != null) {
                    zVar.mo35153b(null);
                }
                m36655a();
            }
        }

        @Override // p012b.p042i.p054p.C0951a0, p012b.p042i.p054p.AbstractC1021z
        /* renamed from: c */
        public void mo35152c(View view) {
            if (!this.f3140a) {
                this.f3140a = true;
                AbstractC1021z zVar = C0632h.this.f3137d;
                if (zVar != null) {
                    zVar.mo35152c(null);
                }
            }
        }
    }

    /* renamed from: a */
    public C0632h m36662a(long j) {
        if (!this.f3138e) {
            this.f3135b = j;
        }
        return this;
    }

    /* renamed from: a */
    public C0632h m36661a(Interpolator interpolator) {
        if (!this.f3138e) {
            this.f3136c = interpolator;
        }
        return this;
    }

    /* renamed from: a */
    public C0632h m36660a(C1017y yVar) {
        if (!this.f3138e) {
            this.f3134a.add(yVar);
        }
        return this;
    }

    /* renamed from: a */
    public C0632h m36659a(C1017y yVar, C1017y yVar2) {
        this.f3134a.add(yVar);
        yVar2.m35156b(yVar.m35158b());
        this.f3134a.add(yVar2);
        return this;
    }

    /* renamed from: a */
    public C0632h m36658a(AbstractC1021z zVar) {
        if (!this.f3138e) {
            this.f3137d = zVar;
        }
        return this;
    }

    /* renamed from: a */
    public void m36663a() {
        if (this.f3138e) {
            Iterator<C1017y> it = this.f3134a.iterator();
            while (it.hasNext()) {
                it.next().m35165a();
            }
            this.f3138e = false;
        }
    }

    /* renamed from: b */
    public void m36657b() {
        this.f3138e = false;
    }

    /* renamed from: c */
    public void m36656c() {
        if (!this.f3138e) {
            Iterator<C1017y> it = this.f3134a.iterator();
            while (it.hasNext()) {
                C1017y next = it.next();
                long j = this.f3135b;
                if (j >= 0) {
                    next.m35163a(j);
                }
                Interpolator interpolator = this.f3136c;
                if (interpolator != null) {
                    next.m35161a(interpolator);
                }
                if (this.f3137d != null) {
                    next.m35159a(this.f3139f);
                }
                next.m35155c();
            }
            this.f3138e = true;
        }
    }
}
