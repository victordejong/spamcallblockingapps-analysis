package p459j.p460a.p463b0.p464q;

import android.view.ViewGroup;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p463b0.C11142n;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.q.u */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/u.class */
public final class C11205u extends AbstractC11183p {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11205u(C11175m mVar) {
        super(mVar);
        C15149k.m377b(mVar, "adapter");
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C11203s(viewGroup, R$layout.call_log_list_view_item_empty);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        if (aVar2.getViewType() == 0 && (aVar instanceof C11203s)) {
            boolean z = C11142n.m10202b(C11142n.m10200c()) > 0;
            C11203s sVar = (C11203s) aVar;
            sVar.m10028e().setText(C14206w4.m2225a(z ? R$string.main_filter_empty_log : R$string.main_filter_no_filter));
            sVar.m10029d().setImageResource(z ? R$drawable.img_empty_log : R$drawable.img_empty_filter);
        }
    }
}
