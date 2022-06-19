package p193e.p194a.p195a.p200c.p218o8;

import android.net.Uri;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import javax.inject.Inject;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6487o;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p997k3.p1000l.p1001k.C16503a;
import s1.z.c.l;
/* renamed from: e.a.a.c.o8.e */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/o8/e.class */
public final class C5636e extends AbstractC18894c<AbstractC5635d> implements AbstractC5634c {

    /* renamed from: b */
    public final AbstractC5633b f18944b;

    /* renamed from: c */
    public final AbstractC5632a f18945c;

    /* renamed from: d */
    public final AbstractC19022f0 f18946d;

    /* renamed from: e */
    public final AbstractC6489q f18947e;

    @Inject
    public C5636e(AbstractC5633b abstractC5633b, AbstractC5632a abstractC5632a, AbstractC19022f0 abstractC19022f0, AbstractC6489q abstractC6489q) {
        l.e(abstractC5633b, "model");
        l.e(abstractC5632a, "listener");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC6489q, "imGroupUtil");
        this.f18944b = abstractC5633b;
        this.f18945c = abstractC5632a;
        this.f18946d = abstractC19022f0;
        this.f18947e = abstractC6489q;
    }

    /* renamed from: A */
    public final C16503a m32838A(int i) {
        C16503a c16503a;
        AbstractC6487o mo32825f = this.f18944b.mo32825f();
        if (mo32825f != null) {
            mo32825f.moveToPosition(i);
            c16503a = mo32825f.mo30875i1();
        } else {
            c16503a = null;
        }
        return c16503a;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(AbstractC5635d abstractC5635d, int i) {
        AbstractC5635d abstractC5635d2 = abstractC5635d;
        l.e(abstractC5635d2, "itemView");
        C16503a m32838A = m32838A(i);
        if (m32838A != null) {
            Uri mo14235k = this.f18946d.mo14235k(m32838A.f46404h, m32838A.f46403g, true);
            String str = m32838A.f46401e;
            abstractC5635d2.mo32837a(new AvatarXConfig(mo14235k, m32838A.f46399c, null, str != null ? C17891a1.C17902k.m15693B(str) : null, false, false, false, false, false, false, false, false, false, false, null, false, 65524));
            String str2 = m32838A.f46401e;
            if (str2 == null) {
                str2 = m32838A.f46402f;
            }
            if (str2 == null) {
                str2 = this.f18947e.mo30871d(m32838A.f46397a);
            }
            abstractC5635d2.setName(str2);
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        AbstractC6487o mo32825f = this.f18944b.mo32825f();
        return mo32825f != null ? mo32825f.getCount() : 0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        C16503a m32838A = m32838A(i);
        String str = m32838A != null ? m32838A.f46397a : null;
        return str != null ? str.hashCode() : 0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        if (l.a(c18900h.f53001a, "ItemEvent.CLICKED")) {
            C16503a m32838A = m32838A(c18900h.f53002b);
            if (m32838A == null) {
                return false;
            }
            this.f18945c.mo32822kb(m32838A);
            return true;
        }
        return true;
    }
}
