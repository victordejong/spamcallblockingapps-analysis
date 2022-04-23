package p459j.p460a.p463b0.p467t;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n��\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00060\u0004¢\u0006\u0002\u0010\u0007J\b\u0010\u000f\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J\u0018\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0005H\u0016J\u0014\u0010\u0019\u001a\u00020\u00132\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\n0\u001bR \u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��R!\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006\u001c"}, m815d2 = {"Lgogolook/callgogolook2/main/drawer/MainDrawerItemAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "delegateAdapterMap", "", "", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "(Ljava/util/Map;)V", "drawerItemList", "", "Lgogolook/callgogolook2/adapter/ViewData;", "getDrawerItemList", "()Ljava/util/List;", "drawerItemList$delegate", "Lkotlin/Lazy;", "getItemCount", "getItemViewType", "position", "onBindViewHolder", "", "holder", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "setItemList", "itemList", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.t.o */
/* loaded from: classes2-dex2jar.jar:j/a/b0/t/o.class */
public final class C11390o extends RecyclerView.Adapter<C14666a> {

    /* renamed from: c */
    public static final /* synthetic */ AbstractC14906i[] f25493c;

    /* renamed from: a */
    public final AbstractC14974f f25494a = C14975g.m662a(C11391a.f25496a);

    /* renamed from: b */
    public final Map<Integer, AbstractC12392b<C14666a>> f25495b;

    /* renamed from: j.a.b0.t.o$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/o$a.class */
    public static final class C11391a extends AbstractC15150l implements AbstractC15107a<List<AbstractC12391a>> {

        /* renamed from: a */
        public static final C11391a f25496a = new C11391a();

        public C11391a() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final List<AbstractC12391a> invoke() {
            return new ArrayList();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11390o.class), "drawerItemList", "getDrawerItemList()Ljava/util/List;");
        C15131a0.m412a(sVar);
        f25493c = new AbstractC14906i[]{sVar};
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C11390o(Map<Integer, ? extends AbstractC12392b<C14666a>> map) {
        C15149k.m377b(map, "delegateAdapterMap");
        this.f25495b = map;
    }

    /* renamed from: a */
    public final List<AbstractC12391a> m9706a() {
        AbstractC14974f fVar = this.f25494a;
        AbstractC14906i iVar = f25493c[0];
        return (List) fVar.getValue();
    }

    /* renamed from: a */
    public void onBindViewHolder(C14666a aVar, int i) {
        C15149k.m377b(aVar, "holder");
        AbstractC12392b<C14666a> bVar = this.f25495b.get(Integer.valueOf(m9706a().get(i).getViewType()));
        if (bVar != null) {
            bVar.mo1119a(aVar, m9706a().get(i));
        }
    }

    /* renamed from: a */
    public final void m9704a(List<? extends AbstractC12391a> list) {
        C15149k.m377b(list, "itemList");
        m9706a().clear();
        m9706a().addAll(list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return m9706a().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return m9706a().get(i).getViewType();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public C14666a onCreateViewHolder(ViewGroup viewGroup, int i) {
        C15149k.m377b(viewGroup, "parent");
        AbstractC12392b<C14666a> bVar = this.f25495b.get(Integer.valueOf(i));
        C14666a a = bVar != null ? bVar.mo1120a(viewGroup) : null;
        if (a != null) {
            return a;
        }
        C15149k.m378b();
        throw null;
    }
}
