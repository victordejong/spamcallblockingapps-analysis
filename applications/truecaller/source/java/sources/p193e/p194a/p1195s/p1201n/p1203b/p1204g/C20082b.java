package p193e.p194a.p1195s.p1201n.p1203b.p1204g;

import com.truecaller.callhero_assistant.data.Voice;
import javax.inject.Inject;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.C18900h;
import s1.z.c.l;
/* renamed from: e.a.s.n.b.g.b */
/* loaded from: classes17-dex2jar.jar:e/a/s/n/b/g/b.class */
public final class C20082b extends AbstractC18894c<AbstractC20091g> implements AbstractC20090f {

    /* renamed from: b */
    public final AbstractC20092h f56674b;

    /* renamed from: c */
    public final AbstractC20089e f56675c;

    @Inject
    public C20082b(AbstractC20092h abstractC20092h, AbstractC20089e abstractC20089e) {
        l.e(abstractC20092h, "model");
        l.e(abstractC20089e, "itemActionListener");
        this.f56674b = abstractC20092h;
        this.f56675c = abstractC20089e;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(AbstractC20091g abstractC20091g, int i) {
        AbstractC20091g abstractC20091g2 = abstractC20091g;
        l.e(abstractC20091g2, "itemView");
        Voice voice = this.f56674b.mo11552x1().get(i);
        abstractC20091g2.mo11570r(voice.getImage());
        abstractC20091g2.setName(voice.getName());
        abstractC20091g2.mo11573d(voice.getDescription());
        abstractC20091g2.mo11571l(l.a(this.f56674b.mo11560E0(), voice.getId()));
        boolean a = l.a(this.f56674b.mo11557Q7(), voice.getId());
        if (!a || !this.f56674b.mo11554s0()) {
            abstractC20091g2.mo11572h(false);
            abstractC20091g2.mo11569w((!a || !this.f56674b.mo11553t0()) ? 2131232835 : 2131232834);
            return;
        }
        abstractC20091g2.mo11572h(true);
        abstractC20091g2.mo11569w(0);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f56674b.mo11552x1().size();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return this.f56674b.mo11552x1().get(i).getId().hashCode();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        String str = c18900h.f53001a;
        int hashCode = str.hashCode();
        if (hashCode == -1743572928) {
            if (!str.equals("ItemEvent.CLICKED")) {
                return false;
            }
            this.f56675c.mo11559E1(this.f56674b.mo11552x1().get(c18900h.f53002b));
            return true;
        } else if (hashCode != -1614871260 || !str.equals("ItemEvent.ACTION_AVATAR_CLICK")) {
            return false;
        } else {
            this.f56675c.mo11556S3(this.f56674b.mo11552x1().get(c18900h.f53002b));
            return true;
        }
    }
}
