package p193e.p194a.p1195s.p1201n.p1202a;

import com.truecaller.callhero_assistant.data.ScreenedCall;
import java.util.Date;
import javax.inject.Inject;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1195s.p1197k.p1198c.C20023a;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.s.n.a.b */
/* loaded from: classes17-dex2jar.jar:e/a/s/n/a/b.class */
public final class C20053b extends AbstractC18894c<AbstractC20056e> implements AbstractC20055d {

    /* renamed from: b */
    public final AbstractC20057f f56629b;

    @Inject
    public C20053b(AbstractC20057f abstractC20057f) {
        l.e(abstractC20057f, "model");
        this.f56629b = abstractC20057f;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(AbstractC20056e abstractC20056e, int i) {
        AbstractC20056e abstractC20056e2 = abstractC20056e;
        l.e(abstractC20056e2, "itemView");
        C20023a mo11593f = this.f56629b.mo11593f();
        if (mo11593f != null) {
            mo11593f.moveToPosition(i);
            String string = mo11593f.getString(mo11593f.f56567a);
            l.d(string, "getString(id)");
            String string2 = mo11593f.getString(mo11593f.f56568b);
            l.d(string2, "getString(toNumber)");
            String string3 = mo11593f.getString(mo11593f.f56569c);
            l.d(string3, "getString(fromNumber)");
            Date date = new Date(mo11593f.getLong(mo11593f.f56570d));
            int i2 = mo11593f.getInt(mo11593f.f56571e);
            String string4 = mo11593f.getString(mo11593f.f56572f);
            l.d(string4, "getString(locale)");
            String string5 = mo11593f.getString(mo11593f.f56573g);
            l.d(string5, "getString(status)");
            ScreenedCall screenedCall = new ScreenedCall(string, string2, string3, date, i2, string4, string5, mo11593f.getInt(mo11593f.f56574h) != 0, mo11593f.getString(mo11593f.f56575i), mo11593f.getString(mo11593f.f56576j), mo11593f.getString(mo11593f.f56577k), s.a);
            abstractC20056e2.mo11609E1(screenedCall.getFromNumber());
            abstractC20056e2.mo11607W(String.valueOf(screenedCall.getDuration()));
            abstractC20056e2.mo11608G(screenedCall.getStatus());
            return;
        }
        throw new IllegalStateException();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        C20023a mo11593f = this.f56629b.mo11593f();
        return mo11593f != null ? mo11593f.getCount() : 0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        C20023a mo11593f = this.f56629b.mo11593f();
        if (mo11593f != null) {
            mo11593f.moveToPosition(i);
            String string = mo11593f.getString(mo11593f.f56567a);
            l.d(string, "getString(id)");
            return string.hashCode();
        }
        throw new IllegalStateException();
    }
}
