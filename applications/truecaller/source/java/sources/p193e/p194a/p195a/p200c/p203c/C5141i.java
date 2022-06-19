package p193e.p194a.p195a.p200c.p203c;

import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.draft.DraftArguments;
import com.truecaller.messaging.data.types.BinaryEntity;
import javax.inject.Inject;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.c.c.i */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c/i.class */
public final class C5141i extends AbstractC18894c<AbstractC5146n> implements AbstractC5145m {

    /* renamed from: b */
    public final DraftArguments f17572b;

    /* renamed from: c */
    public final AbstractC5147o f17573c;

    /* renamed from: d */
    public final AbstractC5144l f17574d;

    @Inject
    public C5141i(DraftArguments draftArguments, AbstractC5147o abstractC5147o, AbstractC5144l abstractC5144l) {
        l.e(draftArguments, "arguments");
        l.e(abstractC5147o, "model");
        l.e(abstractC5144l, "clickListener");
        this.f17572b = draftArguments;
        this.f17573c = abstractC5147o;
        this.f17574d = abstractC5144l;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(AbstractC5146n abstractC5146n, int i) {
        AbstractC5146n abstractC5146n2 = abstractC5146n;
        l.e(abstractC5146n2, "itemView");
        if (i >= this.f17573c.mo33769I3()) {
            int ordinal = this.f17572b.f13074a.ordinal();
            abstractC5146n2.mo33810Z2(ordinal != 3 ? ordinal != 4 ? 2131232394 : 2131232708 : 2131232621);
            abstractC5146n2.mo33808l(false);
            abstractC5146n2.mo33811Q1(false);
            abstractC5146n2.mo33807m1(false);
            return;
        }
        BinaryEntity mo33770Hg = this.f17573c.mo33770Hg(i);
        boolean z = this.f17573c.mo33753T5() == i;
        if (C10480a.m25929m1(this.f17572b)) {
            abstractC5146n2.mo33811Q1(false);
            abstractC5146n2.mo33812D1(true);
        } else {
            abstractC5146n2.mo33811Q1(z);
        }
        abstractC5146n2.mo33808l(z);
        abstractC5146n2.mo33807m1(mo33770Hg.mo34892w());
        if (mo33770Hg.mo34892w() || mo33770Hg.mo34895l()) {
            abstractC5146n2.mo33813C(mo33770Hg.f13173i);
        } else if (mo33770Hg.mo34893t()) {
            abstractC5146n2.mo33809j4(C2752R.C2753drawable.ic_attachment_vcard_20dp);
        } else {
            abstractC5146n2.mo33809j4(C2752R.C2753drawable.ic_attachment_document_20dp);
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f17572b.f13074a.ordinal() != 6 ? C10480a.m25929m1(this.f17572b) ? this.f17573c.mo33769I3() : this.f17573c.mo33769I3() + 1 : this.f17573c.mo33769I3();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return -1L;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        if (l.a(c18900h.f53001a, "ItemEvent.CLICKED")) {
            this.f17574d.mo33742m9(c18900h.f53002b);
            return true;
        }
        return false;
    }
}
