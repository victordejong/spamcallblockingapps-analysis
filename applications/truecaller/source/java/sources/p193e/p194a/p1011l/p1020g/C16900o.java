package p193e.p194a.p1011l.p1020g;

import com.truecaller.C2752R;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.p1020g.AbstractC16893l;
import p193e.p194a.p1011l.p1025p2.C17062e0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import s1.g;
import s1.u.i;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.l.g.o */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/o.class */
public final class C16900o extends AbstractC20574a<AbstractC16898m> implements AbstractC16892k {

    /* renamed from: d */
    public AbstractC16893l f47459d;

    /* renamed from: e */
    public C16883b f47460e;

    /* renamed from: f */
    public final g f47461f = C25225a.m3978P1(new C16903c());

    /* renamed from: g */
    public final g f47462g = C25225a.m3978P1(new C16901a());

    /* renamed from: h */
    public final g f47463h = C25225a.m3978P1(new C16902b());

    /* renamed from: i */
    public final AbstractC19223c0 f47464i;

    /* renamed from: j */
    public final C16885d f47465j;

    /* renamed from: k */
    public final C16914u f47466k;

    /* renamed from: l */
    public final AbstractC16832c2 f47467l;

    /* renamed from: m */
    public final C17062e0 f47468m;

    /* renamed from: n */
    public final boolean f47469n;

    /* renamed from: o */
    public final String f47470o;

    /* renamed from: p */
    public final String f47471p;

    /* renamed from: q */
    public final f f47472q;

    /* renamed from: e.a.l.g.o$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/g/o$a.class */
    public static final class C16901a extends m implements a<List<? extends C16891j>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16901a() {
            super(0);
            C16900o.this = r4;
        }

