package p459j.p460a.p604y0.p608d;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import gogolook.callgogolook2.R$anim;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.vas.main.VasDetectionActivity;
import java.util.HashMap;
import kotlin.Metadata;
import p459j.p460a.p550p.AbstractC13308k;
import p459j.p460a.p582w0.p590x4.C14289m;
import p626l.C14986p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� \u00122\u00020\u0001:\u0001\u0012B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J&\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J\b\u0010\u000f\u001a\u00020\u0006H\u0016J\u001a\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n��¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/vas/main/VasScanFragment;", "Landroidx/fragment/app/Fragment;", "()V", "viewDataBinding", "Lgogolook/callgogolook2/databinding/FragmentVasScanBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onResume", "onViewCreated", "view", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.d.g */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/g.class */
public final class C14535g extends Fragment {

    /* renamed from: c */
    public static final C14536a f32478c = new C14536a(null);

    /* renamed from: a */
    public AbstractC13308k f32479a;

    /* renamed from: b */
    public HashMap f32480b;

    /* renamed from: j.a.y0.d.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/g$a.class */
    public static final class C14536a {
        public C14536a() {
        }

        public /* synthetic */ C14536a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C14535g m1154a(long j, int i) {
            Bundle bundle = new Bundle();
            bundle.putLong("vas_entry", j);
            bundle.putInt("vas_gf_source", i);
            C14535g gVar = new C14535g();
            gVar.setArguments(bundle);
            return gVar;
        }
    }

    /* renamed from: J */
    public void m1156J() {
        HashMap hashMap = this.f32480b;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: b */
    public View m1155b(int i) {
        if (this.f32480b == null) {
            this.f32480b = new HashMap();
        }
        View view = (View) this.f32480b.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f32480b.put(Integer.valueOf(i), view2);
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
        AbstractC13308k a = AbstractC13308k.m4289a(layoutInflater, viewGroup, false);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            a.mo4286a(((VasDetectionActivity) activity).m25968G());
            C15149k.m383a((Object) a, "FragmentVasScanBinding.i…tainViewModel()\n        }");
            this.f32479a = a;
            AbstractC13308k kVar = this.f32479a;
            if (kVar != null) {
                return kVar.getRoot();
            }
            C15149k.m373d("viewDataBinding");
            throw null;
        }
        throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.vas.main.VasDetectionActivity");
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m1156J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        AbstractC13308k kVar = this.f32479a;
        if (kVar != null) {
            C14508b a = kVar.m4290a();
            if (a != null) {
                Bundle arguments = getArguments();
                if (arguments != null) {
                    long j = arguments.getLong("vas_entry");
                    Bundle arguments2 = getArguments();
                    if (arguments2 != null) {
                        a.m1205a(j, arguments2.getInt("vas_gf_source"));
                    } else {
                        C15149k.m378b();
                        throw null;
                    }
                } else {
                    C15149k.m378b();
                    throw null;
                }
            }
            Animation loadAnimation = AnimationUtils.loadAnimation(getActivity(), R$anim.vas_rotate_tail);
            Animation loadAnimation2 = AnimationUtils.loadAnimation(getActivity(), R$anim.vas_rotate_head);
            Animation loadAnimation3 = AnimationUtils.loadAnimation(getActivity(), R$anim.vas_rotate_envelope);
            Animation loadAnimation4 = AnimationUtils.loadAnimation(getActivity(), R$anim.vas_rotate_shake);
            ((ImageView) m1155b(R$id.iv_tail)).startAnimation(loadAnimation);
            ((ImageView) m1155b(R$id.iv_head)).startAnimation(loadAnimation2);
            ((ImageView) m1155b(R$id.iv_top_envelope)).startAnimation(loadAnimation3);
            ((ImageView) m1155b(R$id.iv_shake)).startAnimation(loadAnimation4);
            return;
        }
        C15149k.m373d("viewDataBinding");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            C14289m.m1866c((Integer) 3, Integer.valueOf(arguments.getInt("vas_gf_source")));
        } else {
            C15149k.m378b();
            throw null;
        }
    }
}
