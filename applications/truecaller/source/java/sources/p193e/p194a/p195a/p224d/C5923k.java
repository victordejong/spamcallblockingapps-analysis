package p193e.p194a.p195a.p224d;

import android.view.View;
import com.truecaller.messaging.views.Switch;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.d.k */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/k.class */
public final class C5923k extends m implements l<Switch, s> {

    /* renamed from: b */
    public final /* synthetic */ C5924l f19810b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5923k(C5924l c5924l) {
        super(1);
        this.f19810b = c5924l;
    }

    /* renamed from: d */
    public Object m32216d(Object obj) {
        Switch r0 = (Switch) obj;
        s1.z.c.l.e(r0, "selectedTransport");
        C5924l c5924l = this.f19810b;
        AbstractC18905m abstractC18905m = c5924l.f19815e;
        View view = c5924l.itemView;
        s1.z.c.l.d(view, "itemView");
        abstractC18905m.mo14327t(new C18900h("ItemEvent.CHANGE_TRANSPORT", c5924l, view, r0));
        return s.a;
    }
}
