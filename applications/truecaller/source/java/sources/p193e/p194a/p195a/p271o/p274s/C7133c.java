package p193e.p194a.p195a.p271o.p274s;

import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.InboxTab;
import e.m.d.y.n;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17408d;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p195a.AbstractC7267u;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6145m;
import p193e.p194a.p195a.p231g.p232j0.C6144l;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p195a.p271o.AbstractC7107p;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
/* renamed from: e.a.a.o.s.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/o/s/c.class */
public final class C7133c extends AbstractC18894c<AbstractC7134d> implements AbstractC7132b {

    /* renamed from: g */
    public static final /* synthetic */ l[] f22927g = {C22128a.m8621g0(C7133c.class, "cursor", "getCursor()Lcom/truecaller/messaging/data/cursors/MediaSizeFromMessagesCursor;", 0)};

    /* renamed from: b */
    public final AbstractC7146i f22928b;

    /* renamed from: c */
    public final AbstractC7145h f22929c;

    /* renamed from: d */
    public final AbstractC7107p f22930d;

    /* renamed from: e */
    public final AbstractC6394b f22931e;

    /* renamed from: f */
    public final AbstractC7267u f22932f;

    @Inject
    public C7133c(AbstractC7146i abstractC7146i, AbstractC7145h abstractC7145h, AbstractC7107p abstractC7107p, AbstractC6394b abstractC6394b, AbstractC7267u abstractC7267u) {
        s1.z.c.l.e(abstractC7146i, "model");
        s1.z.c.l.e(abstractC7145h, "itemCallback");
        s1.z.c.l.e(abstractC7107p, "storageManagerUtils");
        s1.z.c.l.e(abstractC6394b, "messageUtil");
        s1.z.c.l.e(abstractC7267u, "inboxAvatarPresenterFactory");
        this.f22929c = abstractC7145h;
        this.f22930d = abstractC7107p;
        this.f22931e = abstractC6394b;
        this.f22932f = abstractC7267u;
        this.f22928b = abstractC7146i;
    }

    /* renamed from: A */
    public final AbstractC6145m m30078A() {
        return this.f22928b.mo30064nd(this, f22927g[0]);
    }

    /* renamed from: B */
    public final C6144l m30077B(int i) {
        AbstractC6145m m30078A = m30078A();
        C6144l c6144l = null;
        if (m30078A != null) {
            c6144l = null;
            if (m30078A.moveToPosition(i)) {
                c6144l = m30078A.getItem();
            }
        }
        return c6144l;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(AbstractC7134d abstractC7134d, int i) {
        AbstractC7134d abstractC7134d2 = abstractC7134d;
        s1.z.c.l.e(abstractC7134d2, "itemView");
        C6144l m30077B = m30077B(i);
        if (m30077B != null) {
            abstractC7134d2.setTitle(this.f22931e.mo31326n(m30077B.f20538a));
            abstractC7134d2.mo30076c(this.f22930d.mo30114a(m30077B.f20539b));
            Conversation conversation = m30077B.f20538a;
            C8243a mo29859b = this.f22932f.mo29859b(abstractC7134d2);
            C8243a.m28739ok(mo29859b, n.r(conversation, conversation.f13217s), false, 2, null);
            abstractC7134d2.mo30074i(mo29859b);
            Conversation conversation2 = m30077B.f20538a;
            C17408d mo29860a = this.f22932f.mo29860a(abstractC7134d2);
            mo29860a.m16140Kj(C10480a.m25935l0(conversation2, InboxTab.Companion.m35029a(conversation2.f13217s)));
            abstractC7134d2.mo30075e(mo29860a);
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        AbstractC6145m m30078A = m30078A();
        return m30078A != null ? m30078A.getCount() : 0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        AbstractC6145m m30078A = m30078A();
        if (m30078A == null || !m30078A.moveToPosition(i)) {
            return -1L;
        }
        return m30078A.getItem().f20538a.f13199a;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        boolean z;
        s1.z.c.l.e(c18900h, "event");
        int i = c18900h.f53002b;
        String str = c18900h.f53001a;
        if (str.hashCode() == -1743572928 && str.equals("ItemEvent.CLICKED")) {
            C6144l m30077B = m30077B(i);
            if (m30077B != null) {
                this.f22929c.mo30066X5(m30077B.f20538a);
            }
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
