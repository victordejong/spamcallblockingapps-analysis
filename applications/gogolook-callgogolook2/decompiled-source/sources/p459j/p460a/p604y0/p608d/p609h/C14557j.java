package p459j.p460a.p604y0.p608d.p609h;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p550p.AbstractC13314q;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p604y0.p608d.C14508b;
import p459j.p460a.p604y0.p611f.C14589b;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��5\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0007\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\bR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, m815d2 = {"Lgogolook/callgogolook2/vas/main/adapter/VasPromotionHeaderDelegateAdapter;", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "sharedVasViewModel", "Lgogolook/callgogolook2/vas/main/SharedVasViewModel;", "(Lgogolook/callgogolook2/vas/main/SharedVasViewModel;)V", "onClickScanListener", "gogolook/callgogolook2/vas/main/adapter/VasPromotionHeaderDelegateAdapter$onClickScanListener$1", "Lgogolook/callgogolook2/vas/main/adapter/VasPromotionHeaderDelegateAdapter$onClickScanListener$1;", "onBindViewHolder", "", "holder", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "VasPromotionHeaderViewHolder", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.d.h.j */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/j.class */
public final class C14557j implements AbstractC12392b<RecyclerView.ViewHolder> {

    /* renamed from: a */
    public final C14559b f32521a = new C14559b();

    /* renamed from: b */
    public final C14508b f32522b;

    /* renamed from: j.a.y0.d.h.j$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/j$a.class */
    public static final class C14558a extends RecyclerView.ViewHolder {

        /* renamed from: a */
        public final AbstractC13314q f32523a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14558a(AbstractC13314q qVar) {
            super(qVar.getRoot());
            C15149k.m377b(qVar, "binding");
            this.f32523a = qVar;
        }

        /* renamed from: a */
        public final void m1126a(C14560k kVar, AbstractC14538b bVar) {
            C15149k.m377b(kVar, "item");
            C15149k.m377b(bVar, "onClickScanListener");
            AbstractC13314q qVar = this.f32523a;
            qVar.mo4272a(kVar);
            qVar.mo4273a(bVar);
            qVar.executePendingBindings();
        }
    }

    /* renamed from: j.a.y0.d.h.j$b */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/j$b.class */
    public static final class C14559b implements AbstractC14538b {
        public C14559b() {
        }

        @Override // p459j.p460a.p604y0.p608d.p609h.AbstractC14538b
        /* renamed from: a */
        public void mo1125a() {
            C14589b<Void> e;
            C14508b bVar = C14557j.this.f32522b;
            if (!(bVar == null || (e = bVar.m1192e()) == null)) {
                e.m1052a();
            }
            C14508b bVar2 = C14557j.this.f32522b;
            C14289m.m1866c((Integer) 9, bVar2 != null ? Integer.valueOf(bVar2.m1184m()) : null);
        }
    }

    public C14557j(C14508b bVar) {
        this.f32522b = bVar;
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a */
    public RecyclerView.ViewHolder mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        C15149k.m383a((Object) from, "LayoutInflater.from(parent.context)");
        AbstractC13314q a = AbstractC13314q.m4275a(from, viewGroup, false);
        C15149k.m383a((Object) a, "VasPromotionHeaderBindin…(inflater, parent, false)");
        return new C14558a(a);
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a */
    public void mo1119a(RecyclerView.ViewHolder viewHolder, AbstractC12391a aVar) {
        C15149k.m377b(viewHolder, "holder");
        C15149k.m377b(aVar, "item");
        ((C14558a) viewHolder).m1126a((C14560k) aVar, this.f32521a);
    }
}
