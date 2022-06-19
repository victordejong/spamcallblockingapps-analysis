package p193e.p194a.p1080o.p1081a.p1082a.p1083a;

import android.animation.ObjectAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.mopub.mobileads.VastIconXmlManager;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.p159db.reason.CallReason;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.d;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1080o.p1081a.p1085b.p1086k.C18540a;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c;
import p193e.p194a.p1080o.p1081a.p1089g.AbstractC18591d;
import p193e.p194a.p1080o.p1081a.p1089g.p1092i.C18616b;
import p193e.p194a.p1080o.p1102o.C18794g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p682e.C12864a2;
import s1.a.l;
import s1.g;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018�� Z2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001[B\u0007¢\u0006\u0004\bY\u0010$J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ-\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0018\u001a\u00020\u00172\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u001d\u001a\u00020\u00142\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0014H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0014H\u0016¢\u0006\u0004\b%\u0010$J\u0017\u0010(\u001a\u00020\u00142\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)J!\u0010+\u001a\u00020\u00142\u0006\u0010'\u001a\u00020&2\b\u0010*\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0014H\u0016¢\u0006\u0004\b-\u0010$J\u000f\u0010.\u001a\u00020\u0014H\u0016¢\u0006\u0004\b.\u0010$J\u0017\u00101\u001a\u00020\u00142\u0006\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b1\u00102J\u0017\u00105\u001a\u00020\u00142\u0006\u00104\u001a\u000203H\u0016¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\u0014H\u0016¢\u0006\u0004\b7\u0010$R\"\u0010?\u001a\u0002088��@��X\u0081.¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001d\u0010E\u001a\u00020@8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u0016\u0010I\u001a\u00020F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u001d\u0010N\u001a\u00020&8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010MR\u001d\u0010R\u001a\u00020\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bO\u0010K\u001a\u0004\bP\u0010QR%\u0010X\u001a\n T*\u0004\u0018\u00010S0S8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bU\u0010K\u001a\u0004\bV\u0010W¨\u0006\\"}, d2 = {"Le/a/o/a/a/a/a;", "Le/m/a/g/e/e;", "Le/a/o/a/a/a/f;", "Le/a/o/a/g/c;", "", "getTheme", "()I", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "", "Lcom/truecaller/contextcall/db/reason/CallReason;", "reasons", "Le", "(Ljava/util/List;)V", "", VastIconXmlManager.DURATION, "Cm", "(J)V", "Lv", "()V", "Uv", "Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;", "callOptions", "gc", "(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;)V", "reason", "Tz", "(Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;Lcom/truecaller/contextcall/db/reason/CallReason;)V", "onDestroyView", "t", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Le/a/o/a/g/d;", "type", "Vi", "(Le/a/o/a/g/d;)V", "q4", "Le/a/o/a/a/a/e;", "e", "Le/a/o/a/a/a/e;", "SA", "()Le/a/o/a/a/a/e;", "setPresenter$context_call_release", "(Le/a/o/a/a/a/e;)V", "presenter", "Le/a/o/o/g;", "f", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/o/o/g;", "binding", "", "j", "Z", "finishActivityOnDismiss", "g", "Ls1/g;", "r", "()Lcom/truecaller/calling/initiate_call/InitiateCallHelper$CallOptions;", "requestedCallOptions", "h", "getThemedInflater", "()Landroid/view/LayoutInflater;", "themedInflater", "Landroid/animation/ObjectAnimator;", "kotlin.jvm.PlatformType", "i", "RA", "()Landroid/animation/ObjectAnimator;", "countDownAnimator", "<init>", "l", "d", "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.o.a.a.a.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/a/a/a.class */
public final class C18500a extends AbstractC18508b implements AbstractC18512f, AbstractC18590c {

    /* renamed from: k */
    public static final /* synthetic */ l[] f52210k = {C22128a.m8621g0(C18500a.class, "binding", "getBinding()Lcom/truecaller/contextcall/databinding/ContextCallDialogPickerReasonOnboardedBinding;", 0)};

    /* renamed from: l */
    public static final C18504d f52211l = new C18504d(null);
    @Inject

    /* renamed from: e */
    public AbstractC18511e f52212e;

    /* renamed from: f */
    public final ViewBindingProperty f52213f = new C19350a(new C18503c());

    /* renamed from: g */
    public final g f52214g = C25225a.m3978P1(new C18506f());

    /* renamed from: h */
    public final g f52215h = C25225a.m3978P1(new C18507g());

    /* renamed from: i */
    public final g f52216i = C25225a.m3978P1(new C18505e());

    /* renamed from: j */
    public boolean f52217j = true;

    /* renamed from: e.a.o.a.a.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/o/a/a/a/a$a.class */
    public static final class View$OnClickListenerC18501a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f52218a;

        /* renamed from: b */
        public final /* synthetic */ Object f52219b;

        public View$OnClickListenerC18501a(int i, Object obj) {
            this.f52218a = i;
            this.f52219b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f52218a;
            if (i == 0) {
                ((C18500a) this.f52219b).m14853SA().mo14831i4();
            } else if (i == 1) {
                ((C18500a) this.f52219b).m14853SA().mo14832bc();
            } else if (i != 2) {
                throw null;
            } else {
                ((C18500a) this.f52219b).m14853SA().mo14833W();
            }
        }
    }

    /* renamed from: e.a.o.a.a.a.a$b */
    /* loaded from: classes3-dex2jar.jar:e/a/o/a/a/a/a$b.class */
    public static final class View$OnClickListenerC18502b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f52220a;

        /* renamed from: b */
        public final /* synthetic */ Object f52221b;

        /* renamed from: c */
        public final /* synthetic */ Object f52222c;

        /* renamed from: d */
        public final /* synthetic */ Object f52223d;

        /* renamed from: e */
        public final /* synthetic */ Object f52224e;

        public View$OnClickListenerC18502b(int i, Object obj, Object obj2, Object obj3, Object obj4) {
            this.f52220a = i;
            this.f52221b = obj;
            this.f52222c = obj2;
            this.f52223d = obj3;
            this.f52224e = obj4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f52220a;
            if (i == 0) {
                ((C18500a) this.f52223d).m14853SA().mo14834Vc((CallReason) this.f52221b);
            } else if (i != 1) {
                throw null;
            } else {
                ((C18500a) this.f52223d).m14853SA().mo14837Hi((CallReason) this.f52221b);
            }
        }
    }

    /* renamed from: e.a.o.a.a.a.a$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/a/a/a$c.class */
    public static final class C18503c extends m implements s1.z.b.l<C18500a, C18794g> {
        public C18503c() {
            super(1);
        }

        /* renamed from: d */
        public Object m14852d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3771R.C3773id.barrier_header;
            Barrier barrier = (Barrier) requireView.findViewById(i);
            if (barrier != null) {
                i = C3771R.C3773id.button_hide_person;
                Button button = (Button) requireView.findViewById(i);
                if (button != null) {
                    i = C3771R.C3773id.button_skip;
                    Button button2 = (Button) requireView.findViewById(i);
                    if (button2 != null) {
                        i = C3771R.C3773id.button_type_custom;
                        Button button3 = (Button) requireView.findViewById(i);
                        if (button3 != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) requireView;
                            i = C3771R.C3773id.linearlayout_reasons;
                            LinearLayout linearLayout = (LinearLayout) requireView.findViewById(i);
                            if (linearLayout != null) {
                                i = C3771R.C3773id.progress_bar;
                                ProgressBar progressBar = (ProgressBar) requireView.findViewById(i);
                                if (progressBar != null) {
                                    i = C3771R.C3773id.tv_title;
                                    TextView textView = (TextView) requireView.findViewById(i);
                                    if (textView != null) {
                                        return new C18794g(constraintLayout, barrier, button, button2, button3, constraintLayout, linearLayout, progressBar, textView);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.o.a.a.a.a$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/a/a/a$d.class */
    public static final class C18504d {
        public C18504d(f fVar) {
        }
    }

    /* renamed from: e.a.o.a.a.a.a$e */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/a/a/a$e.class */
    public static final class C18505e extends m implements a<ObjectAnimator> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18505e() {
            super(0);
            C18500a.this = r4;
        }

        public Object invoke() {
            C18500a c18500a = C18500a.this;
            l[] lVarArr = C18500a.f52210k;
            ObjectAnimator ofInt = ObjectAnimator.ofInt(c18500a.m14855QA().f52800f, "progress", 0, 10000);
            LinearInterpolator linearInterpolator = new LinearInterpolator();
            s1.z.c.l.e(ofInt, "$this$setTimeInterpolator");
            s1.z.c.l.e(linearInterpolator, "interpolator");
            ofInt.setInterpolator(linearInterpolator);
            C12864a2.m22557f(ofInt, true, new C18509c(this));
            return ofInt;
        }
    }

    /* renamed from: e.a.o.a.a.a.a$f */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/a/a/a$f.class */
    public static final class C18506f extends m implements a<InitiateCallHelper.CallOptions> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18506f() {
            super(0);
            C18500a.this = r4;
        }

        public Object invoke() {
            Bundle arguments = C18500a.this.getArguments();
            InitiateCallHelper.CallOptions callOptions = arguments != null ? (InitiateCallHelper.CallOptions) arguments.getParcelable("CallOptions") : null;
            if (!(callOptions instanceof InitiateCallHelper.CallOptions)) {
                callOptions = null;
            }
            if (callOptions != null) {
                return callOptions;
            }
            throw new IllegalArgumentException("Call options needs to be set");
        }
    }

    /* renamed from: e.a.o.a.a.a.a$g */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/a/a/a$g.class */
    public static final class C18507g extends m implements a<LayoutInflater> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18507g() {
            super(0);
            C18500a.this = r4;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = C18500a.this.getLayoutInflater();
            s1.z.c.l.d(layoutInflater, "layoutInflater");
            return C17422k.m16050u0(layoutInflater, true);
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18512f
    /* renamed from: Cm */
    public void mo14848Cm(long j) {
        m14854RA().setDuration(j).start();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c
    /* renamed from: Hg */
    public void mo14748Hg() {
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18512f
    /* renamed from: Le */
    public void mo14847Le(List<CallReason> list) {
        s1.z.c.l.e(list, "reasons");
        C18794g m14855QA = m14855QA();
        m14855QA.f52799e.removeAllViews();
        for (CallReason callReason : list) {
            View inflate = ((LayoutInflater) this.f52215h.getValue()).inflate(C3771R.layout.context_call_reason_picker_item, (ViewGroup) m14855QA.f52798d, false);
            int i = C3771R.C3773id.button_edit;
            ImageView imageView = (ImageView) inflate.findViewById(i);
            if (imageView != null) {
                i = C3771R.C3773id.text_reason;
                TextView textView = (TextView) inflate.findViewById(i);
                if (textView != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) inflate;
                    s1.z.c.l.d(textView, "textReason");
                    textView.setText(callReason.getReasonText());
                    imageView.setOnClickListener(new View$OnClickListenerC18502b(0, callReason, m14855QA, this, list));
                    constraintLayout.setOnClickListener(new View$OnClickListenerC18502b(1, callReason, m14855QA, this, list));
                    m14855QA.f52799e.addView(constraintLayout);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18512f
    /* renamed from: Lv */
    public void mo14846Lv() {
        m14854RA().pause();
    }

    /* renamed from: QA */
    public final C18794g m14855QA() {
        return (C18794g) this.f52213f.m34468b(this, f52210k[0]);
    }

    /* renamed from: RA */
    public final ObjectAnimator m14854RA() {
        return (ObjectAnimator) this.f52216i.getValue();
    }

    /* renamed from: SA */
    public final AbstractC18511e m14853SA() {
        AbstractC18511e abstractC18511e = this.f52212e;
        if (abstractC18511e != null) {
            return abstractC18511e;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18512f
    /* renamed from: Tz */
    public void mo14845Tz(InitiateCallHelper.CallOptions callOptions, CallReason callReason) {
        s1.z.c.l.e(callOptions, "callOptions");
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        s1.z.c.l.e(childFragmentManager, "fragmentManager");
        s1.z.c.l.e(callOptions, "callOptions");
        C18616b c18616b = new C18616b();
        Bundle bundle = new Bundle();
        bundle.putParcelable("CallOptions", callOptions);
        bundle.putParcelable("CallReason", callReason);
        c18616b.setArguments(bundle);
        c18616b.show(childFragmentManager, d0.a(C18616b.class).c());
        this.f52217j = true;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18512f
    /* renamed from: Uv */
    public void mo14844Uv() {
        m14854RA().resume();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c
    /* renamed from: Vi */
    public void mo14747Vi(AbstractC18591d abstractC18591d) {
        s1.z.c.l.e(abstractC18591d, "type");
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18512f
    /* renamed from: gc */
    public void mo14843gc(InitiateCallHelper.CallOptions callOptions) {
        s1.z.c.l.e(callOptions, "callOptions");
        C18540a.C18542b c18542b = C18540a.f52297i;
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        FragmentManager supportFragmentManager = requireActivity.getSupportFragmentManager();
        s1.z.c.l.d(supportFragmentManager, "requireActivity().supportFragmentManager");
        Objects.requireNonNull(c18542b);
        s1.z.c.l.e(supportFragmentManager, "fragmentManager");
        s1.z.c.l.e(callOptions, "callOptions");
        C18540a c18540a = new C18540a();
        Bundle bundle = new Bundle();
        bundle.putParcelable("CallOptions", callOptions);
        c18540a.setArguments(bundle);
        c18540a.show(supportFragmentManager, C18540a.class.getSimpleName());
        this.f52217j = false;
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18508b
    public Context getContext() {
        Context context = super.getContext();
        return context != null ? C17422k.m16113E(context, true) : null;
    }

    public int getTheme() {
        return C3771R.style.StyleX_BottomSheetDialogTheme_ContextCall;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        d onCreateDialog = C18500a.super.onCreateDialog(bundle);
        s1.z.c.l.d(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
        d dVar = onCreateDialog;
        BottomSheetBehavior e = dVar.e();
        e.M(3);
        e.D = true;
        return dVar;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return ((LayoutInflater) this.f52215h.getValue()).inflate(C3771R.layout.context_call_dialog_picker_reason_onboarded, viewGroup, false);
    }

    public void onDestroyView() {
        m14854RA().cancel();
        AbstractC18511e abstractC18511e = this.f52212e;
        if (abstractC18511e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC18511e.mo9806c();
        C18500a.super.onDestroyView();
    }

    public void onDismiss(DialogInterface dialogInterface) {
        n3.r.a.l activity;
        s1.z.c.l.e(dialogInterface, "dialog");
        if (this.f52217j && (activity = getActivity()) != null) {
            activity.finish();
        }
        C18500a.super.onDismiss(dialogInterface);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C18500a.super.onViewCreated(view, bundle);
        AbstractC18511e abstractC18511e = this.f52212e;
        if (abstractC18511e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC18511e.mo9029Y0(this);
        C18794g m14855QA = m14855QA();
        m14855QA.f52796b.setOnClickListener(new View$OnClickListenerC18501a(0, this));
        m14855QA.f52795a.setOnClickListener(new View$OnClickListenerC18501a(1, this));
        m14855QA.f52797c.setOnClickListener(new View$OnClickListenerC18501a(2, this));
    }

    @Override // p193e.p194a.p1080o.p1081a.p1089g.AbstractC18590c
    /* renamed from: q4 */
    public void mo14746q4() {
        AbstractC18511e abstractC18511e = this.f52212e;
        if (abstractC18511e != null) {
            abstractC18511e.mo14830q4();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18512f
    /* renamed from: r */
    public InitiateCallHelper.CallOptions mo14842r() {
        return (InitiateCallHelper.CallOptions) this.f52214g.getValue();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1082a.p1083a.AbstractC18512f
    /* renamed from: t */
    public void mo14841t() {
        dismissAllowingStateLoss();
    }
}
