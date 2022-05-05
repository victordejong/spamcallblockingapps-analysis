package p459j.p460a.p463b0.p464q;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ListPopupWindow;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.R$style;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import p459j.p460a.p463b0.C11142n;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p613z0.p614m.C14655b;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.p632u.C15026r;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0002¨\u0006\u0011"}, m815d2 = {"Lgogolook/callgogolook2/main/calllog/FilterViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/main/calllog/CallLogsPageViewTypeDelegateAdapter;", "adapter", "Lgogolook/callgogolook2/main/calllog/CallLogsPageRecyclerViewAdapter;", "(Lgogolook/callgogolook2/main/calllog/CallLogsPageRecyclerViewAdapter;)V", "onBindViewHolder", "", "holder", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "showFilterPopMenu", "view", "Landroid/view/View;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.q.x */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/x.class */
public final class C11208x extends AbstractC11183p {

    /* renamed from: j.a.b0.q.x$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/q/x$a.class */
    public static final class View$OnClickListenerC11209a implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C14666a f25158b;

        public View$OnClickListenerC11209a(C14666a aVar) {
            this.f25158b = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C11208x.this.m10024a(((C11206v) this.f25158b).m10026b());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11208x(C11175m mVar) {
        super(mVar);
        C15149k.m377b(mVar, "adapter");
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C11206v(viewGroup, R$layout.call_log_list_view_item_filter);
    }

    /* renamed from: a */
    public final void m10024a(View view) {
        ArrayList arrayList = new ArrayList();
        String[] a = C11142n.m10206a();
        C15149k.m383a((Object) a, "MainFilter.getFilterList()");
        C15026r.m551a(arrayList, a);
        C14655b bVar = new C14655b(C11142n.m10200c(), arrayList, C11142n.m10200c());
        ListPopupWindow listPopupWindow = new ListPopupWindow(view.getContext(), null, 0, R$style.MyPopupMenu);
        listPopupWindow.setDropDownGravity(8388613);
        listPopupWindow.setAnchorView(view);
        Context context = view.getContext();
        C15149k.m383a((Object) context, "view.context");
        listPopupWindow.setWidth(context.getResources().getDimensionPixelSize(R$dimen.popup_menu_width));
        listPopupWindow.setHeight(-2);
        listPopupWindow.setModal(true);
        listPopupWindow.setAdapter(bVar);
        listPopupWindow.show();
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        String str;
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        if (aVar2.getViewType() == 2 && (aVar instanceof C11206v)) {
            int c = C11142n.m10200c();
            if (C11142n.m10199c(c)) {
                str = C14206w4.m2225a((int) R$string.calllog_fliter_all);
            } else {
                C15136c0 c0Var = C15136c0.f33133a;
                String a = C14206w4.m2225a((int) R$string.calllog_filter_title);
                Object[] objArr = {Integer.valueOf(C11142n.m10202b(c))};
                str = String.format(a, Arrays.copyOf(objArr, objArr.length));
                C15149k.m383a((Object) str, "java.lang.String.format(format, *args)");
            }
            ((C11206v) aVar).m10025c().setText(str);
            aVar.itemView.setOnClickListener(new View$OnClickListenerC11209a(aVar));
        }
    }
}
