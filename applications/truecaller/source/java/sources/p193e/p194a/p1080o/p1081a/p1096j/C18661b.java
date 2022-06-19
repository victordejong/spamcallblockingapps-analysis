package p193e.p194a.p1080o.p1081a.p1096j;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.data.entity.Contact;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1064m5.AbstractC18240c;
import p193e.p194a.p1064m5.AbstractC18241d;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.o.a.j.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/j/b.class */
public final class C18661b extends AbstractC20574a<AbstractC18241d> implements AbstractC18240c {

    /* renamed from: d */
    public AbstractC18657a f52489d;

    /* renamed from: e */
    public boolean f52490e = true;

    /* renamed from: f */
    public final boolean f52491f = true;

    /* renamed from: g */
    public final int f52492g = 80;

    /* renamed from: h */
    public boolean f52493h;

    /* renamed from: i */
    public final f f52494i;

    /* renamed from: j */
    public final AbstractC18765c f52495j;

    /* renamed from: k */
    public final AbstractC18663c f52496k;

    /* renamed from: l */
    public final AbstractC19223c0 f52497l;

    @e(c = "com.truecaller.contextcall.ui.truecontext.CallContextPresenter$setupView$1", f = "CallContextPresenter.kt", l = {60, 62}, m = "invokeSuspend")
    /* renamed from: e.a.o.a.j.b$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/j/b$a.class */
    public static final class C18662a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f52498e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18662a(d dVar) {
            super(2, dVar);
            C18661b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m14659i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18662a(dVar);
        }

        /* renamed from: k */
        public final Object m14658k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18662a(dVar).m14657s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x00a2  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0119  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0136  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x01ac  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x01c4  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x01db  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x01f1  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0246  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m14657s(java.lang.Object r5) {
            /*
                Method dump skipped, instructions count: 1028
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1081a.p1096j.C18661b.C18662a.m14657s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18661b(@Named("UI") f fVar, AbstractC18765c abstractC18765c, AbstractC18663c abstractC18663c, AbstractC19223c0 abstractC19223c0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC18765c, "contextCall");
        l.e(abstractC18663c, "themeProvider");
        l.e(abstractC19223c0, "resourceProvider");
        this.f52494i = fVar;
        this.f52495j = abstractC18765c;
        this.f52496k = abstractC18663c;
        this.f52497l = abstractC19223c0;
    }

    /* renamed from: Ij */
    public static final /* synthetic */ AbstractC18657a m14663Ij(C18661b c18661b) {
        AbstractC18657a abstractC18657a = c18661b.f52489d;
        if (abstractC18657a != null) {
            return abstractC18657a;
        }
        l.l(DTBMetricsConfiguration.CONFIG_DIR);
        throw null;
    }

    /* renamed from: Jj */
    public final void m14662Jj(AbstractC18657a abstractC18657a) {
        l.e(abstractC18657a, DTBMetricsConfiguration.CONFIG_DIR);
        this.f52489d = abstractC18657a;
    }

    /* renamed from: Kj */
    public final p1 m14661Kj() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C18662a(null), 3, (Object) null);
    }

    /* renamed from: Lj */
    public final boolean m14660Lj(Contact contact) {
        return contact.m35499r0() && !contact.m35574A0() && !contact.m35492v0();
    }

    @Override // p193e.p194a.p1064m5.AbstractC18240c
    /* renamed from: V4 */
    public void mo9710V4() {
        m14661Kj();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.m5.d, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC18241d abstractC18241d) {
        AbstractC18241d abstractC18241d2 = abstractC18241d;
        l.e(abstractC18241d2, "presenterView");
        this.f57683a = abstractC18241d2;
        m14661Kj();
    }

    @Override // p193e.p194a.p1064m5.AbstractC18240c
    /* renamed from: g4 */
    public void mo9709g4() {
        boolean z = !this.f52490e;
        this.f52490e = z;
        AbstractC18241d abstractC18241d = (AbstractC18241d) this.f57683a;
        if (abstractC18241d != null) {
            abstractC18241d.setIsExpanded(z);
        }
    }
}
