package p459j.p460a.p604y0.p608d.p609h;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p550p.AbstractC13310m;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p604y0.p608d.C14508b;
import p459j.p460a.p604y0.p611f.C14589b;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��5\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0007\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\bR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, m815d2 = {"Lgogolook/callgogolook2/vas/main/adapter/VasMainHeaderDelegateAdapter;", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "sharedVasViewModel", "Lgogolook/callgogolook2/vas/main/SharedVasViewModel;", "(Lgogolook/callgogolook2/vas/main/SharedVasViewModel;)V", "onClickScanListener", "gogolook/callgogolook2/vas/main/adapter/VasMainHeaderDelegateAdapter$onClickScanListener$1", "Lgogolook/callgogolook2/vas/main/adapter/VasMainHeaderDelegateAdapter$onClickScanListener$1;", "onBindViewHolder", "", "holder", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "VasMainHeaderViewHolder", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.d.h.e */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/e.class */
public final class C14544e implements AbstractC12392b<RecyclerView.ViewHolder> {

    /* renamed from: a */
    public final C14546b f32495a = new C14546b();

    /* renamed from: b */
    public final C14508b f32496b;

    /* renamed from: j.a.y0.d.h.e$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/e$a.class */
    public static final class C14545a extends RecyclerView.ViewHolder {

        /* renamed from: a */
        public final AbstractC13310m f32497a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14545a(AbstractC13310m mVar) {
            super(mVar.getRoot());
            C15149k.m377b(mVar, "binding");
            this.f32497a = mVar;
        }

        /* renamed from: a */
        public final void m1138a(C14547f fVar, AbstractC14538b bVar) {
            C15149k.m377b(fVar, "item");
            C15149k.m377b(bVar, "onClickScanListener");
            AbstractC13310m mVar = this.f32497a;
            mVar.mo4280a(fVar);
            mVar.mo4281a(bVar);
            mVar.executePendingBindings();
        }
    }

    /* renamed from: j.a.y0.d.h.e$b */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/e$b.class */
    public static final class C14546b implements AbstractC14538b {
        public C14546b() {
        }

        @Override // p459j.p460a.p604y0.p608d.p609h.AbstractC14538b
        /* renamed from: a */
        public void mo1125a() {
            C14589b<Void> e;
            C14508b bVar = C14544e.this.f32496b;
            if (!(bVar == null || (e = bVar.m1192e()) == null)) {
                e.m1052a();
            }
            C14508b bVar2 = C14544e.this.f32496b;
            C14289m.m1866c((Integer) 7, bVar2 != null ? Integer.valueOf(bVar2.m1184m()) : null);
        }
    }

    public C14544e(C14508b bVar) {
        this.f32496b = bVar;
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a */
    public RecyclerView.ViewHolder mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        C15149k.m383a((Object) from, "LayoutInflater.from(parent.context)");
        AbstractC13310m a = AbstractC13310m.m4283a(from, viewGroup, false);
        C15149k.m383a((Object) a, "VasMainHeaderBinding.inf…(inflater, parent, false)");
        return new C14545a(a);
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a */
    public void mo1119a(RecyclerView.ViewHolder viewHolder, AbstractC12391a aVar) {
        C15149k.m377b(viewHolder, "holder");
        C15149k.m377b(aVar, "item");
        ((C14545a) viewHolder).m1138a((C14547f) aVar, this.f32495a);
    }
}
