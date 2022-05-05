package p459j.p460a.p604y0.p608d.p609h;

import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import kotlin.Metadata;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p604y0.p611f.C14592c;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\r"}, m815d2 = {"Lgogolook/callgogolook2/vas/main/adapter/VasSpannableMessageSectionDelegateAdapter;", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "()V", "onBindViewHolder", "", "holder", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "VasSpannableMessageSectionViewHolder", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.d.h.n */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/n.class */
public final class C14564n implements AbstractC12392b<RecyclerView.ViewHolder> {

    /* renamed from: j.a.y0.d.h.n$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/h/n$a.class */
    public static final class C14565a extends RecyclerView.ViewHolder {

        /* renamed from: a */
        public final TextView f32531a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14565a(ViewGroup viewGroup) {
            super(C14592c.m1048a(viewGroup, R$layout.vas_spannable_message_section, false, 2, null));
            C15149k.m377b(viewGroup, "parent");
            View view = this.itemView;
            C15149k.m383a((Object) view, "itemView");
            this.f32531a = (TextView) view.findViewById(R$id.tv_title);
        }

        /* renamed from: a */
        public final void m1118a(C14566o oVar) {
            C15149k.m377b(oVar, "item");
            TextView textView = this.f32531a;
            C15149k.m383a((Object) textView, "title");
            textView.setText(oVar.m1116b());
            this.f32531a.setTextColor(oVar.m1117a());
            TextView textView2 = this.f32531a;
            C15149k.m383a((Object) textView2, "title");
            textView2.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a */
    public RecyclerView.ViewHolder mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C14565a(viewGroup);
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a */
    public void mo1119a(RecyclerView.ViewHolder viewHolder, AbstractC12391a aVar) {
        C15149k.m377b(viewHolder, "holder");
        C15149k.m377b(aVar, "item");
        ((C14565a) viewHolder).m1118a((C14566o) aVar);
    }
}
