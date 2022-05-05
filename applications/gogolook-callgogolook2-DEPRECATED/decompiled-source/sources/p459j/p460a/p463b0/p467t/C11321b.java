package p459j.p460a.p463b0.p467t;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.WebActivity;
import kotlin.Metadata;
import p081h.p119d.p120a.C5776l;
import p459j.p460a.p463b0.p468u.C11397b;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/main/drawer/BannerDrawerViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "()V", "onBindViewHolder", "", "holder", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.t.b */
/* loaded from: classes2-dex2jar.jar:j/a/b0/t/b.class */
public final class C11321b implements AbstractC12392b<C14666a> {

    /* renamed from: j.a.b0.t.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/t/b$a.class */
    public static final class View$OnClickListenerC11322a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f25415a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC12391a f25416b;

        public View$OnClickListenerC11322a(Context context, AbstractC12391a aVar) {
            this.f25415a = context;
            this.f25416b = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C15149k.m383a((Object) view, "it");
            Context context = view.getContext();
            Intent intent = new Intent(this.f25415a, WebActivity.class);
            intent.putExtra("title", ((C11319a) this.f25416b).m9786c());
            intent.putExtra("url", ((C11319a) this.f25416b).m9787b());
            C14191v.m2257a(context, intent, null, 2, null);
            C11397b.m9695a("banner", ((C11319a) this.f25416b).m9787b());
        }
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C14666a(viewGroup, R$layout.drawer_item_mkt_campaign);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        Context a = aVar.m907a();
        if (a != null && (aVar2 instanceof C11319a)) {
            C5776l.m24470c(a).m24450a(((C11319a) aVar2).m9788a()).m24524l().mo24518a((ImageView) aVar.m906a(R$id.iv_activities));
            aVar.itemView.setOnClickListener(new View$OnClickListenerC11322a(a, aVar2));
        }
    }
}
