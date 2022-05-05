package p459j.p460a.p604y0.p608d;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.vas.main.VasDetectionActivity;
import java.util.HashMap;
import kotlin.Metadata;
import p459j.p460a.p550p.AbstractC13300c;
import p459j.p460a.p582w0.C14197v4;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p604y0.p611f.C14589b;
import p459j.p460a.p613z0.DialogC14618f;
import p626l.C14986p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� \u00162\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\u0013\u001a\u00020\nH\u0016J\u001a\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u000e2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n��¨\u0006\u0017"}, m815d2 = {"Lgogolook/callgogolook2/vas/main/VasEmptyFragment;", "Landroidx/fragment/app/Fragment;", "()V", "viewDataBinding", "Lgogolook/callgogolook2/databinding/FragmentVasEmptyBinding;", "genShortDisclaimerMessage", "Landroid/text/SpannableStringBuilder;", "context", "Landroid/content/Context;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onResume", "onViewCreated", "view", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.d.c */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/c.class */
public final class C14519c extends Fragment {

    /* renamed from: c */
    public static final C14520a f32450c = new C14520a(null);

    /* renamed from: a */
    public AbstractC13300c f32451a;

    /* renamed from: b */
    public HashMap f32452b;

    /* renamed from: j.a.y0.d.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/c$a.class */
    public static final class C14520a {
        public C14520a() {
        }

        public /* synthetic */ C14520a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C14519c m1169a(int i) {
            Bundle bundle = new Bundle();
            bundle.putInt("vas_gf_source", i);
            C14519c cVar = new C14519c();
            cVar.setArguments(bundle);
            return cVar;
        }
    }

    /* renamed from: j.a.y0.d.c$b */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/c$b.class */
    public static final class C14521b extends ClickableSpan {
        public C14521b() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(C14519c.this.getActivity());
            fVar.m981b(R$string.vas_result_subscription_explanation_dialog);
            fVar.m980b(R$string.vas_result_subscription_explanation_dialog_btn, (DialogInterface.OnClickListener) null);
            fVar.m982b();
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            if (textPaint != null) {
                textPaint.setUnderlineText(true);
            }
        }
    }

    /* renamed from: j.a.y0.d.c$c */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/c$c.class */
    public static final class View$OnClickListenerC14522c implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ int f32455b;

        public View$OnClickListenerC14522c(int i) {
            this.f32455b = i;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C14589b<Void> e;
            C14508b a = C14519c.m1171a(C14519c.this).m4306a();
            if (!(a == null || (e = a.m1192e()) == null)) {
                e.m1052a();
            }
            C14289m.m1866c((Integer) 8, Integer.valueOf(this.f32455b));
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC13300c m1171a(C14519c cVar) {
        AbstractC13300c cVar2 = cVar.f32451a;
        if (cVar2 != null) {
            return cVar2;
        }
        C15149k.m373d("viewDataBinding");
        throw null;
    }

    /* renamed from: J */
    public void m1173J() {
        HashMap hashMap = this.f32452b;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: a */
    public final SpannableStringBuilder m1172a(Context context) {
        C15149k.m377b(context, "context");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(context.getString(R$string.vas_result_subscription_explanation));
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append((CharSequence) context.getString(R$string.vas_result_subscription_explanation_detail));
        spannableStringBuilder.setSpan(new C14521b(), length, spannableStringBuilder.length(), 33);
        return spannableStringBuilder;
    }

    /* renamed from: b */
    public View m1170b(int i) {
        if (this.f32452b == null) {
            this.f32452b = new HashMap();
        }
        View view = (View) this.f32452b.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f32452b.put(Integer.valueOf(i), view2);
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
        AbstractC13300c a = AbstractC13300c.m4305a(layoutInflater, viewGroup, false);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            a.mo4303a(((VasDetectionActivity) activity).m25968G());
            C15149k.m383a((Object) a, "FragmentVasEmptyBinding.…tainViewModel()\n        }");
            this.f32451a = a;
            AbstractC13300c cVar = this.f32451a;
            if (cVar != null) {
                return cVar.getRoot();
            }
            C15149k.m373d("viewDataBinding");
            throw null;
        }
        throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.vas.main.VasDetectionActivity");
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m1173J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        super.onViewCreated(view, bundle);
        TextView textView = (TextView) m1170b(R$id.tv_empty_scan);
        Bundle arguments = getArguments();
        if (arguments != null) {
            int i = arguments.getInt("vas_gf_source");
            TextView textView2 = (TextView) m1170b(R$id.tv_disclaimer);
            textView.setOnClickListener(new View$OnClickListenerC14522c(i));
            C15149k.m383a((Object) textView2, "tvDisclaimer");
            FragmentActivity activity = getActivity();
            if (activity != null) {
                C15149k.m383a((Object) activity, "activity!!");
                textView2.setText(m1172a(activity));
                textView2.setMovementMethod(LinkMovementMethod.getInstance());
                C14289m.m1866c((Integer) 5, Integer.valueOf(i));
                C14261f.m1964d();
                return;
            }
            C15149k.m378b();
            throw null;
        }
        C15149k.m378b();
        throw null;
    }
}
