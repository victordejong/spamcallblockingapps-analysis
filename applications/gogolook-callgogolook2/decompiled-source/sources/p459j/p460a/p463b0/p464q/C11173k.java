package p459j.p460a.p463b0.p464q;

import androidx.recyclerview.widget.DiffUtil;
import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.q.k */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/k.class */
public final class C11173k extends DiffUtil.ItemCallback<AbstractC12391a> {
    /* renamed from: a */
    public boolean areContentsTheSame(AbstractC12391a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "oldItem");
        C15149k.m377b(aVar2, "newItem");
        if (aVar.getViewType() == 2 && aVar2.getViewType() == 2) {
            return false;
        }
        return C15149k.m384a(aVar, aVar2);
    }

    /* renamed from: b */
    public boolean areItemsTheSame(AbstractC12391a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "oldItem");
        C15149k.m377b(aVar2, "newItem");
        boolean z = false;
        if (!(aVar.getViewType() == 1 && aVar2.getViewType() == 1) ? aVar != aVar2 : ((C11156e) aVar).m10168a().getId() != ((C11156e) aVar2).m10168a().getId()) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public Object getChangePayload(AbstractC12391a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "oldItem");
        C15149k.m377b(aVar2, "newItem");
        if (aVar.getViewType() == 2 && aVar2.getViewType() == 2) {
            return true;
        }
        return super.getChangePayload(aVar, aVar2);
    }
}
