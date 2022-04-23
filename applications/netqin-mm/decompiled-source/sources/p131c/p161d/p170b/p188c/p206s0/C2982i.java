package p131c.p161d.p170b.p188c.p206s0;

import android.media.AudioAttributes;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.s0.i */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/i.class */
public final class C2982i {

    /* renamed from: f */
    public static final C2982i f10727f = new C2984b().m28299a();

    /* renamed from: a */
    public final int f10728a;

    /* renamed from: b */
    public final int f10729b;

    /* renamed from: c */
    public final int f10730c;

    /* renamed from: d */
    public final int f10731d;

    /* renamed from: e */
    public AudioAttributes f10732e;

    /* renamed from: c.d.b.c.s0.i$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/s0/i$b.class */
    public static final class C2984b {

        /* renamed from: a */
        public int f10733a = 0;

        /* renamed from: b */
        public int f10734b = 0;

        /* renamed from: c */
        public int f10735c = 1;

        /* renamed from: d */
        public int f10736d = 1;

        /* renamed from: a */
        public C2982i m28299a() {
            return new C2982i(this.f10733a, this.f10734b, this.f10735c, this.f10736d);
        }
    }

    public C2982i(int i, int i2, int i3, int i4) {
        this.f10728a = i;
        this.f10729b = i2;
        this.f10730c = i3;
        this.f10731d = i4;
    }

    /* renamed from: a */
    public AudioAttributes m28300a() {
        if (this.f10732e == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(this.f10728a).setFlags(this.f10729b).setUsage(this.f10730c);
            if (C2885h0.f10477a >= 29) {
                usage.setAllowedCapturePolicy(this.f10731d);
            }
            this.f10732e = usage.build();
        }
        return this.f10732e;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C2982i.class != obj.getClass()) {
            return false;
        }
        C2982i iVar = (C2982i) obj;
        if (!(this.f10728a == iVar.f10728a && this.f10729b == iVar.f10729b && this.f10730c == iVar.f10730c && this.f10731d == iVar.f10731d)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((527 + this.f10728a) * 31) + this.f10729b) * 31) + this.f10730c) * 31) + this.f10731d;
    }
}
