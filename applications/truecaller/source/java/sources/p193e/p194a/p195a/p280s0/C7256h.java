package p193e.p194a.p195a.p280s0;

import com.truecaller.log.AssertionUtil;
import org.apache.avro.AvroRuntimeException;
import p193e.p194a.p1050l5.p1051a.C17837z1;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.AbstractC7156p;
import p193e.p194a.p195a.p279r0.AbstractC7201a;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.s0.h */
/* loaded from: classes7-dex2jar.jar:e/a/a/s0/h.class */
public class C7256h extends AbstractC7254f {

    /* renamed from: b */
    public final AbstractC7201a f23189b;

    /* renamed from: c */
    public final AbstractC19230g f23190c;

    /* renamed from: d */
    public final AbstractC19854f<AbstractC19463a0> f23191d;

    /* renamed from: e */
    public final AbstractC19510i0 f23192e;

    /* renamed from: f */
    public final AbstractC6392i0 f23193f;

    /* renamed from: g */
    public final String f23194g;

    /* renamed from: h */
    public final AbstractC19219a0 f23195h;

    /* renamed from: i */
    public final AbstractC7156p f23196i;

    /* renamed from: j */
    public final AbstractC7249d f23197j;

    /* renamed from: k */
    public boolean f23198k = false;

    /* renamed from: l */
    public final String f23199l;

    /* renamed from: m */
    public final String f23200m;

    public C7256h(AbstractC7201a abstractC7201a, AbstractC19230g abstractC19230g, String str, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC6392i0 abstractC6392i0, AbstractC19219a0 abstractC19219a0, AbstractC7156p abstractC7156p, AbstractC7249d abstractC7249d, AbstractC19510i0 abstractC19510i0, String str2, String str3) {
        this.f23189b = abstractC7201a;
        this.f23190c = abstractC19230g;
        this.f23194g = str;
        this.f23191d = abstractC19854f;
        this.f23193f = abstractC6392i0;
        this.f23195h = abstractC19219a0;
        this.f23196i = abstractC7156p;
        this.f23197j = abstractC7249d;
        this.f23192e = abstractC19510i0;
        this.f23199l = str2;
        this.f23200m = str3;
    }

    @Override // p193e.p194a.p195a.p280s0.AbstractC7254f
    /* renamed from: Hj */
    public void mo29899Hj() {
    }

    @Override // p193e.p194a.p195a.p280s0.AbstractC7254f
    /* renamed from: Ij */
    public void mo29898Ij() {
        ((AbstractC7257i) this.f57683a).mo29888b2();
    }

    @Override // p193e.p194a.p195a.p280s0.AbstractC7254f
    /* renamed from: Jj */
    public void mo29897Jj() {
        m29892Oj();
    }

    @Override // p193e.p194a.p195a.p280s0.AbstractC7254f
    /* renamed from: Kj */
    public void mo29896Kj() {
        PV pv = this.f57683a;
        if (pv != 0) {
            ((AbstractC7257i) pv).mo29890I8();
            ((AbstractC7257i) this.f57683a).mo29888b2();
        }
    }

    @Override // p193e.p194a.p195a.p280s0.AbstractC7254f
    /* renamed from: Lj */
    public void mo29895Lj(String[] strArr, int[] iArr) {
        boolean z;
        if (this.f57683a == 0) {
            return;
        }
        int i = 0;
        while (true) {
            z = false;
            if (i >= strArr.length) {
                break;
            } else if ("android.permission.SEND_SMS".equals(strArr[i])) {
                z = false;
                if (iArr[i] == 0) {
                    z = true;
                }
            } else {
                i++;
            }
        }
        if (z) {
            mo29893Nj();
        } else {
            ((AbstractC7257i) this.f57683a).mo29888b2();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Mj */
    public void mo9029Y0(AbstractC7257i abstractC7257i) {
        this.f57683a = abstractC7257i;
        String str = this.f23200m;
        if (str == null) {
            m29892Oj();
        } else {
            abstractC7257i.mo29886d2(str);
        }
    }

    /* renamed from: Nj */
    public void mo29893Nj() {
        this.f23198k = true;
        if (this.f57683a != 0) {
            if (this.f23190c.mo13780q() >= 24) {
                this.f23196i.mo30020a();
            }
            ((AbstractC7257i) this.f57683a).mo29881z8();
            String str = this.f23199l;
            if (str == null || !str.equals("default_sms_promo")) {
                return;
            }
            this.f23192e.mo13214l("Dsan5-ChangedToDefault");
        }
    }

    /* renamed from: Oj */
    public final void m29892Oj() {
        if (this.f57683a == 0) {
            return;
        }
        if (!this.f23190c.mo13794c()) {
            if (this.f23190c.mo13780q() >= 29) {
                ((AbstractC7257i) this.f57683a).mo29887b9();
            } else {
                ((AbstractC7257i) this.f57683a).mo29882w2();
            }
        } else if (!this.f23195h.mo13825h("android.permission.SEND_SMS")) {
            ((AbstractC7257i) this.f57683a).mo29889S9("android.permission.SEND_SMS");
        } else {
            this.f23198k = true;
            ((AbstractC7257i) this.f57683a).mo29881z8();
        }
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f57683a = null;
        this.f23197j.mo29905b(this.f23198k);
    }

    @Override // p193e.p194a.p195a.p280s0.AbstractC7254f
    public void onResume() {
    }

    @Override // p193e.p194a.p195a.p280s0.AbstractC7254f
    /* renamed from: q */
    public void mo29891q(int i) {
        if (this.f57683a == 0 || i != 1) {
            return;
        }
        if (!this.f23190c.mo13794c()) {
            ((AbstractC7257i) this.f57683a).mo29888b2();
            if (this.f23190c.mo13780q() < 29) {
                return;
            }
            ((AbstractC7257i) this.f57683a).mo29884n2();
            return;
        }
        String mo13799E = this.f23190c.mo13799E();
        String str = mo13799E;
        if (mo13799E == null) {
            str = "";
        }
        try {
            AbstractC19463a0 mo11854a = this.f23191d.mo11854a();
            String str2 = this.f23194g;
            C17837z1.C17839b m15768a = C17837z1.m15768a();
            m15768a.m15765c("defaultMessagingApp");
            m15768a.m15764d(str);
            m15768a.m15766b(str2);
            mo11854a.mo13111a(m15768a.build());
        } catch (AvroRuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
        this.f23193f.mo31229B3(new b(0L));
        this.f23193f.mo31196I1(((e) new b()).a);
        this.f23189b.mo30000a();
        if (this.f23195h.mo13825h("android.permission.SEND_SMS")) {
            mo29893Nj();
        } else {
            ((AbstractC7257i) this.f57683a).mo29889S9("android.permission.SEND_SMS");
        }
    }
}
