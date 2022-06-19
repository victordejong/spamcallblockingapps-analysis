package p193e.p194a.p195a.p258m;

import com.truecaller.messaging.inboxcleanup.InboxCleanerPromoTab;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p195a.p227e.AbstractC6005m;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.AbstractC6923n1;
import q3.a.h1;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.m.p */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/p.class */
public final class C6932p extends AbstractC6894i2<AbstractC6923n1> implements AbstractC6891i0 {

    /* renamed from: c */
    public final AbstractC6900j2 f22539c;

    /* renamed from: d */
    public final AbstractC6923n1.AbstractC6924a f22540d;

    /* renamed from: e */
    public final AbstractC19223c0 f22541e;

    /* renamed from: f */
    public final AbstractC6005m f22542f;

    /* renamed from: g */
    public final f f22543g;

    /* renamed from: h */
    public final f f22544h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6932p(AbstractC6900j2 abstractC6900j2, AbstractC6923n1.AbstractC6924a abstractC6924a, AbstractC19223c0 abstractC19223c0, AbstractC6005m abstractC6005m, @Named("IO") f fVar, @Named("UI") f fVar2) {
        super(abstractC6900j2);
        l.e(abstractC6900j2, "promoProvider");
        l.e(abstractC6924a, "actionListener");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC6005m, "inboxCleaner");
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        this.f22539c = abstractC6900j2;
        this.f22540d = abstractC6924a;
        this.f22541e = abstractC19223c0;
        this.f22542f = abstractC6005m;
        this.f22543g = fVar;
        this.f22544h = fVar2;
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2
    /* renamed from: A */
    public boolean mo30360A(AbstractC6798d1 abstractC6798d1) {
        return abstractC6798d1 instanceof AbstractC6798d1.C6816l;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC6923n1 abstractC6923n1 = (AbstractC6923n1) obj;
        l.e(abstractC6923n1, "itemView");
        d.w2(h1.a, this.f22543g, (j0) null, new C6926o(this, abstractC6923n1, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6894i2, p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        return l.a(this.f22539c.mo30398Ge(), "PromoInboxSpamTab") && (this.f22539c.mo30397ze() instanceof AbstractC6798d1.C6816l);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        boolean z;
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        if (hashCode != -1916676297) {
            if (hashCode == 1194851014 && str.equals("ItemEvent.ACTION_DISMISS_INBOX_CLEANER")) {
                z = this.f22540d.mo30379Hh(InboxCleanerPromoTab.TAB_SPAM);
            }
            z = false;
        } else {
            if (str.equals("ItemEvent.ACTION_TRY_INBOX_CLEANER")) {
                z = this.f22540d.mo30378vj(InboxCleanerPromoTab.TAB_SPAM);
            }
            z = false;
        }
        return z;
    }
}
