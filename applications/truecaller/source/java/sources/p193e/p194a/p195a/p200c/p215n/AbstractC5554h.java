package p193e.p194a.p195a.p200c.p215n;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.util.DatePattern;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p195a.p231g.p234l0.C6226b;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import s1.i;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.c.n.h */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/n/h.class */
public abstract class AbstractC5554h extends AbstractC18894c<AbstractC5559m> implements AbstractC5557k {

    /* renamed from: b */
    public final AbstractC5556j f18778b;

    /* renamed from: c */
    public final AbstractC6489q f18779c;

    /* renamed from: d */
    public final AbstractC19022f0 f18780d;

    /* renamed from: e */
    public final AbstractC18951b0 f18781e;

    /* renamed from: f */
    public final AbstractC19223c0 f18782f;

    public AbstractC5554h(AbstractC5556j abstractC5556j, AbstractC6489q abstractC6489q, AbstractC19022f0 abstractC19022f0, AbstractC18951b0 abstractC18951b0, AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC5556j, "model");
        l.e(abstractC6489q, "groupUtil");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC18951b0, "dateHelper");
        l.e(abstractC19223c0, "resourceProvider");
        this.f18778b = abstractC5556j;
        this.f18779c = abstractC6489q;
        this.f18780d = abstractC19022f0;
        this.f18781e = abstractC18951b0;
        this.f18782f = abstractC19223c0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(AbstractC5559m abstractC5559m, int i) {
        Drawable drawable;
        String str;
        AbstractC5559m abstractC5559m2 = abstractC5559m;
        l.e(abstractC5559m2, "itemView");
        C6226b c6226b = this.f18778b.mo32951cb(getType()).get(i);
        String str2 = c6226b.f20866e;
        if (str2 == null) {
            str2 = c6226b.f20867f;
        }
        if (str2 == null) {
            str2 = this.f18779c.mo30871d(c6226b.f20862a);
        }
        abstractC5559m2.setName(str2);
        Uri mo14235k = this.f18780d.mo14235k(c6226b.f20869h, c6226b.f20868g, true);
        String str3 = c6226b.f20866e;
        abstractC5559m2.mo32974a(new AvatarXConfig(mo14235k, c6226b.f20867f, null, str3 != null ? C17891a1.C17902k.m15693B(str3) : null, false, false, false, false, false, false, false, false, false, false, null, false, 65524));
        int ordinal = getType().ordinal();
        if (ordinal == 0) {
            drawable = this.f18782f.mo13767c(C2752R.C2753drawable.ic_inbox_read);
        } else if (ordinal != 1) {
            throw new i();
        } else {
            drawable = this.f18782f.mo13767c(C2752R.C2753drawable.ic_inbox_delivered);
        }
        l.d(drawable, "when (getType()) {\n     …inbox_read)\n            }");
        long j = c6226b.f20864c;
        if (this.f18781e.mo14291d(j)) {
            str = this.f18782f.mo13768b(C2752R.string.ConversationHeaderToday, new Object[0]);
            l.d(str, "resourceProvider.getStri….ConversationHeaderToday)");
        } else if (this.f18781e.mo14290e(j)) {
            str = this.f18782f.mo13768b(C2752R.string.ConversationHeaderYesterday, new Object[0]);
            l.d(str, "resourceProvider.getStri…versationHeaderYesterday)");
        } else {
            str = new b(j).u() != new b().u() ? this.f18781e.mo14294a(j, DatePattern.GROUP_HEADER_WITH_YEAR) : this.f18781e.mo14294a(j, DatePattern.GROUP_HEADER_WITH_YEAR);
        }
        abstractC5559m2.mo32973f2(drawable, str);
        abstractC5559m2.mo32972p(this.f18781e.mo14283l(c6226b.f20864c));
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f18778b.mo32951cb(getType()).size();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return this.f18778b.mo32951cb(getType()).get(i).f20862a.hashCode();
    }
}
