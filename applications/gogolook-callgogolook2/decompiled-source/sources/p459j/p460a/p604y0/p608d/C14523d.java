package p459j.p460a.p604y0.p608d;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.vas.main.VasDetectionActivity;
import java.util.HashMap;
import kotlin.Metadata;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p550p.AbstractC13302e;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p604y0.p611f.C14589b;
import p626l.C14986p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� \u00122\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J&\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\u000f\u001a\u00020\u0006H\u0016J\u001a\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n��¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/vas/main/VasIntroFragment;", "Landroidx/fragment/app/Fragment;", "()V", "viewDataBinding", "Lgogolook/callgogolook2/databinding/FragmentVasIntroBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onResume", "onViewCreated", "view", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.d.d */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/d.class */
public final class C14523d extends Fragment {

    /* renamed from: c */
    public static final C14524a f32456c = new C14524a(null);

    /* renamed from: a */
    public AbstractC13302e f32457a;

    /* renamed from: b */
    public HashMap f32458b;

    /* renamed from: j.a.y0.d.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/d$a.class */
    public static final class C14524a {
        public C14524a() {
        }

        public /* synthetic */ C14524a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C14523d m1165a(int i) {
            Bundle bundle = new Bundle();
            bundle.putInt("vas_gf_source", i);
            C14523d dVar = new C14523d();
            dVar.setArguments(bundle);
            return dVar;
        }
    }

    /* renamed from: j.a.y0.d.d$b */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/d$b.class */
    public static final class View$OnClickListenerC14525b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ int f32460b;

        public View$OnClickListenerC14525b(int i) {
            this.f32460b = i;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C14589b<Void> b;
            C14508b a = C14523d.m1167a(C14523d.this).m4302a();
            if (!(a == null || (b = a.m1199b()) == null)) {
                b.m1052a();
            }
            C14289m.m1866c((Integer) 2, Integer.valueOf(this.f32460b));
        }
    }

    /* renamed from: j.a.y0.d.d$c */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/d$c.class */
    public static final class View$OnClickListenerC14526c implements View.OnClickListener {
        public View$OnClickListenerC14526c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            FragmentActivity activity = C14523d.this.getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC13302e m1167a(C14523d dVar) {
        AbstractC13302e eVar = dVar.f32457a;
        if (eVar != null) {
            return eVar;
        }
        C15149k.m373d("viewDataBinding");
        throw null;
    }

    /* renamed from: J */
    public void m1168J() {
        HashMap hashMap = this.f32458b;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: b */
    public View m1166b(int i) {
        if (this.f32458b == null) {
            this.f32458b = new HashMap();
        }
        View view = (View) this.f32458b.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f32458b.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            ActionBar supportActionBar = ((AppCompatActivity) activity).getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.hide();
                return;
            }
            return;
        }
        throw new C14986p("null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C15149k.m377b(layoutInflater, "inflater");
        AbstractC13302e a = AbstractC13302e.m4301a(layoutInflater, viewGroup, false);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            a.mo4299a(((VasDetectionActivity) activity).m25968G());
            C15149k.m383a((Object) a, "FragmentVasIntroBinding.…tainViewModel()\n        }");
            this.f32457a = a;
            AbstractC13302e eVar = this.f32457a;
            if (eVar != null) {
                return eVar.getRoot();
            }
            C15149k.m373d("viewDataBinding");
            throw null;
        }
        throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.vas.main.VasDetectionActivity");
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m1168J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        super.onViewCreated(view, bundle);
        TextView textView = (TextView) m1166b(R$id.tv_vas_intro_scan);
        ImageView imageView = (ImageView) m1166b(R$id.iv_vas_intro_close);
        TextView textView2 = (TextView) m1166b(R$id.tv_vas_intro_default_sms);
        Bundle arguments = getArguments();
        if (arguments != null) {
            int i = arguments.getInt("vas_gf_source");
            textView.setOnClickListener(new View$OnClickListenerC14525b(i));
            imageView.setOnClickListener(new View$OnClickListenerC14526c());
            C15149k.m383a((Object) textView2, "defaultSMSText");
            textView2.setVisibility(C12810o.m5233l() ? 8 : 0);
            C14289m.m1866c((Integer) 1, Integer.valueOf(i));
            return;
        }
        C15149k.m378b();
        throw null;
    }
}
