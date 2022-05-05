package p459j.p460a.p463b0.p467t;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import kotlin.Metadata;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/main/drawer/IapDrawerViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "()V", "onBindViewHolder", "", "holder", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.t.j */
/* loaded from: classes2-dex2jar.jar:j/a/b0/t/j.class */
public final class C11338j implements AbstractC12392b<C14666a> {

    /* renamed from: j.a.b0.t.j$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/j$a.class */
    public static final class View$OnClickListenerC11339a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC12391a f25429a;

        public View$OnClickListenerC11339a(C14666a aVar, AbstractC12391a aVar2) {
            this.f25429a = aVar2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Context context;
            if (view != null && (context = view.getContext()) != null) {
                ((C11333i) this.f25429a).m9762d().invoke(context);
            }
        }
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C14666a(viewGroup, R$layout.drawer_iap_item);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        Context a;
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        if ((aVar2 instanceof C11333i) && (a = aVar.m907a()) != null) {
            C11333i iVar = (C11333i) aVar2;
            boolean f = iVar.m9773f();
            ((TextView) aVar.m906a(R$id.tv_iap_text)).setText(iVar.m9764b().invoke(a));
            ImageView imageView = (ImageView) aVar.m906a(R$id.iv_iap_icon);
            AbstractC15118l<Context, Drawable> a2 = iVar.m9765a();
            imageView.setImageDrawable(a2 != null ? a2.invoke(a) : null);
            imageView.getLayoutParams().height = C14217x3.m2201a(f ? 20 : 26);
            imageView.getLayoutParams().width = C14217x3.m2201a(f ? 28 : 27);
            int i = 0;
            ((ImageView) aVar.m906a(R$id.iv_iap_news)).setVisibility(iVar.mo9761e() ? 0 : 8);
            ((ImageView) aVar.m906a(R$id.iv_iap_green_star)).setVisibility(f ? 8 : 0);
            ImageView imageView2 = (ImageView) aVar.m906a(R$id.iv_iap_star);
            if (f) {
                i = 8;
            }
            imageView2.setVisibility(i);
            aVar.itemView.setOnClickListener(new View$OnClickListenerC11339a(aVar, aVar2));
        }
    }
}
