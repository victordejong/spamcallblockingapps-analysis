package p193e.p194a.p195a.p227e;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.android.material.button.MaterialButton;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.messaging.inboxcleanup.Mode;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.e;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.C21846z1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18172m;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p195a.p227e.C5999k;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.a.e.d */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/d.class */
public final class C5971d extends e implements AbstractC5994h {

    /* renamed from: d */
    public static final /* synthetic */ l[] f19899d = {C22128a.m8621g0(C5971d.class, "binding", "getBinding()Lcom/truecaller/databinding/BottomSheetInboxCleanerAutoBinding;", 0)};
    @Inject

    /* renamed from: a */
    public AbstractC5991g f19900a;

    /* renamed from: b */
    public final ViewBindingProperty f19901b = new C19350a(new C5973b());

    /* renamed from: c */
    public final a<s> f19902c;

    /* renamed from: e.a.a.e.d$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/e/d$a.class */
    public static final class View$OnClickListenerC5972a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f19903a;

        /* renamed from: b */
        public final /* synthetic */ Object f19904b;

        public View$OnClickListenerC5972a(int i, Object obj) {
            this.f19903a = i;
            this.f19904b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f19903a;
            if (i == 0) {
                ((C5971d) this.f19904b).dismiss();
            } else if (i != 1) {
                throw null;
            } else {
                ((C5971d) this.f19904b).m32103PA().mo32066r1();
            }
        }
    }

    /* renamed from: e.a.a.e.d$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/d$b.class */
    public static final class C5973b extends m implements s1.z.b.l<C5971d, C18172m> {
        public C5973b() {
            super(1);
        }

        /* renamed from: d */
        public Object m32102d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362408;
            Button button = (Button) requireView.findViewById(2131362408);
            if (button != null) {
                i = 2131362410;
                Button button2 = (Button) requireView.findViewById(C2752R.C2754id.btnChangeOtp);
                if (button2 != null) {
                    i = 2131362411;
                    Button button3 = (Button) requireView.findViewById(C2752R.C2754id.btnChangePromotional);
                    if (button3 != null) {
                        i = 2131362412;
                        Button button4 = (Button) requireView.findViewById(C2752R.C2754id.btnChangeSpam);
                        if (button4 != null) {
                            i = 2131362416;
                            MaterialButton findViewById = requireView.findViewById(2131362416);
                            if (findViewById != null) {
                                i = 2131362757;
                                CheckBox checkBox = (CheckBox) requireView.findViewById(C2752R.C2754id.checkboxNotif);
                                if (checkBox != null) {
                                    i = 2131364056;
                                    Group group = (Group) requireView.findViewById(C2752R.C2754id.groupPromotional);
                                    if (group != null) {
                                        i = 2131364311;
                                        AppCompatImageView appCompatImageView = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.imgOtp);
                                        if (appCompatImageView != null) {
                                            i = 2131364312;
                                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.imgPromotional);
                                            if (appCompatImageView2 != null) {
                                                i = 2131364313;
                                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) requireView.findViewById(C2752R.C2754id.imgSpam);
                                                if (appCompatImageView3 != null) {
                                                    i = 2131366662;
                                                    TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.txtOtpPeriod);
                                                    if (textView != null) {
                                                        i = 2131366663;
                                                        TextView textView2 = (TextView) requireView.findViewById(C2752R.C2754id.txtOtpTitle);
                                                        if (textView2 != null) {
                                                            i = 2131366667;
                                                            TextView textView3 = (TextView) requireView.findViewById(C2752R.C2754id.txtPromotionalPeriod);
                                                            if (textView3 != null) {
                                                                i = 2131366669;
                                                                TextView textView4 = (TextView) requireView.findViewById(C2752R.C2754id.txtPromotionalTitle);
                                                                if (textView4 != null) {
                                                                    i = 2131366674;
                                                                    TextView textView5 = (TextView) requireView.findViewById(C2752R.C2754id.txtSpamPeriod);
                                                                    if (textView5 != null) {
                                                                        i = 2131366676;
                                                                        TextView textView6 = (TextView) requireView.findViewById(C2752R.C2754id.txtSpamTitle);
                                                                        if (textView6 != null) {
                                                                            i = 2131366677;
                                                                            TextView textView7 = (TextView) requireView.findViewById(C2752R.C2754id.txtSubtitle);
                                                                            if (textView7 != null) {
                                                                                i = 2131366678;
                                                                                TextView textView8 = (TextView) requireView.findViewById(C2752R.C2754id.txtTitle);
                                                                                if (textView8 != null) {
                                                                                    return new C18172m((ConstraintLayout) requireView, button, button2, button3, button4, findViewById, checkBox, group, appCompatImageView, appCompatImageView2, appCompatImageView3, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8);
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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

    /* renamed from: e.a.a.e.d$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/d$c.class */
    public static final class C5974c implements CompoundButton.OnCheckedChangeListener {
        public C5974c() {
            C5971d.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C5971d.this.m32103PA().mo32068f2(z);
        }
    }

    /* renamed from: e.a.a.e.d$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/d$d.class */
    public static final class View$OnClickListenerC5975d implements View.OnClickListener {

        /* renamed from: e.a.a.e.d$d$a */
        /* loaded from: classes7-dex2jar.jar:e/a/a/e/d$d$a.class */
        public static final class C5976a extends m implements a<s> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5976a() {
                super(0);
                View$OnClickListenerC5975d.this = r4;
            }

            public Object invoke() {
                C5971d.this.m32103PA().mo32067ib();
                return s.a;
            }
        }

        public View$OnClickListenerC5975d() {
            C5971d.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Context requireContext = C5971d.this.requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            new DialogC5949a(requireContext, Mode.OTP, false, new C5976a()).show();
        }
    }

    /* renamed from: e.a.a.e.d$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/d$e.class */
    public static final class View$OnClickListenerC5977e implements View.OnClickListener {

        /* renamed from: e.a.a.e.d$e$a */
        /* loaded from: classes7-dex2jar.jar:e/a/a/e/d$e$a.class */
        public static final class C5978a extends m implements a<s> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5978a() {
                super(0);
                View$OnClickListenerC5977e.this = r4;
            }

            public Object invoke() {
                C5971d.this.m32103PA().mo32067ib();
                return s.a;
            }
        }

        public View$OnClickListenerC5977e() {
            C5971d.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Context requireContext = C5971d.this.requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            new DialogC5949a(requireContext, Mode.PROMOTIONAL, false, new C5978a()).show();
        }
    }

    /* renamed from: e.a.a.e.d$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/d$f.class */
    public static final class View$OnClickListenerC5979f implements View.OnClickListener {

        /* renamed from: e.a.a.e.d$f$a */
        /* loaded from: classes7-dex2jar.jar:e/a/a/e/d$f$a.class */
        public static final class C5980a extends m implements a<s> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5980a() {
                super(0);
                View$OnClickListenerC5979f.this = r4;
            }

            public Object invoke() {
                C5971d.this.m32103PA().mo32067ib();
                return s.a;
            }
        }

        public View$OnClickListenerC5979f() {
            C5971d.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Context requireContext = C5971d.this.requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            new DialogC5949a(requireContext, Mode.SPAM, false, new C5980a()).show();
        }
    }

    public C5971d(a<s> aVar) {
        s1.z.c.l.e(aVar, "listener");
        this.f19902c = aVar;
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5994h
    /* renamed from: Fp */
    public void mo32084Fp(boolean z) {
        CheckBox checkBox = m32104OA().f51319f;
        s1.z.c.l.d(checkBox, "binding.checkboxNotif");
        checkBox.setChecked(z);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5994h
    /* renamed from: Jc */
    public void mo32083Jc(boolean z) {
        Group group = m32104OA().f51320g;
        s1.z.c.l.d(group, "binding.groupPromotional");
        C19286f.m13683U(group, z);
    }

    /* renamed from: OA */
    public final C18172m m32104OA() {
        return (C18172m) this.f19901b.m34468b(this, f19899d[0]);
    }

    /* renamed from: PA */
    public final AbstractC5991g m32103PA() {
        AbstractC5991g abstractC5991g = this.f19900a;
        if (abstractC5991g != null) {
            return abstractC5991g;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5994h
    /* renamed from: V0 */
    public void mo32082V0() {
        dismiss();
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5994h
    /* renamed from: X1 */
    public void mo32081X1() {
        m32104OA().f51319f.setOnCheckedChangeListener(new C5974c());
        m32104OA().f51315b.setOnClickListener(new View$OnClickListenerC5975d());
        m32104OA().f51316c.setOnClickListener(new View$OnClickListenerC5977e());
        m32104OA().f51317d.setOnClickListener(new View$OnClickListenerC5979f());
        m32104OA().f51314a.setOnClickListener(new View$OnClickListenerC5972a(0, this));
        m32104OA().f51318e.setOnClickListener(new View$OnClickListenerC5972a(1, this));
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5994h
    /* renamed from: Yw */
    public void mo32080Yw(int i, int i2, int i3) {
        TextView textView = m32104OA().f51321h;
        s1.z.c.l.d(textView, "binding.txtOtpPeriod");
        C10480a.m26084C2(textView, i);
        TextView textView2 = m32104OA().f51322i;
        s1.z.c.l.d(textView2, "binding.txtPromotionalPeriod");
        C10480a.m26084C2(textView2, i2);
        TextView textView3 = m32104OA().f51323j;
        s1.z.c.l.d(textView3, "binding.txtSpamPeriod");
        C10480a.m26084C2(textView3, i3);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5994h
    /* renamed from: Z0 */
    public void mo32079Z0(int i, int i2) {
        String string = getString(i);
        s1.z.c.l.d(string, "getString(title)");
        String string2 = getString(i2);
        s1.z.c.l.d(string2, "getString(subtitle)");
        C21846z1 c21846z1 = new C21846z1(string, string2);
        FragmentManager childFragmentManager = getChildFragmentManager();
        s1.z.c.l.d(childFragmentManager, "childFragmentManager");
        c21846z1.m8995cB(childFragmentManager);
    }

    @Override // p193e.p194a.p195a.p227e.AbstractC5994h
    /* renamed from: a */
    public void mo32078a(int i) {
        Toast.makeText(getContext(), getString(i), 0).show();
    }

    public void onCreate(Bundle bundle) {
        C5971d.super.onCreate(bundle);
        C5999k.C6001b m32061a = C5999k.m32061a();
        n3.r.a.l requireActivity = requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        Context applicationContext = requireActivity.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        m32061a.f19979a = mo10154s;
        this.f19900a = (AbstractC5991g) ((C5999k) m32061a.m32060a()).f19972h.get();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.bottom_sheet_inbox_cleaner_auto, viewGroup, false);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        C5971d.super.onDismiss(dialogInterface);
        this.f19902c.invoke();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C5971d.super.onViewCreated(view, bundle);
        AbstractC5991g abstractC5991g = this.f19900a;
        if (abstractC5991g != null) {
            abstractC5991g.mo9029Y0(this);
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }
}
