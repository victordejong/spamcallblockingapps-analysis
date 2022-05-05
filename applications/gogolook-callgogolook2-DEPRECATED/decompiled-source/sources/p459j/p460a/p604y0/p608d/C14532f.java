package p459j.p460a.p604y0.p608d;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.vas.main.VasDetectionActivity;
import gogolook.callgogolook2.vas.main.adapter.VasMessageItem;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import p459j.p460a.p550p.AbstractC13306i;
import p459j.p460a.p582w0.C14197v4;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p604y0.p608d.p609h.C14539c;
import p459j.p460a.p604y0.p608d.p609h.C14540d;
import p459j.p460a.p613z0.DialogC14618f;
import p626l.C14978j;
import p626l.C14986p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� \u001e2\u00020\u0001:\u0001\u001eB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010\u001b\u001a\u00020\u0012H\u0016J\u001a\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u00162\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n��¨\u0006\u001f"}, m815d2 = {"Lgogolook/callgogolook2/vas/main/VasPromotionFragment;", "Landroidx/fragment/app/Fragment;", "()V", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "sourceFrom", "", "getSourceFrom", "()I", "setSourceFrom", "(I)V", "viewDataBinding", "Lgogolook/callgogolook2/databinding/FragmentVasPromotionBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onResume", "onViewCreated", "view", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.d.f */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/f.class */
public final class C14532f extends Fragment {

    /* renamed from: e */
    public static final C14533a f32472e = new C14533a(null);

    /* renamed from: a */
    public AbstractC13306i f32473a;

    /* renamed from: b */
    public RecyclerView f32474b;

    /* renamed from: c */
    public int f32475c = 3;

    /* renamed from: d */
    public HashMap f32476d;

    /* renamed from: j.a.y0.d.f$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/f$a.class */
    public static final class C14533a {
        public C14533a() {
        }

        public /* synthetic */ C14533a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C14532f m1157a(C14978j<? extends ArrayList<VasMessageItem>, C14507a> jVar) {
            C15149k.m377b(jVar, "pair");
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("vas_message_list", (ArrayList) jVar.m659c());
            bundle.putLong("vas_entry", jVar.m658d().m1211b());
            bundle.putInt("vas_gf_source", jVar.m658d().m1210c());
            C14532f fVar = new C14532f();
            fVar.setArguments(bundle);
            return fVar;
        }
    }

    /* renamed from: j.a.y0.d.f$b */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/f$b.class */
    public static final class C14534b implements C14540d.AbstractC14543c {
        public C14534b() {
        }

        @Override // p459j.p460a.p604y0.p608d.p609h.C14540d.AbstractC14543c
        /* renamed from: a */
        public void mo1141a() {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(C14532f.this.getActivity());
            fVar.m981b(R$string.vas_result_subscription_explanation_dialog);
            fVar.m980b(R$string.vas_result_subscription_explanation_dialog_btn, (DialogInterface.OnClickListener) null);
            fVar.m982b();
        }

        @Override // p459j.p460a.p604y0.p608d.p609h.C14540d.AbstractC14543c
        /* renamed from: a */
        public void mo1140a(String str) {
            C15149k.m377b(str, "number");
        }
    }

    /* renamed from: J */
    public void m1159J() {
        HashMap hashMap = this.f32476d;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: b */
    public View m1158b(int i) {
        if (this.f32476d == null) {
            this.f32476d = new HashMap();
        }
        View view = (View) this.f32476d.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f32476d.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            AppCompatActivity appCompatActivity = (AppCompatActivity) activity;
            C14197v4.m2246c(appCompatActivity.getWindow());
            ActionBar supportActionBar = appCompatActivity.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.show();
                return;
            }
            return;
        }
        throw new C14986p("null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C15149k.m377b(layoutInflater, "inflater");
        AbstractC13306i a = AbstractC13306i.m4293a(layoutInflater, viewGroup, false);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            a.mo4291a(((VasDetectionActivity) activity).m25968G());
            C15149k.m383a((Object) a, "FragmentVasPromotionBind…tainViewModel()\n        }");
            this.f32473a = a;
            AbstractC13306i iVar = this.f32473a;
            if (iVar != null) {
                return iVar.getRoot();
            }
            C15149k.m373d("viewDataBinding");
            throw null;
        }
        throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.vas.main.VasDetectionActivity");
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m1159J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Bundle arguments = getArguments();
        String str = null;
        if (arguments != null) {
            ArrayList<VasMessageItem> parcelableArrayList = arguments.getParcelableArrayList("vas_message_list");
            Bundle arguments2 = getArguments();
            if (arguments2 != null) {
                long j = arguments2.getLong("vas_entry");
                if (parcelableArrayList == null || j == 2) {
                    AbstractC13306i iVar = this.f32473a;
                    if (iVar != null) {
                        C14508b a = iVar.m4294a();
                        if (a != null) {
                            a.m1207a(this.f32475c);
                            return;
                        }
                        return;
                    }
                    C15149k.m373d("viewDataBinding");
                    throw null;
                }
                RecyclerView recyclerView = this.f32474b;
                RecyclerView.Adapter adapter = recyclerView != null ? recyclerView.getAdapter() : null;
                if (adapter != null) {
                    C14540d dVar = (C14540d) adapter;
                    if (dVar != null) {
                        dVar.m1142a(new C14534b());
                    }
                    dVar.m1146a(getResources().getColor(2131100075));
                    Context context = getContext();
                    if (context != null) {
                        C15149k.m383a((Object) context, "context!!");
                        AbstractC13306i iVar2 = this.f32473a;
                        if (iVar2 != null) {
                            C14508b a2 = iVar2.m4294a();
                            if (a2 != null) {
                                str = a2.m1181p();
                            }
                            dVar.m1144a(context, parcelableArrayList, str);
                            return;
                        }
                        C15149k.m373d("viewDataBinding");
                        throw null;
                    }
                    C15149k.m378b();
                    throw null;
                }
                throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.vas.main.adapter.VasAdapter");
            }
            C15149k.m378b();
            throw null;
        }
        C15149k.m378b();
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        super.onViewCreated(view, bundle);
        this.f32474b = (RecyclerView) m1158b(R$id.promotion_list);
        RecyclerView recyclerView = this.f32474b;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
            AbstractC13306i iVar = this.f32473a;
            if (iVar != null) {
                recyclerView.setAdapter(new C14540d(iVar != null ? iVar.m4294a() : null));
                recyclerView.addItemDecoration(new C14539c(24));
            } else {
                C15149k.m373d("viewDataBinding");
                throw null;
            }
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f32475c = arguments.getInt("vas_gf_source");
            C14289m.m1866c((Integer) 6, Integer.valueOf(this.f32475c));
            C14261f.m1962e();
            return;
        }
        C15149k.m378b();
        throw null;
    }
}
