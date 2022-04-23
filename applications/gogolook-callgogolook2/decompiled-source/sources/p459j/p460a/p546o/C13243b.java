package p459j.p460a.p546o;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$anim;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import java.util.HashMap;
import kotlin.Metadata;
import p459j.p460a.p546o.p547f.C13284b;
import p459j.p460a.p546o.p547f.C13291d;
import p459j.p460a.p546o.p548g.AbstractC13294c;
import p459j.p460a.p546o.p548g.AbstractC13295d;
import p459j.p460a.p546o.p548g.AbstractC13296e;
import p459j.p460a.p582w0.C14060l2;
import p459j.p460a.p582w0.C14130q3;
import p459j.p460a.p613z0.p617p.C14666a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14986p;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� !2\u00020\u00012\u00020\u0002:\u0003\u001f !B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0010H\u0016J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0010\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u001f\u0010\u0004\u001a\u00060\u0005R\u00020��8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\f\u0010\r¨\u0006\""}, m815d2 = {"Lgogolook/callgogolook2/cs/CategoryFragment;", "Lgogolook/callgogolook2/cs/CustomerServiceFragment;", "Lgogolook/callgogolook2/cs/presenter/ICategoryView;", "()V", "categoryAdapter", "Lgogolook/callgogolook2/cs/CategoryFragment$CategoryAdapter;", "getCategoryAdapter", "()Lgogolook/callgogolook2/cs/CategoryFragment$CategoryAdapter;", "categoryAdapter$delegate", "Lkotlin/Lazy;", "categoryPresenter", "Lgogolook/callgogolook2/cs/presenter/ICategoryPresenter;", "getCategoryPresenter", "()Lgogolook/callgogolook2/cs/presenter/ICategoryPresenter;", "categoryPresenter$delegate", "getTitle", "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", "view", "showCategories", "faqContent", "Lgogolook/callgogolook2/cs/model/FaqContent;", "CategoryAdapter", "CategoryPresenter", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.o.b */
/* loaded from: classes2-dex2jar.jar:j/a/o/b.class */
public final class C13243b extends AbstractC13251c implements AbstractC13295d {

    /* renamed from: f */
    public static final /* synthetic */ AbstractC14906i[] f29832f;

    /* renamed from: c */
    public final AbstractC14974f f29833c = C14975g.m662a(new C13250e());

    /* renamed from: d */
    public final AbstractC14974f f29834d = C14975g.m662a(new C13249d());

    /* renamed from: e */
    public HashMap f29835e;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018��2\u0010\u0012\f\u0012\n0\u0002R\u00060��R\u00020\u00030\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0016J \u0010\r\u001a\u00020\u000e2\u000e\u0010\u000f\u001a\n0\u0002R\u00060��R\u00020\u00032\u0006\u0010\u0010\u001a\u00020\fH\u0016J \u0010\u0011\u001a\n0\u0002R\u00060��R\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\fH\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0016"}, m815d2 = {"Lgogolook/callgogolook2/cs/CategoryFragment$CategoryAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lgogolook/callgogolook2/cs/CategoryFragment$CategoryAdapter$CategoryViewHolder;", "Lgogolook/callgogolook2/cs/CategoryFragment;", "(Lgogolook/callgogolook2/cs/CategoryFragment;)V", "faqContent", "Lgogolook/callgogolook2/cs/model/FaqContent;", "getFaqContent", "()Lgogolook/callgogolook2/cs/model/FaqContent;", "setFaqContent", "(Lgogolook/callgogolook2/cs/model/FaqContent;)V", "getItemCount", "", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "CategoryViewHolder", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: j.a.o.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/o/b$a.class */
    public final class C13244a extends RecyclerView.Adapter<C13245a> {

        /* renamed from: a */
        public C13291d f29836a;

        @Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\r"}, m815d2 = {"Lgogolook/callgogolook2/cs/CategoryFragment$CategoryAdapter$CategoryViewHolder;", "Lgogolook/callgogolook2/view/widget/BaseRecyclerViewHolder;", "parent", "Landroid/view/ViewGroup;", "(Lgogolook/callgogolook2/cs/CategoryFragment$CategoryAdapter;Landroid/view/ViewGroup;)V", "ivMore", "Landroid/widget/ImageView;", "tvName", "Landroid/widget/TextView;", "getTvName", "()Landroid/widget/TextView;", "setTvName", "(Landroid/widget/TextView;)V", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
        /* renamed from: j.a.o.b$a$a */
        /* loaded from: classes2-dex2jar.jar:j/a/o/b$a$a.class */
        public final class C13245a extends C14666a {

            /* renamed from: a */
            public TextView f29838a = (TextView) m906a(2131363467);

            /* renamed from: b */
            public ImageView f29839b = (ImageView) m906a(2131362470);

            /* renamed from: c */
            public final /* synthetic */ C13244a f29840c;

            /* renamed from: j.a.o.b$a$a$a */
            /* loaded from: classes2-dex2jar.jar:j/a/o/b$a$a$a.class */
            public static final class View$OnClickListenerC13246a implements View.OnClickListener {
                public View$OnClickListenerC13246a() {
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C13284b categories;
                    AbstractC13294c M = C13243b.this.m4369M();
                    C13291d a = C13245a.this.f29840c.m4366a();
                    C13284b categories2 = a != null ? a.categories(C13245a.this.getAdapterPosition()) : null;
                    if (categories2 != null) {
                        M.mo4317a(categories2);
                        FragmentManager fragmentManager = C13243b.this.getFragmentManager();
                        if (fragmentManager != null) {
                            FragmentTransaction customAnimations = fragmentManager.beginTransaction().setCustomAnimations(R$anim.slide_in_right, R$anim.slide_out_left, R$anim.slide_in_left, R$anim.slide_out_right);
                            C13227a aVar = new C13227a();
                            Bundle bundle = new Bundle();
                            C13291d a2 = C13245a.this.f29840c.m4366a();
                            if (!(a2 == null || (categories = a2.categories(C13245a.this.getAdapterPosition())) == null)) {
                                String gfIssueNo = categories.articles(0).gfIssueNo();
                                C15149k.m383a((Object) gfIssueNo, "it.articles(0).gfIssueNo()");
                                bundle.putInt("category_id", Integer.parseInt(gfIssueNo) / 100);
                                bundle.putInt("category_index", C13245a.this.getAdapterPosition());
                                Context context = C13243b.this.getContext();
                                if (context != null) {
                                    C15149k.m383a((Object) context, "this@CategoryFragment.context!!");
                                    String nameRes = categories.nameRes();
                                    C15149k.m383a((Object) nameRes, "it.nameRes()");
                                    bundle.putString("category_name", C14060l2.m2708a(context, nameRes, ""));
                                } else {
                                    C15149k.m378b();
                                    throw null;
                                }
                            }
                            aVar.setArguments(bundle);
                            customAnimations.add(R$id.fragment_container, aVar, "ArticleFragment").addToBackStack("ArticleFragment").commit();
                            return;
                        }
                        C15149k.m378b();
                        throw null;
                    }
                    C15149k.m378b();
                    throw null;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C13245a(C13244a aVar, ViewGroup viewGroup) {
                super(viewGroup, 2131558559);
                C15149k.m377b(viewGroup, "parent");
                this.f29840c = aVar;
                ((ImageView) m906a(2131362546)).setVisibility(8);
                ((TextView) m906a(2131363555)).setVisibility(8);
                this.f29838a.setVisibility(0);
                this.f29839b.setVisibility(0);
                this.f29839b.setImageResource(R$drawable.ic_more_gray);
                this.itemView.setBackgroundResource(R$drawable.list_selector);
                this.itemView.setOnClickListener(new View$OnClickListenerC13246a());
            }

            /* renamed from: b */
            public final TextView m4363b() {
                return this.f29838a;
            }
        }

        public C13244a() {
        }

        /* renamed from: a */
        public final C13291d m4366a() {
            return this.f29836a;
        }

        /* renamed from: a */
        public void onBindViewHolder(C13245a aVar, int i) {
            C13284b categories;
            C15149k.m377b(aVar, "holder");
            C13291d dVar = this.f29836a;
            if (dVar != null && (categories = dVar.categories(i)) != null) {
                TextView b = aVar.m4363b();
                Context context = C13243b.this.getContext();
                if (context != null) {
                    C15149k.m383a((Object) context, "context!!");
                    String nameRes = categories.nameRes();
                    C15149k.m383a((Object) nameRes, "it.nameRes()");
                    b.setText(C14060l2.m2708a(context, nameRes, ""));
                    return;
                }
                C15149k.m378b();
                throw null;
            }
        }

        /* renamed from: a */
        public final void m4364a(C13291d dVar) {
            this.f29836a = dVar;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int i;
            try {
                C13291d dVar = this.f29836a;
                i = 0;
                if (dVar != null) {
                    i = dVar.categoriesLength();
                }
            } catch (Exception e) {
                i = 0;
            }
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public C13245a onCreateViewHolder(ViewGroup viewGroup, int i) {
            C15149k.m377b(viewGroup, "parent");
            return new C13245a(this, viewGroup);
        }
    }

    /* renamed from: j.a.o.b$b */
    /* loaded from: classes2-dex2jar.jar:j/a/o/b$b.class */
    public static final class C13247b implements AbstractC13294c {

        /* renamed from: a */
        public final AbstractC13296e f29842a;

        /* renamed from: b */
        public final AbstractC13295d f29843b;

        public C13247b(AbstractC13296e eVar, AbstractC13295d dVar) {
            C15149k.m377b(eVar, "model");
            C15149k.m377b(dVar, "view");
            this.f29842a = eVar;
            this.f29843b = dVar;
        }

        @Override // p459j.p460a.p546o.p548g.AbstractC13294c
        /* renamed from: a */
        public void mo4318a() {
            this.f29843b.mo4316a(this.f29842a.mo4314v());
        }

        @Override // p459j.p460a.p546o.p548g.AbstractC13294c
        /* renamed from: a */
        public void mo4317a(C13284b bVar) {
            C15149k.m377b(bVar, "category");
        }
    }

    /* renamed from: j.a.o.b$c */
    /* loaded from: classes2-dex2jar.jar:j/a/o/b$c.class */
    public static final class C13248c {
        public C13248c() {
        }

        public /* synthetic */ C13248c(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.o.b$d */
    /* loaded from: classes2-dex2jar.jar:j/a/o/b$d.class */
    public static final class C13249d extends AbstractC15150l implements AbstractC15107a<C13244a> {
        public C13249d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C13244a invoke() {
            return new C13244a();
        }
    }

    /* renamed from: j.a.o.b$e */
    /* loaded from: classes2-dex2jar.jar:j/a/o/b$e.class */
    public static final class C13250e extends AbstractC15150l implements AbstractC15107a<C13247b> {
        public C13250e() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C13247b invoke() {
            FragmentActivity activity = C13243b.this.getActivity();
            if (activity != null) {
                return new C13247b((AbstractC13296e) activity, C13243b.this);
            }
            throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.cs.presenter.IFaqContentModel");
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C13243b.class), "categoryPresenter", "getCategoryPresenter()Lgogolook/callgogolook2/cs/presenter/ICategoryPresenter;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C13243b.class), "categoryAdapter", "getCategoryAdapter()Lgogolook/callgogolook2/cs/CategoryFragment$CategoryAdapter;");
        C15131a0.m412a(sVar2);
        f29832f = new AbstractC14906i[]{sVar, sVar2};
        new C13248c(null);
    }

    @Override // p459j.p460a.p546o.AbstractC13251c
    /* renamed from: J */
    public void mo4362J() {
        HashMap hashMap = this.f29835e;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // p459j.p460a.p546o.AbstractC13251c
    /* renamed from: K */
    public String mo4361K() {
        String string = getString(R$string.drawer_help_title);
        C15149k.m383a((Object) string, "getString(R.string.drawer_help_title)");
        return string;
    }

    /* renamed from: L */
    public final C13244a m4370L() {
        AbstractC14974f fVar = this.f29834d;
        AbstractC14906i iVar = f29832f[1];
        return (C13244a) fVar.getValue();
    }

    /* renamed from: M */
    public final AbstractC13294c m4369M() {
        AbstractC14974f fVar = this.f29833c;
        AbstractC14906i iVar = f29832f[0];
        return (AbstractC13294c) fVar.getValue();
    }

    @Override // p459j.p460a.p546o.p548g.AbstractC13295d
    /* renamed from: a */
    public void mo4316a(C13291d dVar) {
        C15149k.m377b(dVar, "faqContent");
        m4370L().m4364a(dVar);
        m4370L().notifyDataSetChanged();
    }

    /* renamed from: b */
    public View m4367b(int i) {
        if (this.f29835e == null) {
            this.f29835e = new HashMap();
        }
        View view = (View) this.f29835e.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f29835e.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C15149k.m377b(layoutInflater, "inflater");
        return layoutInflater.inflate(R$layout.layout_recyclerview, viewGroup, false);
    }

    @Override // p459j.p460a.p546o.AbstractC13251c, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo4362J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = (RecyclerView) m4367b(R$id.recycler_view);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(recyclerView.getContext());
        linearLayoutManager.setOrientation(1);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.addItemDecoration(new C14130q3());
        recyclerView.setAdapter(m4370L());
        m4369M().mo4318a();
    }
}