        public Object invoke() {
            String mo13768b = C16900o.this.f47464i.mo13768b(C2752R.string.GoldGiftContactSendAction, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…oldGiftContactSendAction)");
            C16891j c16891j = new C16891j(mo13768b, new C25346k3(0, this));
            String mo13768b2 = C16900o.this.f47464i.mo13768b(C2752R.string.GoldGiftContactPickOtherContactAction, new Object[0]);
            l.d(mo13768b2, "resourceProvider.getStri…ctPickOtherContactAction)");
            C16891j c16891j2 = new C16891j(mo13768b2, new C25346k3(1, this));
            String mo13768b3 = C16900o.this.f47464i.mo13768b(C2752R.string.GoldGiftContactDismissAction, new Object[0]);
            l.d(mo13768b3, "resourceProvider.getStri…GiftContactDismissAction)");
            return i.T(new C16891j[]{c16891j, c16891j2, new C16891j(mo13768b3, new C25346k3(2, this))});
        }
    }

    /* renamed from: e.a.l.g.o$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/g/o$b.class */
    public static final class C16902b extends m implements a<List<? extends C16891j>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16902b() {
            super(0);
            C16900o.this = r4;
        }

        public Object invoke() {
            String mo13768b = C16900o.this.f47464i.mo13768b(C2752R.string.GoldGiftReceivedSendThankYou, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…GiftReceivedSendThankYou)");
            C16891j c16891j = new C16891j(mo13768b, new C25343j3(0, this));
            String mo13768b2 = C16900o.this.f47464i.mo13768b(C2752R.string.GoldGiftReceivedCheckGold, new Object[0]);
            l.d(mo13768b2, "resourceProvider.getStri…oldGiftReceivedCheckGold)");
            C16891j c16891j2 = new C16891j(mo13768b2, new C25343j3(1, this));
            String mo13768b3 = C16900o.this.f47464i.mo13768b(2131887882, new Object[0]);
            l.d(mo13768b3, "resourceProvider.getString(R.string.StrDismiss)");
            return i.T(new C16891j[]{c16891j, c16891j2, new C16891j(mo13768b3, new C25343j3(2, this))});
        }
    }

    /* renamed from: e.a.l.g.o$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/g/o$c.class */
    public static final class C16903c extends m implements a<List<? extends C16891j>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16903c() {
            super(0);
            C16900o.this = r4;
        }

        public Object invoke() {
            String mo13768b = C16900o.this.f47464i.mo13768b(C2752R.string.GoldGiftCongratsSendGiftAction, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…ftCongratsSendGiftAction)");
            C16891j c16891j = new C16891j(mo13768b, new a2(0, this));
            String mo13768b2 = C16900o.this.f47464i.mo13768b(C2752R.string.GoldGiftCongratsDismissAction, new Object[0]);
            l.d(mo13768b2, "resourceProvider.getStri…iftCongratsDismissAction)");
            return i.T(new C16891j[]{c16891j, new C16891j(mo13768b2, new a2(1, this))});
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16900o(AbstractC19223c0 abstractC19223c0, C16885d c16885d, C16914u c16914u, AbstractC16832c2 abstractC16832c2, C17062e0 c17062e0, @Named("GoldGiftDialogModule.skipIntro") boolean z, @Named("GoldGiftDialogModule.senderName") String str, @Named("GoldGiftDialogModule.senderNumber") String str2, @Named("UI") f fVar) {
        super(fVar);
        l.e(abstractC19223c0, "resourceProvider");
        l.e(c16885d, "contactReader");
        l.e(c16914u, "repository");
        l.e(abstractC16832c2, "premiumSettings");
        l.e(c17062e0, "premiumExpireDateFormatter");
        l.e(fVar, "uiContext");
        this.f47464i = abstractC19223c0;
        this.f47465j = c16885d;
        this.f47466k = c16914u;
        this.f47467l = abstractC16832c2;
        this.f47468m = c17062e0;
        this.f47469n = z;
        this.f47470o = str;
        this.f47471p = str2;
        this.f47472q = fVar;
    }

    /* renamed from: Ij */
    public final void m16786Ij() {
        AbstractC16898m abstractC16898m = (AbstractC16898m) this.f57683a;
        if (abstractC16898m != null) {
            abstractC16898m.dismiss();
        }
    }

    /* renamed from: Jj */
    public final void m16785Jj() {
        if (!this.f47469n || this.f47459d != null) {
            return;
        }
        m16786Ij();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.l.g.m, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC16898m abstractC16898m) {
        AbstractC16898m abstractC16898m2 = abstractC16898m;
        l.e(abstractC16898m2, "presenterView");
        this.f57683a = abstractC16898m2;
        String str = this.f47470o;
        if (str == null || this.f47471p == null) {
            if (this.f47469n) {
                abstractC16898m2.mo16791q1();
                return;
            }
            AbstractC16893l.C16897d c16897d = new AbstractC16893l.C16897d((List) this.f47461f.getValue());
            this.f47459d = c16897d;
            AbstractC16898m abstractC16898m3 = (AbstractC16898m) this.f57683a;
            if (abstractC16898m3 == null) {
                return;
            }
            abstractC16898m3.mo16794du(c16897d);
            return;
        }
        String mo13768b = this.f47464i.mo13768b(C2752R.string.GoldGiftReceivedSenderInfo, str);
        l.d(mo13768b, "resourceProvider.getStri…edSenderInfo, senderName)");
        AbstractC19223c0 abstractC19223c0 = this.f47464i;
        C17062e0 c17062e0 = this.f47468m;
        String mo13768b2 = abstractC19223c0.mo13768b(C2752R.string.GoldGiftReceivedExpireInfo, c17062e0.f47837c.mo16403R1() ? c17062e0.m16588b(c17062e0.f47837c.mo16409G1()) : c17062e0.m16588b(c17062e0.f47837c.mo16391w0()));
        l.d(mo13768b2, "resourceProvider.getStri…Formatter.simpleFormat())");
        AbstractC16893l.C16896c c16896c = new AbstractC16893l.C16896c(mo13768b, mo13768b2, (List) this.f47463h.getValue());
        this.f47459d = c16896c;
        AbstractC16898m abstractC16898m4 = (AbstractC16898m) this.f57683a;
        if (abstractC16898m4 == null) {
            return;
        }
        abstractC16898m4.mo16794du(c16896c);
    }
}
