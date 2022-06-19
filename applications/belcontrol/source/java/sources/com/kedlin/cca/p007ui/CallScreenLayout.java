package com.kedlin.cca.p007ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Vibrator;
import android.telecom.CallAudioState;
import android.telephony.PhoneNumberUtils;
import android.text.Html;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.flexaspect.android.everycallcontrol.ui.activities.CallActivity;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.kedlin.cca.p007ui.CallScreenLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import p000.g61;
import p000.j71;
import p000.n91;
import p000.r71;
import p000.xb1;
@TargetApi(23)
/* renamed from: com.kedlin.cca.ui.CallScreenLayout */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallScreenLayout.class */
public class CallScreenLayout extends ConstraintLayout implements xb1.AbstractC1725c, j71.AbstractC1450a {

    /* renamed from: G0 */
    public static final String f3840G0 = CallScreenLayout.class.getSimpleName();

    /* renamed from: A */
    public TextView f3841A;

    /* renamed from: A0 */
    public xb1 f3842A0;

    /* renamed from: B */
    public TextView f3843B;

    /* renamed from: C */
    public TextView f3845C;

    /* renamed from: C0 */
    public vb1 f3846C0;

    /* renamed from: D */
    public TextView f3847D;

    /* renamed from: E */
    public TextView f3849E;

    /* renamed from: F */
    public TextView f3851F;

    /* renamed from: F0 */
    public CallActivity f3852F0;

    /* renamed from: G */
    public ImageButton f3853G;

    /* renamed from: H */
    public ImageButton f3854H;

    /* renamed from: I */
    public ImageButton f3855I;

    /* renamed from: J */
    public ImageButton f3856J;

    /* renamed from: K */
    public ImageButton f3857K;

    /* renamed from: L */
    public RelativeLayout f3858L;

    /* renamed from: M */
    public RelativeLayout f3859M;

    /* renamed from: N */
    public RelativeLayout f3860N;

    /* renamed from: O */
    public RelativeLayout f3861O;

    /* renamed from: P */
    public RelativeLayout f3862P;

    /* renamed from: Q */
    public RelativeLayout f3863Q;

    /* renamed from: R */
    public RelativeLayout f3864R;

    /* renamed from: S */
    public RelativeLayout f3865S;

    /* renamed from: T */
    public ConstraintLayout f3866T;

    /* renamed from: U */
    public ConstraintLayout f3867U;

    /* renamed from: V */
    public LinearLayout f3868V;

    /* renamed from: W */
    public LinearLayout f3869W;

    /* renamed from: a */
    public ConstraintLayout f3870a;

    /* renamed from: a0 */
    public LinearLayout f3871a0;

    /* renamed from: b */
    public ConstraintLayout f3872b;

    /* renamed from: b0 */
    public ImageView f3873b0;

    /* renamed from: c */
    public ConstraintLayout f3874c;

    /* renamed from: c0 */
    public ImageView f3875c0;

    /* renamed from: d */
    public ConstraintLayout f3876d;

    /* renamed from: d0 */
    public ImageView f3877d0;

    /* renamed from: e0 */
    public ImageView f3878e0;

    /* renamed from: f */
    public ConstraintLayout f3879f;

    /* renamed from: f0 */
    public ImageView f3880f0;

    /* renamed from: g */
    public ConstraintLayout f3881g;

    /* renamed from: g0 */
    public ImageView f3882g0;

    /* renamed from: h */
    public ConstraintLayout f3883h;

    /* renamed from: h0 */
    public ImageView f3884h0;

    /* renamed from: i0 */
    public ImageView f3885i0;

    /* renamed from: j */
    public ConstraintLayout f3886j;

    /* renamed from: j0 */
    public ImageView f3887j0;

    /* renamed from: k */
    public ConstraintLayout f3888k;

    /* renamed from: k0 */
    public Space f3889k0;

    /* renamed from: l */
    public ConstraintLayout f3890l;

    /* renamed from: l0 */
    public EditText f3891l0;

    /* renamed from: m */
    public AbstractC0666j f3892m;

    /* renamed from: m0 */
    public EditText f3893m0;

    /* renamed from: n */
    public View f3894n;

    /* renamed from: n0 */
    public EditText f3895n0;

    /* renamed from: o */
    public TextView f3896o;

    /* renamed from: o0 */
    public Spinner f3897o0;

    /* renamed from: p */
    public TextView f3898p;

    /* renamed from: p0 */
    public Resources.Theme f3899p0;

    /* renamed from: q */
    public TextView f3900q;

    /* renamed from: q0 */
    public OverlayWithHoleImageView f3901q0;

    /* renamed from: r */
    public TextView f3902r;

    /* renamed from: r0 */
    public OverlayWithHoleImageView f3903r0;

    /* renamed from: s */
    public TextView f3904s;

    /* renamed from: t */
    public TextView f3906t;

    /* renamed from: u */
    public TextView f3908u;

    /* renamed from: u0 */
    public Animator f3909u0;

    /* renamed from: v */
    public TextView f3910v;

    /* renamed from: v0 */
    public Animator f3911v0;

    /* renamed from: w */
    public TextView f3912w;

    /* renamed from: w0 */
    public Animator f3913w0;

    /* renamed from: x */
    public TextView f3914x;

    /* renamed from: y */
    public TextView f3916y;

    /* renamed from: z */
    public TextView f3918z;

    /* renamed from: z0 */
    public xb1 f3919z0;

    /* renamed from: s0 */
    public boolean f3905s0 = false;

    /* renamed from: t0 */
    public boolean f3907t0 = false;

    /* renamed from: x0 */
    public EnumC0665i f3915x0 = EnumC0665i.NONE;

    /* renamed from: y0 */
    public ArrayList<C0667k> f3917y0 = new ArrayList<>();

    /* renamed from: B0 */
    public EnumC0669m f3844B0 = EnumC0669m.NONE;

    /* renamed from: D0 */
    public Handler f3848D0 = new Handler(Looper.getMainLooper());

    /* renamed from: E0 */
    public EnumC0668l f3850E0 = EnumC0668l.NOT_INIT;

    /* renamed from: com.kedlin.cca.ui.CallScreenLayout$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallScreenLayout$a.class */
    public class C0656a implements AdapterView.OnItemSelectedListener {

        /* renamed from: a */
        public final /* synthetic */ String[] f3920a;

        public C0656a(String[] strArr) {
            CallScreenLayout.this = r4;
            this.f3920a = strArr;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            String str = this.f3920a[i];
            if (j == 0) {
                str = "";
            }
            CallScreenLayout.this.f3895n0.setText(str);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: com.kedlin.cca.ui.CallScreenLayout$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallScreenLayout$b.class */
    public class View$OnTouchListenerC0657b implements View.OnTouchListener {

        /* renamed from: a */
        public final /* synthetic */ Vibrator f3922a;

        /* renamed from: com.kedlin.cca.ui.CallScreenLayout$b$a */
        /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallScreenLayout$b$a.class */
        public class C0658a extends Thread {
            public C0658a() {
                View$OnTouchListenerC0657b.this = r4;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                View$OnTouchListenerC0657b.this.f3922a.vibrate(25L);
            }
        }

        public View$OnTouchListenerC0657b(Vibrator vibrator) {
            CallScreenLayout.this = r4;
            this.f3922a = vibrator;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            String obj = view.getTag().toString();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    return false;
                }
                CallScreenLayout.this.m4280C0();
                return false;
            }
            if (this.f3922a != null) {
                new C0658a().start();
            }
            if (CallScreenLayout.this.f3880f0.getVisibility() == 4) {
                CallScreenLayout.this.f3880f0.setVisibility(0);
            }
            CallScreenLayout.this.m4230p0(obj.toCharArray()[0]);
            return false;
        }
    }

