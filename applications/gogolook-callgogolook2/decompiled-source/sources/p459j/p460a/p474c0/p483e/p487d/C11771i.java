package p459j.p460a.p474c0.p483e.p487d;

import androidx.recyclerview.widget.DiffUtil;
import p459j.p460a.p474c0.p483e.p487d.AbstractC11799s;
import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.e.d.i */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/i.class */
public final class C11771i extends DiffUtil.ItemCallback<AbstractC12391a> {
    /* renamed from: a */
    public boolean areContentsTheSame(AbstractC12391a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "oldItem");
        C15149k.m377b(aVar2, "newItem");
        if (!(aVar instanceof AbstractC11814w) || !(aVar2 instanceof AbstractC11814w)) {
            return C15149k.m384a(aVar, aVar2);
        }
        AbstractC11814w wVar = (AbstractC11814w) aVar;
        AbstractC11799s.EnumC11800a a = wVar.m8291a();
        AbstractC11814w wVar2 = (AbstractC11814w) aVar2;
        if (a != wVar2.m8291a()) {
            return false;
        }
        return C15149k.m384a(wVar.m8246b(), wVar2.m8246b());
    }

    /* renamed from: b */
    public boolean areItemsTheSame(AbstractC12391a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "oldItem");
        C15149k.m377b(aVar2, "newItem");
        return aVar.getViewType() == aVar2.getViewType();
    }
}
