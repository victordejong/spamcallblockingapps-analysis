package p193e.p194a.p195a.p237h1.p238n;

import com.tenor.android.core.constant.ViewAction;
import com.truecaller.messaging.urgent.UrgentConversation;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p1111o2.AbstractC18893b;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p195a.p237h1.C6328g;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.a.h1.n.h */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/n/h.class */
public class C6349h extends AbstractC18894c<AbstractC6348g> implements AbstractC18893b, AbstractC18904l {

    /* renamed from: b */
    public boolean f21185b;

    /* renamed from: c */
    public final AbstractC6347f f21186c;

    /* renamed from: d */
    public final AbstractC6342b f21187d;

    /* renamed from: e */
    public final C6345d f21188e;

    /* renamed from: f */
    public final AbstractC6346e f21189f;

    /* renamed from: g */
    public final C6328g f21190g;

    @Inject
    public C6349h(AbstractC6347f abstractC6347f, AbstractC6342b abstractC6342b, C6345d c6345d, AbstractC6346e abstractC6346e, C6328g c6328g) {
        l.e(abstractC6347f, "model");
        l.e(abstractC6342b, "avatarPresenterFactory");
        l.e(c6345d, "avatarConfigProvider");
        l.e(abstractC6346e, "itemActionListener");
        l.e(c6328g, "expiryHelper");
        this.f21186c = abstractC6347f;
        this.f21187d = abstractC6342b;
        this.f21188e = c6345d;
        this.f21189f = abstractC6346e;
        this.f21190g = c6328g;
    }

    /* renamed from: A */
    public UrgentConversation m31428A(int i) {
        List<UrgentConversation> mo31413Ga = this.f21186c.mo31413Ga();
        boolean z = this.f21185b;
        if (z) {
            i += 3;
        } else if (z) {
            throw new i();
        }
        return mo31413Ga.get(i);
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC6348g abstractC6348g = (AbstractC6348g) obj;
        l.e(abstractC6348g, "itemView");
        boolean z = true;
        if (getItemId(i) == -2) {
            abstractC6348g.mo31427E4(null);
            boolean z2 = false;
            if (this.f21186c.mo31414Ca() == -2) {
                z2 = true;
            }
            abstractC6348g.mo31424U1(z2);
            abstractC6348g.mo31422r2(this.f21186c.mo31413Ga().size() - 3);
            abstractC6348g.mo31425S0(true);
            abstractC6348g.mo31426J();
            return;
        }
        UrgentConversation m31428A = m31428A(i);
        C6344c c6344c = (C6344c) this.f21187d;
        Objects.requireNonNull(c6344c);
        l.e(abstractC6348g, ViewAction.VIEW);
        C8243a mo31423o = abstractC6348g.mo31423o();
        if (mo31423o == null) {
            mo31423o = new C8243a(c6344c.f21183a);
        }
        C8243a.m28739ok(mo31423o, this.f21188e.mo9781a(m31428A.f13900a), false, 2, null);
        abstractC6348g.mo31427E4(mo31423o);
        if (m31428A.f13900a.f13199a != this.f21186c.mo31414Ca()) {
            z = false;
        }
        abstractC6348g.mo31424U1(z);
        abstractC6348g.mo31422r2(m31428A.f13901b);
        abstractC6348g.mo31425S0(false);
        long j = m31428A.f13902c;
        if (j < 0) {
            abstractC6348g.mo31426J();
        } else {
            abstractC6348g.mo31421t(j, this.f21190g.m31442a());
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        int i;
        boolean z = this.f21185b;
        if (z) {
            i = this.f21186c.mo31413Ga().size() - 3;
        } else if (z) {
            throw new i();
        } else {
            i = Math.min(this.f21186c.mo31413Ga().size(), 4);
        }
        return i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        if (this.f21185b || this.f21186c.mo31413Ga().size() <= 4 || i < 3) {
            return m31428A(i).f13900a.f13199a;
        }
        return -2L;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: o */
    public void mo14341o(Object obj) {
        AbstractC6348g abstractC6348g = (AbstractC6348g) obj;
        l.e(abstractC6348g, "itemView");
        abstractC6348g.mo31426J();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        if (l.a(c18900h.f53001a, "ItemEvent.CLICKED")) {
            if (getItemId(c18900h.f53002b) == -2) {
                this.f21189f.mo31409r5();
                return true;
            }
            AbstractC6346e abstractC6346e = this.f21189f;
            int i = c18900h.f53002b;
            boolean z = this.f21185b;
            if (z) {
                i += 3;
            } else if (z) {
                throw new i();
            }
            abstractC6346e.mo31410S6(i);
            return true;
        }
        return false;
    }
}
