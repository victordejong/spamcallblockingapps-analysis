package p193e.p194a.p1195s.p1207q.p1208e;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.button.MaterialButton;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.callhero_assistant.C3605R;
import com.truecaller.callhero_assistant.onboarding.OnboardingStep;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1188r3.p1189j.AbstractC19917a;
import p193e.p194a.p1188r3.p1189j.C19918b;
import p193e.p194a.p1195s.AbstractC20009b;
import p193e.p194a.p1195s.AbstractC20012e;
import p193e.p194a.p1195s.p1199l.C20028e;
import s1.a.l;
import s1.z.c.d0;
import s1.z.c.m;
import s1.z.c.w;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b.\u0010\rJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u0011\u001a\u00020\u00052\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u001e\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\rR\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001d\u0010-\u001a\u00020(8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,¨\u0006/"}, d2 = {"Le/a/s/q/e/d;", "Landroidx/fragment/app/Fragment;", "Le/a/s/q/e/f;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "", "", "names", "eo", "(Ljava/util/List;)V", "", "position", "Mx", "(I)V", "", "visible", "vz", "(Z)V", "number", "Da", "(Ljava/lang/String;)V", "mg", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Le/a/s/q/e/e;", "a", "Le/a/s/q/e/e;", "getPresenter", "()Le/a/s/q/e/e;", "setPresenter", "(Le/a/s/q/e/e;)V", "presenter", "Le/a/s/l/e;", C22021b.f61237c, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/s/l/e;", "binding", "<init>", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.s.q.e.d */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/e/d.class */
public final class C20119d extends Fragment implements AbstractC20124f {

    /* renamed from: c */
    public static final /* synthetic */ l[] f56738c = {d0.d(new w(C20119d.class, "binding", "getBinding()Lcom/truecaller/callhero_assistant/databinding/FragmentOnboardingStepForwardBinding;", 0))};
    @Inject

    /* renamed from: a */
    public AbstractC20123e f56739a;

    /* renamed from: b */
    public final ViewBindingProperty f56740b = new C19350a(new C20120a());

    /* renamed from: e.a.s.q.e.d$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/e/d$a.class */
    public static final class C20120a extends m implements s1.z.b.l<C20119d, C20028e> {
        public C20120a() {
            super(1);
        }

        /* renamed from: d */
        public Object m11522d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2114060289;
            MaterialButton findViewById = requireView.findViewById(C3605R.C3606id.callButton);
            if (findViewById != null) {
                i = 2114060293;
                Spinner spinner = (Spinner) requireView.findViewById(C3605R.C3606id.carrierSpinner);
                if (spinner != null) {
                    i = 2114060304;
                    TextView textView = (TextView) requireView.findViewById(C3605R.C3606id.messageText);
                    if (textView != null) {
                        i = 2114060323;
                        TextView textView2 = (TextView) requireView.findViewById(C3605R.C3606id.titleText);
                        if (textView2 != null) {
                            return new C20028e((ConstraintLayout) requireView, findViewById, spinner, textView, textView2);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.s.q.e.d$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/e/d$b.class */
    public static final class C20121b implements AdapterView.OnItemSelectedListener {
        public C20121b() {
            C20119d.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            AbstractC20123e abstractC20123e = C20119d.this.f56739a;
            if (abstractC20123e != null) {
                abstractC20123e.mo11511l9(i);
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: e.a.s.q.e.d$c */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/e/d$c.class */
    public static final class View$OnClickListenerC20122c implements View.OnClickListener {
        public View$OnClickListenerC20122c() {
            C20119d.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC20123e abstractC20123e = C20119d.this.f56739a;
            if (abstractC20123e != null) {
                abstractC20123e.mo11512Wb();
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
    }

    public C20119d() {
        super((int) C3605R.layout.fragment_onboarding_step_forward);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1208e.AbstractC20124f
    /* renamed from: Da */
    public void mo11521Da(String str) {
        s1.z.c.l.e(str, "number");
        MaterialButton materialButton = m11523OA().f56591a;
        s1.z.c.l.d(materialButton, "binding.callButton");
        materialButton.setText(getString((int) C3605R.string.CallAssistantOnboardingForwardButton, new Object[]{str}));
    }

    @Override // p193e.p194a.p1195s.p1207q.p1208e.AbstractC20124f
    /* renamed from: Mx */
    public void mo11520Mx(int i) {
        m11523OA().f56592b.setSelection(i);
    }

    /* renamed from: OA */
    public final C20028e m11523OA() {
        return (C20028e) this.f56740b.m34468b(this, f56738c[0]);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1208e.AbstractC20124f
    /* renamed from: T */
    public void mo11519T() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("step", OnboardingStep.FORWARD);
        MediaSessionCompat.m43203r1(this, "step_completed", bundle);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1208e.AbstractC20124f
    /* renamed from: eo */
    public void mo11518eo(List<String> list) {
        s1.z.c.l.e(list, "names");
        ArrayAdapter arrayAdapter = new ArrayAdapter(requireContext(), 17367048, list);
        arrayAdapter.setDropDownViewResource(17367049);
        Spinner spinner = m11523OA().f56592b;
        s1.z.c.l.d(spinner, "binding.carrierSpinner");
        spinner.setAdapter((SpinnerAdapter) arrayAdapter);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1208e.AbstractC20124f
    /* renamed from: mg */
    public void mo11517mg(String str) {
        s1.z.c.l.e(str, "number");
        startActivity(new Intent("android.intent.action.CALL").setData(Uri.fromParts("tel", str, StringConstant.HASH)));
    }

    public void onCreate(Bundle bundle) {
        C20119d.super.onCreate(bundle);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        C19918b c19918b = C19918b.f56363b;
        AbstractC19917a m11813a = C19918b.m11813a(requireContext, AbstractC20012e.AbstractC20013a.class, DynamicFeature.CALLHERO_ASSISTANT);
        Objects.requireNonNull(m11813a, "null cannot be cast to non-null type com.truecaller.callhero_assistant.CallAssistantComponent");
        AbstractC20009b abstractC20009b = (AbstractC20009b) m11813a;
        C25225a.m3846s(abstractC20009b, AbstractC20009b.class);
        this.f56739a = (AbstractC20123e) new C20116c(abstractC20009b, null).f56736d.get();
    }

    public void onDestroyView() {
        AbstractC20123e abstractC20123e = this.f56739a;
        if (abstractC20123e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC20123e.mo9806c();
        C20119d.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C20119d.super.onViewCreated(view, bundle);
        AbstractC20123e abstractC20123e = this.f56739a;
        if (abstractC20123e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC20123e.mo9029Y0(this);
        Spinner spinner = m11523OA().f56592b;
        s1.z.c.l.d(spinner, "binding.carrierSpinner");
        spinner.setOnItemSelectedListener(new C20121b());
        m11523OA().f56591a.setOnClickListener(new View$OnClickListenerC20122c());
    }

    @Override // p193e.p194a.p1195s.p1207q.p1208e.AbstractC20124f
    /* renamed from: vz */
    public void mo11516vz(boolean z) {
        MaterialButton materialButton = m11523OA().f56591a;
        s1.z.c.l.d(materialButton, "binding.callButton");
        C19286f.m13683U(materialButton, z);
    }
}
