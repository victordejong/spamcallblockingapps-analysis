package p193e.p194a.p1195s.p1207q.p1210g;

import android.content.Context;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.button.MaterialButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.callhero_assistant.C3605R;
import com.truecaller.callhero_assistant.onboarding.OnboardingStep;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1577m.p1578a.p1596c.AbstractC24196c0;
import p193e.p1577m.p1578a.p1596c.AbstractC24760q0;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.C24189b0;
import p193e.p1577m.p1578a.p1596c.C24652o0;
import p193e.p1577m.p1578a.p1596c.C24811r0;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24648g;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1188r3.p1189j.AbstractC19917a;
import p193e.p194a.p1188r3.p1189j.C19918b;
import p193e.p194a.p1195s.AbstractC20009b;
import p193e.p194a.p1195s.AbstractC20012e;
import p193e.p194a.p1195s.p1199l.C20030g;
import p193e.p194a.p1195s.p1212s.AbstractC20187i;
import s1.a.l;
import s1.z.c.d0;
import s1.z.c.m;
import s1.z.c.w;
@Metadata(bv = {1, 0, 3}, d1 = {"��i\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\b\u0006*\u0001A\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bE\u0010\rJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J!\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0018\u0010\u0016J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\rJ\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\rR\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b \u0010!R\u001d\u0010(\u001a\u00020#8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00108\u001a\u0002018\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\"\u0010@\u001a\u0002098\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u0016\u0010D\u001a\u00020A8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010C¨\u0006F"}, d2 = {"Le/a/s/q/g/b;", "Landroidx/fragment/app/Fragment;", "Le/a/s/q/g/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "()V", "c0", "", "visible", "mb", "(Z)V", "", AnalyticsConstants.NAME, "Qe", "(Ljava/lang/String;)V", "url", "T4", "H1", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Le/a/o2/f;", "d", "Le/a/o2/f;", "adapter", "Le/m/a/c/c0;", "f", "Le/m/a/c/c0;", "player", "Le/a/s/l/g;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/s/l/g;", "binding", "Le/a/s/q/g/d;", C22021b.f61237c, "Le/a/s/q/g/d;", "getItemPresenter", "()Le/a/s/q/g/d;", "setItemPresenter", "(Le/a/s/q/g/d;)V", "itemPresenter", "Le/a/s/q/g/g;", "a", "Le/a/s/q/g/g;", "PA", "()Le/a/s/q/g/g;", "setPresenter", "(Le/a/s/q/g/g;)V", "presenter", "Le/a/s/s/i;", AbstractC2405c.f7629a, "Le/a/s/s/i;", "getVoiceRepository", "()Le/a/s/s/i;", "setVoiceRepository", "(Le/a/s/s/i;)V", "voiceRepository", "e/a/s/q/g/b$e", "g", "Le/a/s/q/g/b$e;", "playerEventListener", "<init>", "callhero_assistant_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.s.q.g.b */
/* loaded from: classes17-dex2jar.jar:e/a/s/q/g/b.class */
public final class C20145b extends Fragment implements AbstractC20156h {

    /* renamed from: h */
    public static final /* synthetic */ l[] f56790h = {d0.d(new w(C20145b.class, "binding", "getBinding()Lcom/truecaller/callhero_assistant/databinding/FragmentOnboardingStepVoiceBinding;", 0))};
    @Inject

    /* renamed from: a */
    public AbstractC20155g f56791a;
    @Inject

    /* renamed from: b */
    public AbstractC20152d f56792b;
    @Inject

    /* renamed from: c */
    public AbstractC20187i f56793c;

    /* renamed from: d */
    public C18898f f56794d;

    /* renamed from: f */
    public AbstractC24196c0 f56796f;

    /* renamed from: e */
    public final ViewBindingProperty f56795e = new C19350a(new C20146a());

    /* renamed from: g */
    public final C20150e f56797g = new C20150e();

    /* renamed from: e.a.s.q.g.b$a */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/g/b$a.class */
    public static final class C20146a extends m implements s1.z.b.l<C20145b, C20030g> {
        public C20146a() {
            super(1);
        }

        /* renamed from: d */
        public Object m11487d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2114060294;
            MaterialButton findViewById = requireView.findViewById(C3605R.C3606id.chooseButton);
            if (findViewById != null) {
                i = 2114060304;
                TextView textView = (TextView) requireView.findViewById(C3605R.C3606id.messageText);
                if (textView != null) {
                    i = 2114060308;
                    RecyclerView recyclerView = (RecyclerView) requireView.findViewById(C3605R.C3606id.recyclerView);
                    if (recyclerView != null) {
                        i = 2114060323;
                        TextView textView2 = (TextView) requireView.findViewById(C3605R.C3606id.titleText);
                        if (textView2 != null) {
                            return new C20030g((ConstraintLayout) requireView, findViewById, textView, recyclerView, textView2);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.s.q.g.b$b */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/g/b$b.class */
    public static final class C20147b extends m implements s1.z.b.l<View, C20161l> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20147b() {
            super(1);
            C20145b.this = r4;
        }

        /* renamed from: d */
        public Object m11486d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, "it");
            C18898f c18898f = C20145b.this.f56794d;
            if (c18898f != null) {
                return new C20161l(view, c18898f);
            }
            s1.z.c.l.l("adapter");
            throw null;
        }
    }

    /* renamed from: e.a.s.q.g.b$c */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/g/b$c.class */
    public static final class C20148c extends m implements s1.z.b.l<C20161l, AbstractC20153e> {

        /* renamed from: b */
        public static final C20148c f56799b = new C20148c();

        public C20148c() {
            super(1);
        }

        /* renamed from: d */
        public Object m11485d(Object obj) {
            C20161l c20161l = (C20161l) obj;
            s1.z.c.l.e(c20161l, "it");
            return c20161l;
        }
    }

    /* renamed from: e.a.s.q.g.b$d */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/g/b$d.class */
    public static final class View$OnClickListenerC20149d implements View.OnClickListener {
        public View$OnClickListenerC20149d() {
            C20145b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C20145b.this.m11488PA().mo11472S7();
        }
    }

    /* renamed from: e.a.s.q.g.b$e */
    /* loaded from: classes17-dex2jar.jar:e/a/s/q/g/b$e.class */
    public static final class C20150e implements AbstractC24760q0.AbstractC24762b {
        public C20150e() {
            C20145b.this = r4;
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: A0 */
        public /* synthetic */ void mo4655A0() {
            C24811r0.m4490i(this);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: G5 */
        public /* synthetic */ void mo4654G5(boolean z, int i) {
            C24811r0.m4493f(this, z, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: N7 */
        public /* synthetic */ void mo4653N7(AbstractC24861y0 abstractC24861y0, int i) {
            C24811r0.m4488k(this, abstractC24861y0, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Pi */
        public /* synthetic */ void mo4652Pi(AbstractC24861y0 abstractC24861y0, Object obj, int i) {
            C24811r0.m4487l(this, abstractC24861y0, obj, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: S8 */
        public /* synthetic */ void mo4651S8(boolean z) {
            C24811r0.m4489j(this, z);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Xl */
        public void mo4650Xl(boolean z) {
            C20145b.this.m11488PA().mo11471T0(z);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Zl */
        public /* synthetic */ void mo4649Zl(int i) {
            C24811r0.m4495d(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: fs */
        public /* synthetic */ void mo4648fs(TrackGroupArray trackGroupArray, C24648g c24648g) {
            C24811r0.m4486m(this, trackGroupArray, c24648g);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: h5 */
        public /* synthetic */ void mo4647h5(int i) {
            C24811r0.m4492g(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: hy */
        public /* synthetic */ void mo4646hy(int i) {
            C24811r0.m4491h(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: rs */
        public /* synthetic */ void mo4645rs(C24652o0 c24652o0) {
            C24811r0.m4496c(this, c24652o0);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: tf */
        public /* synthetic */ void mo4644tf(C24189b0 c24189b0) {
            C24811r0.m4494e(this, c24189b0);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: w1 */
        public void mo4643w1(boolean z) {
            C20145b.this.m11488PA().mo11473L(z);
        }
    }

    public C20145b() {
        super((int) C3605R.layout.fragment_onboarding_step_voice);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20156h
    /* renamed from: H1 */
    public void mo11484H1() {
        AbstractC24196c0 abstractC24196c0 = this.f56796f;
        if (abstractC24196c0 != null) {
            abstractC24196c0.stop();
        } else {
            s1.z.c.l.l("player");
            throw null;
        }
    }

    /* renamed from: OA */
    public final C20030g m11489OA() {
        return (C20030g) this.f56795e.m34468b(this, f56790h[0]);
    }

    /* renamed from: PA */
    public final AbstractC20155g m11488PA() {
        AbstractC20155g abstractC20155g = this.f56791a;
        if (abstractC20155g != null) {
            return abstractC20155g;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20156h
    /* renamed from: Qe */
    public void mo11483Qe(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.NAME);
        MaterialButton materialButton = m11489OA().f56595a;
        s1.z.c.l.d(materialButton, "binding.chooseButton");
        materialButton.setText(getString((int) C3605R.string.CallAssistantOnboardingVoiceButton, new Object[]{str}));
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20156h
    /* renamed from: T */
    public void mo11482T() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("step", OnboardingStep.VOICE);
        MediaSessionCompat.m43203r1(this, "step_completed", bundle);
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20156h
    /* renamed from: T4 */
    public void mo11481T4(String str) {
        s1.z.c.l.e(str, "url");
        AbstractC24196c0 abstractC24196c0 = this.f56796f;
        if (abstractC24196c0 == null) {
            s1.z.c.l.l("player");
            throw null;
        }
        AbstractC20187i abstractC20187i = this.f56793c;
        if (abstractC20187i == null) {
            s1.z.c.l.l("voiceRepository");
            throw null;
        }
        abstractC24196c0.prepare(abstractC20187i.mo11404a(str));
        AbstractC24196c0 abstractC24196c02 = this.f56796f;
        if (abstractC24196c02 != null) {
            abstractC24196c02.setPlayWhenReady(true);
        } else {
            s1.z.c.l.l("player");
            throw null;
        }
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20156h
    /* renamed from: c0 */
    public void mo11480c0() {
        C18898f c18898f = this.f56794d;
        if (c18898f != null) {
            c18898f.notifyDataSetChanged();
        } else {
            s1.z.c.l.l("adapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1195s.p1207q.p1210g.AbstractC20156h
    /* renamed from: mb */
    public void mo11479mb(boolean z) {
        MaterialButton materialButton = m11489OA().f56595a;
        s1.z.c.l.d(materialButton, "binding.chooseButton");
        C19286f.m13683U(materialButton, z);
    }

    public void onCreate(Bundle bundle) {
        C20145b.super.onCreate(bundle);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        s1.z.c.l.e(requireContext, AnalyticsConstants.CONTEXT);
        C19918b c19918b = C19918b.f56363b;
        AbstractC19917a m11813a = C19918b.m11813a(requireContext, AbstractC20012e.AbstractC20013a.class, DynamicFeature.CALLHERO_ASSISTANT);
        Objects.requireNonNull(m11813a, "null cannot be cast to non-null type com.truecaller.callhero_assistant.CallAssistantComponent");
        AbstractC20009b abstractC20009b = (AbstractC20009b) m11813a;
        C25225a.m3846s(abstractC20009b, AbstractC20009b.class);
        C20142a c20142a = new C20142a(abstractC20009b, null);
        this.f56791a = (AbstractC20155g) c20142a.f56788d.get();
        this.f56792b = new C20160k((AbstractC20154f) c20142a.f56788d.get(), (AbstractC20151c) c20142a.f56788d.get());
        AbstractC20187i mo11653Y0 = c20142a.f56785a.mo11653Y0();
        Objects.requireNonNull(mo11653Y0, "Cannot return null from a non-@Nullable component method");
        this.f56793c = mo11653Y0;
        AbstractC20152d abstractC20152d = this.f56792b;
        if (abstractC20152d != null) {
            this.f56794d = new C18898f(new C18910r(abstractC20152d, C3605R.layout.item_onboarding_voice, new C20147b(), C20148c.f56799b));
        } else {
            s1.z.c.l.l("itemPresenter");
            throw null;
        }
    }

    public void onDestroyView() {
        AbstractC24196c0 abstractC24196c0 = this.f56796f;
        if (abstractC24196c0 == null) {
            s1.z.c.l.l("player");
            throw null;
        }
        abstractC24196c0.removeListener(this.f56797g);
        AbstractC24196c0 abstractC24196c02 = this.f56796f;
        if (abstractC24196c02 == null) {
            s1.z.c.l.l("player");
            throw null;
        }
        abstractC24196c02.release();
        AbstractC20155g abstractC20155g = this.f56791a;
        if (abstractC20155g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC20155g.mo9806c();
        C20145b.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C20145b.super.onViewCreated(view, bundle);
        SimpleExoPlayer m39243a = new SimpleExoPlayer.C1964b(requireContext()).m39243a();
        s1.z.c.l.d(m39243a, "SimpleExoPlayer.Builder(requireContext()).build()");
        this.f56796f = m39243a;
        RecyclerView recyclerView = m11489OA().f56596b;
        s1.z.c.l.d(recyclerView, "binding.recyclerView");
        C18898f c18898f = this.f56794d;
        if (c18898f == null) {
            s1.z.c.l.l("adapter");
            throw null;
        }
        recyclerView.setAdapter(c18898f);
        AbstractC20155g abstractC20155g = this.f56791a;
        if (abstractC20155g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC20155g.mo9029Y0(this);
        m11489OA().f56595a.setOnClickListener(new View$OnClickListenerC20149d());
        AbstractC24196c0 abstractC24196c0 = this.f56796f;
        if (abstractC24196c0 != null) {
            abstractC24196c0.addListener(this.f56797g);
        } else {
            s1.z.c.l.l("player");
            throw null;
        }
    }
}