    /* renamed from: com.kedlin.cca.ui.CallScreenLayout$c */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallScreenLayout$c.class */
    public class animationAnimation$AnimationListenerC0659c implements Animation.AnimationListener {

        /* renamed from: a */
        public final /* synthetic */ View f3925a;

        public animationAnimation$AnimationListenerC0659c(View view) {
            CallScreenLayout.this = r4;
            this.f3925a = view;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            CallScreenLayout.this.f3907t0 = false;
            this.f3925a.setVisibility(0);
            this.f3925a.clearAnimation();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.kedlin.cca.ui.CallScreenLayout$d */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallScreenLayout$d.class */
    public class animationAnimation$AnimationListenerC0660d implements Animation.AnimationListener {

        /* renamed from: a */
        public final /* synthetic */ View f3927a;

        /* renamed from: b */
        public final /* synthetic */ int f3928b;

        public animationAnimation$AnimationListenerC0660d(View view, int i) {
            CallScreenLayout.this = r4;
            this.f3927a = view;
            this.f3928b = i;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            CallScreenLayout.this.f3907t0 = false;
            this.f3927a.setVisibility(this.f3928b);
            this.f3927a.clearAnimation();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.kedlin.cca.ui.CallScreenLayout$e */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallScreenLayout$e.class */
    public class RunnableC0661e implements Runnable {

        /* renamed from: a */
        public long f3930a;

        /* renamed from: b */
        public final /* synthetic */ long f3931b;

        /* renamed from: c */
        public final /* synthetic */ g61 f3932c;

        /* renamed from: d */
        public final /* synthetic */ TextView f3933d;

        public RunnableC0661e(long j, g61 g61Var, TextView textView) {
            CallScreenLayout.this = r5;
            this.f3931b = j;
            this.f3932c = g61Var;
            this.f3933d = textView;
            this.f3930a = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            String m4275F = CallScreenLayout.this.m4275F(Long.valueOf(this.f3930a));
            String str = m4275F;
            if (this.f3932c.f6661b == g61.EnumC1440c.HOLDING) {
                str = m4275F + " / " + CallScreenLayout.this.getResources().getString(2131820911);
            }
            this.f3933d.setText(str);
            this.f3930a++;
            CallScreenLayout.this.f3848D0.postDelayed(this, 1000L);
        }
    }

    /* renamed from: com.kedlin.cca.ui.CallScreenLayout$f */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallScreenLayout$f.class */
    public class C0662f extends AnimatorListenerAdapter {
        public C0662f() {
            CallScreenLayout.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            CallScreenLayout.this.setAnimationState(EnumC0665i.BOUNCE);
        }
    }

    /* renamed from: com.kedlin.cca.ui.CallScreenLayout$g */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallScreenLayout$g.class */
    public class C0663g extends AnimatorListenerAdapter {

        /* renamed from: a */
        public boolean f3936a = true;

        public C0663g() {
            CallScreenLayout.this = r4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (CallScreenLayout.this.getContext() == null || CallScreenLayout.this.f3911v0 == null || CallScreenLayout.this.f3915x0 != EnumC0665i.BOUNCE) {
                return;
            }
            if (this.f3936a) {
                CallScreenLayout callScreenLayout = CallScreenLayout.this;
                callScreenLayout.f3911v0 = callScreenLayout.m4219v();
                CallScreenLayout.this.f3911v0.addListener(this);
            }
            this.f3936a = false;
            Iterator<C0667k> it = CallScreenLayout.this.f3917y0.iterator();
            while (it.hasNext()) {
                it.next().setVisibility(0);
            }
            CallScreenLayout.this.f3911v0.start();
        }
    }

    /* renamed from: com.kedlin.cca.ui.CallScreenLayout$h */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallScreenLayout$h.class */
    public static /* synthetic */ class C0664h {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3938a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0665i.values().length];
            f3938a = iArr;
            try {
                iArr[EnumC0665i.ENTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3938a[EnumC0665i.BOUNCE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3938a[EnumC0665i.SWIPE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3938a[EnumC0665i.COMPLETED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3938a[EnumC0665i.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.kedlin.cca.ui.CallScreenLayout$i */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallScreenLayout$i.class */
    public enum EnumC0665i {
        NONE,
        ENTER,
        SWIPE,
        BOUNCE,
        SETTLE,
        COMPLETED
    }

    /* renamed from: com.kedlin.cca.ui.CallScreenLayout$j */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallScreenLayout$j.class */
    public interface AbstractC0666j {
        /* renamed from: a */
        void m4209a();

        /* renamed from: c */
        boolean m4208c();

        /* renamed from: g */
        void m4207g();

        /* renamed from: j */
        void m4206j(boolean z);

        /* renamed from: k */
        void m4205k();

        /* renamed from: l */
        void m4204l();

        /* renamed from: m */
        void m4203m();

        /* renamed from: n */
        void m4202n(char c);
    }

    /* renamed from: com.kedlin.cca.ui.CallScreenLayout$k */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallScreenLayout$k.class */
    public static class C0667k extends View {

        /* renamed from: a */
        public Paint f3946a;

        /* renamed from: b */
        public float f3947b;

        public C0667k(Context context, Paint paint, float f) {
            super(context);
            this.f3946a = paint;
            this.f3947b = f;
            setVisibility(4);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            float min = Math.min(getWidth(), getHeight()) / 2;
            canvas.drawCircle(min, min, min - this.f3947b, this.f3946a);
        }
    }

    /* renamed from: com.kedlin.cca.ui.CallScreenLayout$l */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallScreenLayout$l.class */
    public enum EnumC0668l {
        NOT_INIT,
        INIT,
        SPAM
    }

    /* renamed from: com.kedlin.cca.ui.CallScreenLayout$m */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CallScreenLayout$m.class */
    public enum EnumC0669m {
        NONE,
        RINGING,
        DIALING,
        ACTIVE,
        HOLDING,
        FINISHED
    }

    public CallScreenLayout(Context context) {
        super(context);
        m4273G(null, 0);
    }

    public CallScreenLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4273G(attributeSet, 0);
    }

    public CallScreenLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4273G(attributeSet, i);
    }

    /* renamed from: A */
    public static void m4285A(View view, float f) {
        view.setAlpha(ac1.m7237b(view.getAlpha(), f, 0.5f));
    }

    /* renamed from: H */
    public static /* synthetic */ void m4272H(View view) {
    }

    /* renamed from: I */
    public /* synthetic */ void m4270J(g61 g61Var, View view) {
        this.f3852F0.d0(g61Var);
    }

    /* renamed from: K */
    public /* synthetic */ void m4268L(View view) {
        AbstractC0666j abstractC0666j = this.f3892m;
        if (abstractC0666j != null) {
            abstractC0666j.m4209a();
        }
    }

    /* renamed from: M */
    public /* synthetic */ void m4266N(View view) {
        AbstractC0666j abstractC0666j = this.f3892m;
        if (abstractC0666j != null) {
            abstractC0666j.m4205k();
        }
    }

    /* renamed from: O */
    public static /* synthetic */ void m4265O(View view) {
    }

    /* renamed from: P */
    public /* synthetic */ void m4263Q(View view) {
        m4214x0(this.f3874c);
    }

    /* renamed from: R */
    public /* synthetic */ void m4261S(View view) {
        m4218v0(this.f3874c);
    }

    /* renamed from: T */
    public /* synthetic */ void m4259U(View view) {
        CallActivity callActivity = this.f3852F0;
        callActivity.Z(callActivity.d.f6665g, "", this.f3895n0.getText().toString(), this.f3893m0.getText().toString());
    }

    /* renamed from: V */
    public /* synthetic */ void m4257W(View view) {
        this.f3897o0.performClick();
    }

    /* renamed from: X */
    public /* synthetic */ void m4255Y(View view) {
        AbstractC0666j abstractC0666j = this.f3892m;
        if (abstractC0666j != null) {
            abstractC0666j.m4205k();
        }
    }

    /* renamed from: Z */
    public /* synthetic */ void m4253a0(View view) {
        AbstractC0666j abstractC0666j = this.f3892m;
        if (abstractC0666j != null) {
            abstractC0666j.m4204l();
        }
    }

    /* renamed from: b0 */
    public /* synthetic */ void m4251c0(View view) {
        AbstractC0666j abstractC0666j = this.f3892m;
        if (abstractC0666j == null) {
            return;
        }
        EnumC0668l enumC0668l = this.f3850E0;
        EnumC0668l enumC0668l2 = EnumC0668l.SPAM;
        int i = enumC0668l == enumC0668l2 ? 2130969486 : 2130969488;
        if (abstractC0666j.m4208c()) {
            i = this.f3850E0 == enumC0668l2 ? 2130969487 : 2130969489;
        }
        this.f3854H.setBackgroundResource(oe1.m1069o(this.f3899p0, i, false));
    }

    /* renamed from: d0 */
    public /* synthetic */ boolean m4249e0(View view) {
        this.f3891l0.setText("");
        this.f3880f0.setVisibility(4);
        return false;
    }

    /* renamed from: f0 */
    public /* synthetic */ void m4247g0(View view) {
        this.f3891l0.setText("");
        this.f3880f0.setVisibility(4);
    }

    /* renamed from: h0 */
    public /* synthetic */ void m4244i0(View view) {
        AbstractC0666j abstractC0666j = this.f3892m;
        if (abstractC0666j != null) {
            abstractC0666j.m4206j(this.f3905s0);
        }
    }

    /* renamed from: j0 */
    public /* synthetic */ void m4240k0(View view) {
        this.f3889k0.setVisibility(8);
        m4214x0(this.f3876d);
    }

    /* renamed from: l0 */
    public /* synthetic */ void m4236m0(View view) {
        this.f3889k0.setVisibility(8);
        m4216w0(this.f3876d, 8);
    }

    private void setColors(g61 g61Var) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19 = this.f3852F0.E() ? 2130969489 : 2130969488;
        g61.EnumC1440c enumC1440c = g61Var.f6661b;
        g61.EnumC1440c enumC1440c2 = g61.EnumC1440c.HOLDING;
        int i20 = enumC1440c == enumC1440c2 ? 2130969528 : 2130969527;
        n91.C1485b c1485b = g61Var.f6664f;
        if (c1485b == null || g61Var.f6673p || (!c1485b.f7083b && c1485b.f7082a != n91.EnumC1484a.SUSPECTED_SPAM)) {
            this.f3850E0 = EnumC0668l.INIT;
            this.f3918z.setVisibility(0);
            i16 = 2130968740;
            i = i19;
            i2 = i20;
            i8 = 2130968741;
            i7 = 2130968751;
            i12 = 2130969100;
            i15 = 2130968744;
            i14 = 2130968745;
            i13 = 2130969655;
            i18 = 2130968742;
            i11 = 2130968691;
            i10 = 2130968702;
            i6 = 2130968692;
            i9 = 2130968701;
            i5 = 2130968693;
            i17 = 2130968694;
            i4 = 2130969556;
            i3 = 2130969556;
        } else {
            this.f3850E0 = EnumC0668l.SPAM;
            i16 = 2130968746;
            i15 = 2130968748;
            i14 = 2130968749;
            i13 = 2130969654;
            int i21 = this.f3852F0.E() ? 2130969487 : 2130969486;
            int i22 = g61Var.f6661b == enumC1440c2 ? 2130969526 : 2130969525;
            i12 = 2130969098;
            i11 = 2130968695;
            i10 = 2130968700;
            i9 = 2130968699;
            this.f3918z.setVisibility(8);
            i8 = 2130968747;
            i7 = 2130968750;
            i6 = 2130968696;
            i5 = 2130968697;
            i4 = 2130969555;
            i3 = 2130969555;
            i2 = i22;
            i = i21;
            i18 = 2130968743;
            i17 = 2130968698;
        }
        CallAudioState m1949f = f61.m1947h().m1949f();
        if (m1949f != null) {
            setAudioState(m1949f);
        }
        setBackgroundColor(oe1.m1069o(this.f3899p0, i8, true));
        this.f3886j.setBackgroundResource(oe1.m1069o(this.f3899p0, i7, false));
        this.f3888k.setBackgroundResource(oe1.m1069o(this.f3899p0, i16, false));
        this.f3878e0.setBackgroundResource(oe1.m1069o(this.f3899p0, i15, false));
        this.f3878e0.setImageResource(oe1.m1069o(this.f3899p0, i14, false));
        this.f3841A.setTextColor(oe1.m1069o(this.f3899p0, i3, true));
        this.f3854H.setBackgroundResource(oe1.m1069o(this.f3899p0, i, false));
        this.f3853G.setBackgroundResource(oe1.m1069o(this.f3899p0, i2, false));
        this.f3855I.setBackgroundResource(oe1.m1069o(this.f3899p0, i12, false));
        int m1069o = oe1.m1069o(this.f3899p0, i4, true);
        int m1069o2 = oe1.m1069o(this.f3899p0, i13, true);
        this.f3875c0.setImageResource(oe1.m1069o(this.f3899p0, i18, false));
        this.f3896o.setTextColor(m1069o2);
        this.f3898p.setTextColor(m1069o);
        this.f3902r.setTextColor(m1069o);
        this.f3904s.setTextColor(m1069o);
        this.f3900q.setTextColor(m1069o);
        this.f3918z.setTextColor(m1069o);
        this.f3914x.setTextColor(m1069o);
        this.f3894n.setBackgroundColor(m1069o);
        this.f3916y.setTextColor(m1069o);
        this.f3901q0.setColor(m1069o2);
        this.f3903r0.setColor(m1069o2);
        this.f3874c.setBackgroundResource(oe1.m1069o(this.f3899p0, i11, false));
        this.f3843B.setTextColor(oe1.m1069o(this.f3899p0, i17, true));
        this.f3882g0.setImageResource(oe1.m1069o(this.f3899p0, i6, false));
        this.f3906t.setTextColor(oe1.m1069o(this.f3899p0, i10, true));
        this.f3912w.setTextColor(oe1.m1069o(this.f3899p0, i5, true));
        int m1069o3 = oe1.m1069o(this.f3899p0, i9, true);
        this.f3908u.setTextColor(m1069o3);
        this.f3895n0.setTextColor(m1069o3);
        this.f3895n0.setHintTextColor(m1069o3);
        this.f3910v.setTextColor(m1069o3);
        this.f3893m0.setTextColor(m1069o3);
        this.f3893m0.setHintTextColor(m1069o3);
    }

    /* renamed from: A0 */
    public final void m4284A0() {
        m4211z();
    }

    /* renamed from: B */
    public final void m4283B() {
        int i;
        int i2;
        String str;
        String str2;
        n91.C1485b c1485b;
        this.f3868V.removeAllViews();
        this.f3869W.removeAllViews();
        this.f3871a0.setVisibility(8);
        C0012a7 c0012a7 = new C0012a7();
        c0012a7.m7367j(this.f3870a);
        c0012a7.m7364m(2131362033, 3, 2131362086, 4, 0);
        c0012a7.m7373d(this.f3870a);
        f61 m1947h = f61.m1947h();
        Iterator<g61> it = m1947h.f6541d.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                i = 2130969556;
                i2 = 2130969769;
                break;
            }
            g61 next = it.next();
            if (next.f6660a.equals(this.f3852F0.d.f6660a) && (c1485b = next.f6664f) != null && c1485b.f7083b && !next.f6673p) {
                i = 2130969555;
                i2 = 2130969770;
                break;
            }
        }
        int m1069o = oe1.m1069o(this.f3899p0, i, true);
        int m1069o2 = oe1.m1069o(this.f3899p0, i2, false);
        this.f3849E.setTextColor(m1069o);
        this.f3851F.setTextColor(m1069o);
        boolean z = false;
        for (final g61 g61Var : m1947h.f6541d.values()) {
            String displayCountry = new Locale("", g61Var.f6665g.m1606h()).getDisplayCountry();
            if (!g61Var.f6660a.equals(this.f3852F0.d.f6660a) || z) {
                ConstraintLayout constraintLayout = (ConstraintLayout) this.f3852F0.getLayoutInflater().inflate(2131558455, (ViewGroup) this.f3869W, false);
                TextView textView = (TextView) constraintLayout.findViewById(2131362085);
                TextView textView2 = (TextView) constraintLayout.findViewById(2131362083);
                LinearLayout linearLayout = (LinearLayout) constraintLayout.findViewById(2131362098);
                RelativeLayout relativeLayout = (RelativeLayout) constraintLayout.findViewById(2131362123);
                TextView textView3 = (TextView) constraintLayout.findViewById(2131362125);
                textView3.setTextColor(m1069o);
                ((ImageView) constraintLayout.findViewById(2131362122)).setBackgroundResource(m1069o2);
                textView3.setTextColor(m1069o);
                textView2.setTextColor(m1069o);
                textView.setTextColor(m1069o);
                linearLayout.setVisibility(8);
                textView.setAlpha(0.6f);
                textView2.setAlpha(0.6f);
                relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: ab1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        CallScreenLayout.this.m4270J(g61Var, view);
                    }
                });
                String m4277E = m4277E(g61Var);
                if (m4277E == null || m4277E.isEmpty() || g61Var.f6665g.m1597q() || g61Var.f6665g.m1595s() || g61Var.f6668k == null) {
                    textView.setText(m4277E != null ? m4277E : g61Var.f6665g.m1602l());
                    str = TextUtils.equals(m4277E, g61Var.f6665g.m1602l()) ? displayCountry : getResources().getString(2131820895, g61Var.f6665g.m1602l(), displayCountry);
                } else {
                    textView.setText(m4277E);
                    str = displayCountry;
                    if (!TextUtils.equals(m4277E, g61Var.f6665g.m1602l())) {
                        str = TextUtils.equals(m4277E, g61Var.f6665g.m1601m()) ? displayCountry : getResources().getString(2131820897, g61Var.f6665g.m1602l());
                    }
                }
                textView2.setText(str);
                this.f3869W.addView(constraintLayout);
            } else {
                ConstraintLayout constraintLayout2 = (ConstraintLayout) this.f3852F0.getLayoutInflater().inflate(2131558455, (ViewGroup) this.f3868V, false);
                TextView textView4 = (TextView) constraintLayout2.findViewById(2131362085);
                TextView textView5 = (TextView) constraintLayout2.findViewById(2131362083);
                LinearLayout linearLayout2 = (LinearLayout) constraintLayout2.findViewById(2131362098);
                TextView textView6 = (TextView) constraintLayout2.findViewById(2131362100);
                RelativeLayout relativeLayout2 = (RelativeLayout) constraintLayout2.findViewById(2131362081);
                textView6.setTextColor(m1069o);
                textView5.setTextColor(m1069o);
                textView4.setTextColor(m1069o);
                linearLayout2.setVisibility(0);
                relativeLayout2.setVisibility(4);
                ((RelativeLayout) constraintLayout2.findViewById(2131362123)).setVisibility(4);
                textView5.setAlpha(0.7f);
                String m4277E2 = m4277E(g61Var);
                if (m4277E2 == null || m4277E2.isEmpty() || g61Var.f6665g.m1597q() || g61Var.f6665g.m1595s() || g61Var.f6668k == null) {
                    textView4.setText(m4277E2 != null ? m4277E2 : g61Var.f6665g.m1602l());
                    str2 = displayCountry;
                    if (!TextUtils.equals(m4277E2, g61Var.f6665g.m1602l())) {
                        str2 = TextUtils.equals(m4277E2, g61Var.f6665g.m1601m()) ? displayCountry : getResources().getString(2131820895, g61Var.f6665g.m1602l(), displayCountry);
                    }
                } else {
                    textView4.setText(m4277E2);
                    str2 = TextUtils.equals(m4277E2, g61Var.f6665g.m1602l()) ? displayCountry : getResources().getString(2131820897, g61Var.f6665g.m1602l());
                }
                textView5.setText(str2);
                this.f3868V.addView(constraintLayout2);
                m4282B0(g61Var, textView6);
                z = true;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* renamed from: B0 */
    public final void m4282B0(g61 g61Var, TextView textView) {
        ?? r13 = false;
        if (g61Var.f6670m > 0) {
            r13 = (System.currentTimeMillis() - g61Var.f6670m) / 1000;
        }
        this.f3848D0.removeCallbacksAndMessages(null);
        this.f3848D0.post(new RunnableC0661e(r13 == true ? 1L : 0L, g61Var, textView));
    }

    /* renamed from: C */
    public final void m4281C(g61 g61Var) {
        m4279D(g61Var, false);
    }

    /* renamed from: C0 */
    public void m4280C0() {
        AbstractC0666j abstractC0666j = this.f3892m;
        if (abstractC0666j != null) {
            abstractC0666j.m4207g();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0164, code lost:
        if (r7.f3902r.getText().toString().isEmpty() != false) goto L22;
     */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4279D(p000.g61 r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 1065
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kedlin.cca.p007ui.CallScreenLayout.m4279D(g61, boolean):void");
    }

    /* renamed from: D0 */
    public void m4278D0() {
        this.f3848D0.removeCallbacksAndMessages(null);
    }

    /* renamed from: E */
    public final String m4277E(g61 g61Var) {
        String str;
        q81 q81Var = g61Var.f6668k;
        if (q81Var != null) {
            str = q81Var.f7779f;
        } else {
            x81 x81Var = g61Var.f6667j;
            if (x81Var != null) {
                String str2 = x81Var.f8636f;
                str = str2;
                if (str2 == null) {
                    str = x81Var.f8637g.m1602l();
                }
            } else {
                str = g61Var.f6666h;
            }
        }
        return str;
    }

    /* renamed from: E0 */
    public final void m4276E0() {
        int i = C0664h.f3938a[this.f3915x0.ordinal()];
        if (i == 1) {
            m4210z0();
        } else if (i == 2) {
            m4212y0();
        } else if (i == 3) {
            m4284A0();
        } else if (i == 4) {
            m4225s();
        } else {
            j91.m1505k(f3840G0 + ":updateAnimationState", "Unexpected animation state: " + this.f3915x0);
        }
    }

    /* renamed from: F */
    public final String m4275F(Long l) {
        return l.longValue() < 3600 ? String.format("%02d:%02d", Long.valueOf((l.longValue() % 3600) / 60), Long.valueOf(l.longValue() % 60)) : String.format("%02d:%02d:%02d", Long.valueOf(l.longValue() / 3600), Long.valueOf((l.longValue() % 3600) / 60), Long.valueOf(l.longValue() % 60));
    }

    /* renamed from: F0 */
    public final void m4274F0(float f, int i) {
        ConstraintLayout constraintLayout;
        float f2;
        if (i == 2131362109) {
            this.f3903r0.setRadius(((int) (Math.min(this.f3903r0.getMeasuredWidth(), this.f3903r0.getMeasuredHeight()) * (f + 0.1d))) / 2);
            this.f3903r0.invalidate();
            f2 = Math.max(0.0f, 1.0f - f);
            constraintLayout = this.f3866T;
        } else {
            this.f3901q0.setRadius(((int) (Math.min(this.f3901q0.getMeasuredWidth(), this.f3901q0.getMeasuredHeight()) * (f + 0.1d))) / 2);
            this.f3901q0.invalidate();
            f2 = Math.max(0.0f, 1.0f - f);
            constraintLayout = this.f3867U;
        }
        m4285A(constraintLayout, f2);
    }

    /* renamed from: G */
    public final void m4273G(AttributeSet attributeSet, int i) {
    }

    @Override // p000.xb1.AbstractC1725c
    /* renamed from: a */
    public void mo126a(boolean z) {
        setAnimationState(EnumC0665i.BOUNCE);
    }

    @Override // p000.xb1.AbstractC1725c
    /* renamed from: b */
    public void mo125b(boolean z, int i) {
        this.f3903r0.setReadyForDraw(false);
        this.f3901q0.setReadyForDraw(false);
        this.f3842A0.m129s(false);
        this.f3919z0.m129s(false);
        if (z && i == 2131362108) {
            m4234n0();
        }
        if (!z || i != 2131362109) {
            return;
        }
        m4232o0();
    }

    @Override // p000.j71.AbstractC1450a
    /* renamed from: d */
    public void mo1531d(CallAudioState callAudioState) {
        setAudioState(callAudioState);
    }

    @Override // p000.xb1.AbstractC1725c
    /* renamed from: e */
    public void mo124e() {
        this.f3903r0.setReadyForDraw(false);
        this.f3901q0.setReadyForDraw(false);
    }

    @Override // p000.xb1.AbstractC1725c
    /* renamed from: f */
    public void mo123f(float f, int i) {
        if (this.f3915x0 != EnumC0665i.SWIPE || getContext() == null) {
            return;
        }
        m4274F0(f, i);
    }

    @Override // p000.xb1.AbstractC1725c
    /* renamed from: g */
    public boolean mo122g(MotionEvent motionEvent) {
        return false;
    }

    @Override // p000.xb1.AbstractC1725c
    /* renamed from: h */
    public void mo121h(int i) {
        if (i == 2131362108) {
            this.f3901q0.setReadyForDraw(true);
        }
        if (i == 2131362109) {
            this.f3903r0.setReadyForDraw(true);
        }
        setAnimationState(EnumC0665i.SWIPE);
    }

    /* renamed from: n0 */
    public final void m4234n0() {
        this.f3867U.setVisibility(8);
        this.f3866T.setVisibility(8);
        setAnimationState(EnumC0665i.COMPLETED);
        AbstractC0666j abstractC0666j = this.f3892m;
        if (abstractC0666j != null) {
            abstractC0666j.m4203m();
        }
    }

    /* renamed from: o0 */
    public final void m4232o0() {
        this.f3867U.setVisibility(8);
        this.f3866T.setVisibility(8);
        setAnimationState(EnumC0665i.COMPLETED);
        AbstractC0666j abstractC0666j = this.f3892m;
        if (abstractC0666j != null) {
            abstractC0666j.m4205k();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Point m1077k = oe1.m1077k(this.f3852F0);
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f3888k.getLayoutParams();
        int i = m1077k.x;
        ((ViewGroup.MarginLayoutParams) layoutParams).height = i;
        ((ViewGroup.MarginLayoutParams) layoutParams).width = i;
        this.f3888k.setLayoutParams(layoutParams);
        ((TextView) findViewById(2131362075)).setText(Html.fromHtml(getContext().getString(2131820919)));
        this.f3919z0 = xb1.m144d(this.f3867U, this, this.f3852F0.l);
        this.f3842A0 = xb1.m144d(this.f3866T, this, this.f3852F0.l);
        this.f3875c0.setOnClickListener(new View.OnClickListener() { // from class: bb1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallScreenLayout.this.m4268L(view);
            }
        });
        this.f3878e0.setOnClickListener(new View.OnClickListener() { // from class: ib1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallScreenLayout.this.m4266N(view);
            }
        });
        this.f3864R.setOnClickListener(new View.OnClickListener() { // from class: fb1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallScreenLayout.this.m4255Y(view);
            }
        });
        this.f3859M.setOnClickListener(new View.OnClickListener() { // from class: gb1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallScreenLayout.this.m4253a0(view);
            }
        });
        this.f3860N.setOnClickListener(new View.OnClickListener() { // from class: mb1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallScreenLayout.this.m4251c0(view);
            }
        });
        vb1 vb1Var = new vb1(this);
        this.f3846C0 = vb1Var;
        this.f3891l0.setKeyListener(vb1Var);
        int i2 = 0;
        this.f3891l0.setLongClickable(false);
        this.f3891l0.setElegantTextHeight(false);
        this.f3880f0.setOnLongClickListener(new View.OnLongClickListener() { // from class: ya1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return CallScreenLayout.this.m4249e0(view);
            }
        });
        this.f3880f0.setOnClickListener(new View.OnClickListener() { // from class: hb1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallScreenLayout.this.m4247g0(view);
            }
        });
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: db1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallScreenLayout.this.m4244i0(view);
            }
        };
        this.f3861O.setOnClickListener(onClickListener);
        this.f3865S.setOnClickListener(onClickListener);
        this.f3862P.setOnClickListener(new View.OnClickListener() { // from class: za1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallScreenLayout.this.m4240k0(view);
            }
        });
        this.f3863Q.setOnClickListener(new View.OnClickListener() { // from class: lb1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallScreenLayout.this.m4236m0(view);
            }
        });
        this.f3874c.setOnClickListener(nb1.f7124a);
        this.f3883h.setOnClickListener(new View.OnClickListener() { // from class: cb1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallScreenLayout.this.m4263Q(view);
            }
        });
        this.f3843B.setOnClickListener(new View.OnClickListener() { // from class: eb1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallScreenLayout.this.m4261S(view);
            }
        });
        this.f3882g0.setOnClickListener(new View.OnClickListener() { // from class: kb1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallScreenLayout.this.m4259U(view);
            }
        });
        m4221u();
        SparseArray<i71> m708n = r71.m708n();
        int i3 = 1;
        String[] strArr = new String[m708n.size() + 1];
        strArr[0] = getContext().getString(2131820906);
        i71[] i71VarArr = (i71[]) ka1.m1420d(m708n, i71.class);
        int length = i71VarArr.length;
        while (i2 < length) {
            strArr[i3] = i71VarArr[i2].f6743a;
            i2++;
            i3++;
        }
        this.f3897o0.setAdapter((SpinnerAdapter) new ArrayAdapter(getContext(), Build.VERSION.SDK_INT < 23 ? 17367043 : 2131558458, strArr));
        this.f3895n0.setOnClickListener(new View.OnClickListener() { // from class: jb1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallScreenLayout.this.m4257W(view);
            }
        });
        this.f3897o0.setOnItemSelectedListener(new C0656a(strArr));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        xb1 xb1Var = this.f3919z0;
        if (xb1Var != null) {
            xb1Var.m141g();
            this.f3919z0 = null;
        }
        xb1 xb1Var2 = this.f3842A0;
        if (xb1Var2 != null) {
            xb1Var2.m141g();
            this.f3842A0 = null;
        }
        this.f3846C0 = null;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f3870a = (ConstraintLayout) findViewById(2131362036);
        this.f3898p = (TextView) findViewById(2131362028);
        this.f3900q = (TextView) findViewById(2131362038);
        this.f3902r = (TextView) findViewById(2131362034);
        this.f3904s = (TextView) findViewById(2131362035);
        this.f3872b = (ConstraintLayout) findViewById(2131362033);
        this.f3914x = (TextView) findViewById(2131362032);
        this.f3883h = (ConstraintLayout) findViewById(2131362029);
        this.f3879f = (ConstraintLayout) findViewById(2131362071);
        this.f3881g = (ConstraintLayout) findViewById(2131362119);
        this.f3916y = (TextView) findViewById(2131362128);
        this.f3871a0 = (LinearLayout) findViewById(2131362126);
        this.f3918z = (TextView) findViewById(2131362013);
        this.f3896o = (TextView) findViewById(2131362129);
        this.f3882g0 = (ImageView) findViewById(2131362335);
        this.f3843B = (TextView) findViewById(2131362334);
        this.f3894n = findViewById(2131362031);
        this.f3849E = (TextView) findViewById(2131362093);
        this.f3851F = (TextView) findViewById(2131362094);
        this.f3841A = (TextView) findViewById(2131362111);
        this.f3863Q = (RelativeLayout) findViewById(2131362059);
        this.f3876d = (ConstraintLayout) findViewById(2131362054);
        this.f3874c = (ConstraintLayout) findViewById(2131362030);
        this.f3865S = (RelativeLayout) findViewById(2131362077);
        this.f3875c0 = (ImageView) findViewById(2131362118);
        this.f3853G = (ImageButton) findViewById(2131362105);
        this.f3859M = (RelativeLayout) findViewById(2131362106);
        this.f3860N = (RelativeLayout) findViewById(2131362103);
        this.f3862P = (RelativeLayout) findViewById(2131362051);
        this.f3861O = (RelativeLayout) findViewById(2131362078);
        this.f3854H = (ImageButton) findViewById(2131362102);
        this.f3856J = (ImageButton) findViewById(2131362076);
        this.f3855I = (ImageButton) findViewById(2131362039);
        this.f3884h0 = (ImageView) findViewById(2131362127);
        this.f3857K = (ImageButton) findViewById(2131362063);
        this.f3864R = (RelativeLayout) findViewById(2131362052);
        this.f3890l = (ConstraintLayout) findViewById(2131362113);
        this.f3877d0 = (ImageView) findViewById(2131362668);
        this.f3878e0 = (ImageView) findViewById(2131362110);
        this.f3867U = (ConstraintLayout) findViewById(2131362109);
        this.f3866T = (ConstraintLayout) findViewById(2131362108);
        this.f3888k = (ConstraintLayout) findViewById(2131362026);
        this.f3886j = (ConstraintLayout) findViewById(2131362027);
        this.f3873b0 = (ImageView) findViewById(2131362037);
        this.f3880f0 = (ImageView) findViewById(2131362055);
        this.f3889k0 = (Space) findViewById(2131362662);
        this.f3868V = (LinearLayout) findViewById(2131362087);
        this.f3858L = (RelativeLayout) findViewById(2131362086);
        this.f3869W = (LinearLayout) findViewById(2131362088);
        this.f3891l0 = (EditText) findViewById(2131362065);
        this.f3845C = (TextView) findViewById(2131362079);
        this.f3847D = (TextView) findViewById(2131362064);
        this.f3906t = (TextView) findViewById(2131362329);
        this.f3912w = (TextView) findViewById(2131362336);
        this.f3908u = (TextView) findViewById(2131362333);
        this.f3895n0 = (EditText) findViewById(2131362330);
        this.f3910v = (TextView) findViewById(2131362328);
        this.f3893m0 = (EditText) findViewById(2131362326);
        this.f3897o0 = (Spinner) findViewById(2131362332);
        this.f3901q0 = (OverlayWithHoleImageView) findViewById(2131362664);
        this.f3903r0 = (OverlayWithHoleImageView) findViewById(2131362666);
        this.f3885i0 = (ImageView) findViewById(2131362665);
        this.f3887j0 = (ImageView) findViewById(2131362663);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.f3903r0.getLayoutParams();
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.f3885i0.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams).height = this.f3867U.getMeasuredHeight() + layoutParams2.getMarginStart();
        ((ViewGroup.MarginLayoutParams) layoutParams).width = this.f3867U.getMeasuredWidth() + layoutParams2.getMarginStart();
        this.f3903r0.setLayoutParams(layoutParams);
        ConstraintLayout.LayoutParams layoutParams3 = (ConstraintLayout.LayoutParams) this.f3901q0.getLayoutParams();
        ConstraintLayout.LayoutParams layoutParams4 = (ConstraintLayout.LayoutParams) this.f3887j0.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) layoutParams3).height = this.f3866T.getMeasuredHeight() + layoutParams4.getMarginEnd();
        ((ViewGroup.MarginLayoutParams) layoutParams3).width = this.f3866T.getMeasuredWidth() + layoutParams4.getMarginEnd();
        this.f3901q0.setLayoutParams(layoutParams3);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
    }

    /* renamed from: p0 */
    public void m4230p0(char c) {
        if (PhoneNumberUtils.is12Key(c)) {
            this.f3891l0.getText().append(c);
            this.f3892m.m4202n(c);
        }
    }

    /* renamed from: q0 */
    public void m4228q0() {
        this.f3892m = null;
    }

    /* renamed from: r */
    public final void m4227r(AnimatorSet animatorSet) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(oe1.m1069o(this.f3899p0, this.f3850E0 == EnumC0668l.SPAM ? 2130969654 : 2130969655, true));
        float dimension = getResources().getDimension(2131165785);
        int id = this.f3887j0.getId();
        int id2 = this.f3885i0.getId();
        int i = (int) ((dimension + 0.0f) * 2.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 2; i2++) {
            C0667k c0667k = new C0667k(getContext(), paint, 0.0f);
            int generateViewId = View.generateViewId();
            c0667k.setId(generateViewId);
            C0012a7 c0012a7 = new C0012a7();
            this.f3866T.addView(c0667k, layoutParams);
            c0012a7.m7367j(this.f3866T);
            c0012a7.m7365l(generateViewId, 3, id, 3);
            c0012a7.m7365l(generateViewId, 6, id, 6);
            c0012a7.m7365l(generateViewId, 4, id, 4);
            c0012a7.m7365l(generateViewId, 7, id, 7);
            c0012a7.m7373d(this.f3866T);
            this.f3917y0.add(c0667k);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(c0667k, "ScaleX", 3.8f, 6.0f);
            ofFloat.setRepeatCount(-1);
            ofFloat.setRepeatMode(1);
            long j = i2 * CredentialsApi.CREDENTIAL_PICKER_REQUEST_CODE;
            ofFloat.setStartDelay(j);
            long j2 = 4000;
            ofFloat.setDuration(j2);
            arrayList.add(ofFloat);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(c0667k, "ScaleY", 3.8f, 6.0f);
            ofFloat2.setRepeatCount(-1);
            ofFloat2.setRepeatMode(1);
            ofFloat2.setStartDelay(j);
            ofFloat2.setDuration(j2);
            arrayList.add(ofFloat2);
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(c0667k, "Alpha", 0.5f, 0.0f);
            ofFloat3.setRepeatCount(-1);
            ofFloat3.setRepeatMode(1);
            ofFloat3.setStartDelay(j);
            ofFloat3.setDuration(j2);
            arrayList.add(ofFloat3);
        }
        for (int i3 = 0; i3 < 2; i3++) {
            C0667k c0667k2 = new C0667k(getContext(), paint, 0.0f);
            int generateViewId2 = View.generateViewId();
            c0667k2.setId(generateViewId2);
            C0012a7 c0012a72 = new C0012a7();
            this.f3867U.addView(c0667k2, layoutParams);
            c0012a72.m7367j(this.f3867U);
            c0012a72.m7365l(generateViewId2, 3, id2, 3);
            c0012a72.m7365l(generateViewId2, 6, id2, 6);
            c0012a72.m7365l(generateViewId2, 4, id2, 4);
            c0012a72.m7365l(generateViewId2, 7, id2, 7);
            c0012a72.m7373d(this.f3867U);
            this.f3917y0.add(c0667k2);
            ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(c0667k2, "ScaleX", 3.8f, 6.0f);
            ofFloat4.setRepeatCount(-1);
            ofFloat4.setRepeatMode(1);
            long j3 = i3 * CredentialsApi.CREDENTIAL_PICKER_REQUEST_CODE;
            ofFloat4.setStartDelay(j3);
            long j4 = 4000;
            ofFloat4.setDuration(j4);
            arrayList.add(ofFloat4);
            ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(c0667k2, "ScaleY", 3.8f, 6.0f);
            ofFloat5.setRepeatCount(-1);
            ofFloat5.setRepeatMode(1);
            ofFloat5.setStartDelay(j3);
            ofFloat5.setDuration(j4);
            arrayList.add(ofFloat5);
            ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(c0667k2, "Alpha", 0.5f, 0.0f);
            ofFloat6.setRepeatCount(-1);
            ofFloat6.setRepeatMode(1);
            ofFloat6.setStartDelay(j3);
            ofFloat6.setDuration(j4);
            arrayList.add(ofFloat6);
        }
        animatorSet.playTogether(arrayList);
    }

    /* renamed from: r0 */
    public void m4226r0(g61 g61Var) {
        setColors(g61Var);
        if (f61.m1947h().f6541d.size() > 1) {
            this.f3858L.setVisibility(0);
            this.f3898p.setVisibility(8);
            this.f3902r.setVisibility(8);
            this.f3900q.setVisibility(8);
            this.f3871a0.setVisibility(8);
            this.f3918z.setVisibility(8);
            this.f3873b0.setVisibility(8);
            m4283B();
        } else {
            m4282B0(g61Var, this.f3916y);
            this.f3871a0.setVisibility(0);
            this.f3858L.setVisibility(8);
            this.f3898p.setVisibility(0);
            this.f3900q.setVisibility(0);
            this.f3918z.setVisibility(this.f3873b0.getVisibility() == 0 ? 8 : 4);
            m4279D(g61Var, true);
        }
        this.f3879f.setVisibility(8);
        this.f3841A.setVisibility(0);
        this.f3875c0.setVisibility(8);
        this.f3883h.setVisibility(8);
        this.f3879f.setVisibility(8);
        this.f3859M.setVisibility(0);
        this.f3862P.setVisibility(0);
        this.f3890l.setVisibility(8);
        this.f3875c0.setVisibility(8);
        this.f3870a.setVisibility(0);
        this.f3904s.setVisibility(8);
        this.f3902r.setVisibility(8);
        if (this.f3872b.getVisibility() == 4) {
            m4214x0(this.f3872b);
        }
        this.f3867U.setVisibility(8);
        this.f3866T.setVisibility(8);
        if (!g61Var.f6673p) {
            this.f3876d.setVisibility(4);
        }
        this.f3884h0.setVisibility(0);
        this.f3916y.setText(m4275F(0L));
        this.f3878e0.setVisibility(0);
        setAnimationState(EnumC0665i.COMPLETED);
        this.f3844B0 = EnumC0669m.ACTIVE;
    }

    /* renamed from: s */
    public final void m4225s() {
        m4211z();
    }

    /* renamed from: s0 */
    public void m4224s0(g61 g61Var) {
        if (this.f3870a == null) {
            return;
        }
        setColors(g61Var);
        this.f3904s.setVisibility(8);
        int i = 4;
        if (!this.f3907t0 && this.f3872b.getVisibility() == 4) {
            m4214x0(this.f3872b);
        }
        this.f3874c.setVisibility(4);
        this.f3879f.setVisibility(8);
        this.f3871a0.setVisibility(0);
        this.f3879f.setVisibility(8);
        this.f3883h.setVisibility(8);
        this.f3875c0.setVisibility(8);
        this.f3866T.setVisibility(8);
        this.f3867U.setVisibility(8);
        this.f3870a.setVisibility(0);
        this.f3902r.setVisibility(8);
        this.f3878e0.setVisibility(0);
        this.f3841A.setVisibility(0);
        this.f3859M.setVisibility(4);
        this.f3862P.setVisibility(0);
        this.f3890l.setVisibility(8);
        m4281C(g61Var);
        TextView textView = this.f3918z;
        if (this.f3873b0.getVisibility() == 0) {
            i = 8;
        }
        textView.setVisibility(i);
        this.f3916y.setText(g61Var.f6661b == g61.EnumC1440c.CONNECTING ? 2131820899 : 2131820933);
        this.f3884h0.setVisibility(8);
        this.f3844B0 = EnumC0669m.DIALING;
    }

    public void setActivity(CallActivity callActivity) {
        this.f3852F0 = callActivity;
        this.f3899p0 = callActivity.getTheme();
    }

    public void setAnimationState(EnumC0665i enumC0665i) {
        EnumC0665i enumC0665i2 = this.f3915x0;
        if (enumC0665i2 == enumC0665i) {
            return;
        }
        if (enumC0665i2 == EnumC0665i.NONE && enumC0665i == EnumC0665i.ENTER) {
            this.f3866T.setAlpha(0.5f);
            this.f3867U.setAlpha(0.5f);
        }
        EnumC0665i enumC0665i3 = enumC0665i;
        if (enumC0665i == EnumC0665i.BOUNCE) {
            enumC0665i3 = enumC0665i;
            if (this.f3915x0 == EnumC0665i.SWIPE) {
                enumC0665i3 = EnumC0665i.ENTER;
            }
        }
        this.f3915x0 = enumC0665i3;
        m4276E0();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x006c, code lost:
        if (r4.f3850E0 == com.kedlin.cca.p007ui.CallScreenLayout.EnumC0668l.SPAM) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d3, code lost:
        if (r4.f3850E0 == com.kedlin.cca.p007ui.CallScreenLayout.EnumC0668l.SPAM) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d9, code lost:
        r10 = 2130969408;
        r6 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e1, code lost:
        r9 = r10;
        r11 = 2131820884;
        r10 = 2131231316;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setAudioState(android.telecom.CallAudioState r5) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kedlin.cca.p007ui.CallScreenLayout.setAudioState(android.telecom.CallAudioState):void");
    }

    public void setCallScreenLayoutListener(AbstractC0666j abstractC0666j) {
        this.f3892m = abstractC0666j;
    }

    /* renamed from: t */
    public void m4223t() {
        if (m4213y()) {
            m4216w0(this.f3876d, 8);
        }
    }

    /* renamed from: t0 */
    public void m4222t0(int i) {
        TextView textView;
        int i2;
        m4278D0();
        if (this.f3872b.getVisibility() == 0) {
            m4218v0(this.f3872b);
        }
        if (this.f3874c.getVisibility() == 0) {
            m4218v0(this.f3874c);
        }
        this.f3918z.setVisibility(4);
        this.f3884h0.setVisibility(8);
        if (i != 1) {
            if (i != 7) {
                textView = this.f3916y;
                i2 = 2131820896;
            } else {
                textView = this.f3916y;
                i2 = 2131820894;
            }
            textView.setText(i2);
        } else {
            this.f3916y.setText(2131820931);
            Toast.makeText(getContext(), 2131820932, 1).show();
        }
        this.f3871a0.setVisibility(0);
        this.f3879f.setVisibility(8);
        this.f3875c0.setVisibility(8);
        this.f3866T.setVisibility(8);
        this.f3867U.setVisibility(8);
        this.f3878e0.setVisibility(8);
        this.f3841A.setVisibility(8);
        this.f3883h.setVisibility(8);
        this.f3902r.setVisibility(8);
        this.f3904s.setVisibility(8);
        this.f3890l.setVisibility(8);
        if (this.f3876d.getVisibility() == 0) {
            m4216w0(this.f3876d, 8);
        }
        this.f3877d0.setVisibility(0);
        setAnimationState(EnumC0665i.COMPLETED);
        this.f3844B0 = EnumC0669m.FINISHED;
    }

    /* renamed from: u */
    public final void m4221u() {
        Vibrator vibrator = (Vibrator) this.f3852F0.getSystemService("vibrator");
        for (int i = 0; i < 12; i++) {
            View findViewById = findViewById(new int[]{2131362040, 2131362041, 2131362042, 2131362043, 2131362044, 2131362045, 2131362046, 2131362047, 2131362048, 2131362049, 2131362050, 2131362053}[i]);
            if (findViewById != null) {
                findViewById.setOnClickListener(xa1.f8650a);
                findViewById.setOnTouchListener(new View$OnTouchListenerC0657b(vibrator));
            }
        }
    }

    /* renamed from: u0 */
    public void m4220u0(g61 g61Var) {
        n91.EnumC1484a enumC1484a;
        if (this.f3870a == null) {
            return;
        }
        if (f61.m1947h().f6541d.size() > 1) {
            m4223t();
        }
        setColors(g61Var);
        this.f3866T.setVisibility(0);
        this.f3867U.setVisibility(0);
        setAnimationState(EnumC0665i.ENTER);
        if (g61Var.f6665g.m1597q() || g61Var.f6665g.m1598p() || g61Var.f6665g.m1595s()) {
            this.f3883h.setVisibility(8);
        } else {
            this.f3883h.setVisibility(0);
        }
        n91.C1485b c1485b = g61Var.f6664f;
        if (c1485b == null || !c1485b.f7083b || (!g61Var.f6665g.m1597q() && !g61Var.f6665g.m1595s())) {
            this.f3898p.setVisibility(0);
            this.f3900q.setVisibility(0);
        } else {
            this.f3898p.setVisibility(8);
            this.f3900q.setVisibility(8);
        }
        xb1 xb1Var = this.f3919z0;
        if (xb1Var != null) {
            xb1Var.m129s(true);
        }
        xb1 xb1Var2 = this.f3842A0;
        if (xb1Var2 != null) {
            xb1Var2.m129s(true);
        }
        this.f3870a.setVisibility(0);
        if (r71.EnumC1638a.f7909M0.m695a() || this.f3850E0 == EnumC0668l.SPAM || g61Var.f6668k != null || g61Var.f6667j != null) {
            this.f3879f.setVisibility(8);
            this.f3918z.setVisibility(this.f3850E0 != EnumC0668l.SPAM ? 0 : 8);
        } else {
            this.f3879f.setVisibility(0);
            this.f3918z.setVisibility(8);
        }
        this.f3878e0.setVisibility(8);
        this.f3871a0.setVisibility(8);
        this.f3918z.setText(f61.m1947h().f6541d.size() > 1 ? 2131820938 : 2131820901);
        this.f3875c0.setVisibility(0);
        this.f3870a.setVisibility(0);
        this.f3873b0.setVisibility(0);
        this.f3904s.setVisibility(8);
        this.f3902r.setVisibility(8);
        m4281C(g61Var);
        this.f3872b.setVisibility(4);
        this.f3889k0.setVisibility(0);
        n91.C1485b c1485b2 = g61Var.f6664f;
        if (c1485b2 != null && ((((enumC1484a = c1485b2.f7082a) == n91.EnumC1484a.COMMUNITY_BLACKLIST && c1485b2.f7083b) || (enumC1484a == n91.EnumC1484a.SUSPECTED_SPAM && !c1485b2.f7083b)) && !r71.EnumC1638a.f7953h.m695a() && !g61Var.f6672o)) {
            this.f3890l.setVisibility(0);
        }
        this.f3844B0 = EnumC0669m.RINGING;
    }

    /* renamed from: v */
    public final Animator m4219v() {
        AnimatorSet animatorSet = new AnimatorSet();
        m4227r(animatorSet);
        return animatorSet;
    }

    /* renamed from: v0 */
    public void m4218v0(View view) {
        m4216w0(view, 4);
    }

    /* renamed from: w */
    public final Animator m4217w() {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        if (this.f3866T.getAlpha() < 1.0f) {
            arrayList.add(m4215x(this.f3866T, 1.0f, 200L));
        }
        if (this.f3867U.getAlpha() < 1.0f) {
            arrayList.add(m4215x(this.f3867U, 1.0f, 200L));
        }
        animatorSet.playTogether(arrayList);
        return animatorSet;
    }

    /* renamed from: w0 */
    public void m4216w0(View view, int i) {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, view.getHeight());
        translateAnimation.setDuration(500L);
        translateAnimation.setFillAfter(false);
        translateAnimation.setAnimationListener(new animationAnimation$AnimationListenerC0660d(view, i));
        view.startAnimation(translateAnimation);
        this.f3907t0 = true;
    }

    /* renamed from: x */
    public final ObjectAnimator m4215x(View view, float f, long j) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, View.ALPHA, f);
        ofFloat.setDuration(j);
        return ofFloat;
    }

    /* renamed from: x0 */
    public void m4214x0(View view) {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, view.getHeight(), 0.0f);
        translateAnimation.setDuration(500L);
        translateAnimation.setFillAfter(true);
        translateAnimation.setAnimationListener(new animationAnimation$AnimationListenerC0659c(view));
        view.startAnimation(translateAnimation);
        this.f3907t0 = true;
    }

    /* renamed from: y */
    public boolean m4213y() {
        ConstraintLayout constraintLayout = this.f3876d;
        return constraintLayout != null && constraintLayout.getVisibility() == 0;
    }

    /* renamed from: y0 */
    public final void m4212y0() {
        m4211z();
        Animator m4219v = m4219v();
        this.f3911v0 = m4219v;
        m4219v.addListener(new C0663g());
        Iterator<C0667k> it = this.f3917y0.iterator();
        while (it.hasNext()) {
            it.next().setVisibility(0);
        }
        this.f3911v0.start();
    }

    /* renamed from: z */
    public void m4211z() {
        Animator animator = this.f3909u0;
        if (animator != null) {
            animator.cancel();
            this.f3909u0 = null;
        }
        Animator animator2 = this.f3913w0;
        if (animator2 != null) {
            animator2.cancel();
            this.f3913w0 = null;
        }
        Animator animator3 = this.f3911v0;
        if (animator3 != null) {
            animator3.end();
            this.f3911v0.cancel();
            this.f3911v0 = null;
        }
    }

    /* renamed from: z0 */
    public final void m4210z0() {
        m4211z();
        Animator m4217w = m4217w();
        this.f3909u0 = m4217w;
        m4217w.addListener(new C0662f());
        this.f3909u0.start();
    }
}
