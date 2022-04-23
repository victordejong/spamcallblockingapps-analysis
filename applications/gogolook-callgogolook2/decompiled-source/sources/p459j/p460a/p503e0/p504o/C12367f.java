package p459j.p460a.p503e0.p504o;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.gson.NumberInfo;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p503e0.C12300f;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p511h.AbstractC12392b;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.C14986p;
import p626l.p632u.C15021m;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/ndp/delegate/PublicSearchViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/adapter/ViewTypeDelegateAdapter;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "()V", "onBindViewHolder", "", "holder", "item", "Lgogolook/callgogolook2/adapter/ViewData;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.e0.o.f */
/* loaded from: classes3-dex2jar.jar:j/a/e0/o/f.class */
public final class C12367f implements AbstractC12392b<C14666a> {

    /* renamed from: j.a.e0.o.f$a */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/o/f$a.class */
    public static final class View$OnClickListenerC12368a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ NumberInfo.PublicSearch f27882a;

        /* renamed from: b */
        public final /* synthetic */ C12300f.C12312l f27883b;

        public View$OnClickListenerC12368a(NumberInfo.PublicSearch publicSearch, int i, C12300f.C12312l lVar) {
            this.f27882a = publicSearch;
            this.f27883b = lVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f27883b.m6407a().invoke(this.f27882a);
        }
    }

    @Override // p459j.p460a.p511h.AbstractC12392b
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C14666a mo1120a(ViewGroup viewGroup) {
        C15149k.m377b(viewGroup, "parent");
        return new C14666a(viewGroup, R$layout.ndp_info_type_public_search_item);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1119a(C14666a aVar, AbstractC12391a aVar2) {
        C15149k.m377b(aVar, "holder");
        C15149k.m377b(aVar2, "item");
        if (aVar2 instanceof C12300f.C12315o) {
            C12300f fVar = C12300f.f27753a;
            View view = aVar.itemView;
            if (view != null) {
                ViewGroup viewGroup = (ViewGroup) view;
                AbstractC12391a aVar3 = ((C12300f.C12315o) aVar2).m6403a().get(500);
                if (!(aVar3 instanceof C12300f.C12312l)) {
                    aVar3 = null;
                }
                if (aVar3 != null) {
                    C12300f.C12312l lVar = (C12300f.C12312l) aVar3;
                    View findViewById = viewGroup.findViewById(R$id.layout_search_item_0);
                    C15149k.m383a((Object) findViewById, "itemView.findViewById(R.id.layout_search_item_0)");
                    ViewGroup viewGroup2 = (ViewGroup) findViewById;
                    View findViewById2 = viewGroup.findViewById(R$id.layout_search_item_1);
                    C15149k.m383a((Object) findViewById2, "itemView.findViewById(R.id.layout_search_item_1)");
                    ViewGroup viewGroup3 = (ViewGroup) findViewById2;
                    View findViewById3 = viewGroup.findViewById(R$id.layout_search_item_2);
                    C15149k.m383a((Object) findViewById3, "itemView.findViewById(R.id.layout_search_item_2)");
                    ViewGroup viewGroup4 = (ViewGroup) findViewById3;
                    View findViewById4 = viewGroup.findViewById(R$id.layout_search_item_3);
                    C15149k.m383a((Object) findViewById4, "itemView.findViewById(R.id.layout_search_item_3)");
                    ViewGroup viewGroup5 = (ViewGroup) findViewById4;
                    View findViewById5 = viewGroup.findViewById(R$id.layout_search_item_4);
                    C15149k.m383a((Object) findViewById5, "itemView.findViewById(R.id.layout_search_item_4)");
                    List c = C15021m.m557c(viewGroup2, viewGroup3, viewGroup4, viewGroup5, (ViewGroup) findViewById5);
                    int size = lVar.m6406b().size();
                    int i = 0;
                    for (Object obj : c) {
                        if (i >= 0) {
                            ViewGroup viewGroup6 = (ViewGroup) obj;
                            if (i < size) {
                                NumberInfo.PublicSearch publicSearch = lVar.m6406b().get(i);
                                View findViewById6 = viewGroup6.findViewById(R$id.tv_title);
                                C15149k.m383a((Object) findViewById6, "findViewById<TextView>(R.id.tv_title)");
                                ((TextView) findViewById6).setText(publicSearch.title);
                                View findViewById7 = viewGroup6.findViewById(R$id.tv_content);
                                C15149k.m383a((Object) findViewById7, "findViewById<TextView>(R.id.tv_content)");
                                ((TextView) findViewById7).setText(publicSearch.descr);
                                View findViewById8 = viewGroup6.findViewById(R$id.tv_url);
                                C15149k.m383a((Object) findViewById8, "findViewById<TextView>(R.id.tv_url)");
                                ((TextView) findViewById8).setText(publicSearch.url);
                                viewGroup6.setOnClickListener(new View$OnClickListenerC12368a(publicSearch, size, lVar));
                                viewGroup6.setVisibility(0);
                            } else {
                                viewGroup6.setVisibility(8);
                            }
                            i++;
                        } else {
                            C15021m.m558c();
                            throw null;
                        }
                    }
                    viewGroup.setVisibility(0);
                    return;
                }
                viewGroup.setVisibility(8);
                return;
            }
            throw new C14986p("null cannot be cast to non-null type android.view.ViewGroup");
        }
    }
}
