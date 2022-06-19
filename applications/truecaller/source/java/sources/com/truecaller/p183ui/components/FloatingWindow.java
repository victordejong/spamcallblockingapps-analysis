package com.truecaller.p183ui.components;

import android.animation.Animator;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.truecaller.C2752R;
import com.truecaller.p183ui.components.FloatingWindow;
import java.util.Objects;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1114o5.C19089p1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p682e.p699c2.C13204o;
import p193e.p194a.p682e.p699c2.C13213v;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
/* renamed from: com.truecaller.ui.components.FloatingWindow */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/FloatingWindow.class */
public abstract class FloatingWindow<ViewType extends View> implements View.OnClickListener {

    /* renamed from: a */
    public final Context f15762a;

    /* renamed from: b */
    public final AbstractC4682c f15763b;

    /* renamed from: c */
    public final Class<ViewType> f15764c;

    /* renamed from: d */
    public WindowManager f15765d;

    /* renamed from: e */
    public WindowManager.LayoutParams f15766e;

    /* renamed from: f */
    public FrameLayout f15767f;

    /* renamed from: g */
    public Handler f15768g;

    /* renamed from: h */
    public int f15769h;

    /* renamed from: i */
    public int f15770i;

    /* renamed from: j */
    public int f15771j;

    /* renamed from: k */
    public boolean f15772k;

    /* renamed from: l */
    public boolean f15773l;

    /* renamed from: m */
    public boolean f15774m;

    /* renamed from: n */
    public int f15775n;

    /* renamed from: o */
    public ViewType f15776o;

    /* renamed from: com.truecaller.ui.components.FloatingWindow$DismissCause */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/FloatingWindow$DismissCause.class */
    public enum DismissCause {
        UNDEFINED,
        MANUAL,
        AUTOMATIC
    }

    /* renamed from: com.truecaller.ui.components.FloatingWindow$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/FloatingWindow$a.class */
    public class C4680a extends C19089p1 {

        /* renamed from: a */
        public final /* synthetic */ DismissCause f15777a;

        public C4680a(DismissCause dismissCause) {
            FloatingWindow.this = r4;
            this.f15777a = dismissCause;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            FloatingWindow.this.mo21992c(this.f15777a);
        }
    }

    /* renamed from: com.truecaller.ui.components.FloatingWindow$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/FloatingWindow$b.class */
    public class C4681b extends C19089p1 {

        /* renamed from: a */
        public final /* synthetic */ int f15779a;

        public C4681b(int i) {
            FloatingWindow.this = r4;
            this.f15779a = i;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f15779a != 0) {
                FloatingWindow.this.mo21992c(DismissCause.UNDEFINED);
            }
        }
    }

    /* renamed from: com.truecaller.ui.components.FloatingWindow$c */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/FloatingWindow$c.class */
    public interface AbstractC4682c {
    }

    /* renamed from: com.truecaller.ui.components.FloatingWindow$d */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/components/FloatingWindow$d.class */
    public class View$OnTouchListenerC4683d implements View.OnTouchListener {

        /* renamed from: a */
        public final float f15781a;

        /* renamed from: b */
        public final float f15782b;

        /* renamed from: c */
        public float f15783c;

        /* renamed from: d */
        public float f15784d;

        /* renamed from: e */
        public int f15785e;

        /* renamed from: f */
        public float f15786f;

        /* renamed from: g */
        public float f15787g;

        /* renamed from: h */
        public VelocityTracker f15788h = VelocityTracker.obtain();

        public View$OnTouchListenerC4683d() {
            FloatingWindow.this = r5;
            float f = r5.f15762a.getResources().getDisplayMetrics().density;
            this.f15782b = 25.0f * f;
            this.f15781a = f * 400.0f;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            this.f15788h.addMovement(motionEvent);
            int action = motionEvent.getAction();
            if (action == 0) {
                float rawX = motionEvent.getRawX();
                this.f15786f = rawX;
                this.f15783c = rawX;
                float rawY = motionEvent.getRawY();
                this.f15787g = rawY;
                this.f15784d = rawY;
                FloatingWindow floatingWindow = FloatingWindow.this;
                int i = floatingWindow.f15766e.y;
                this.f15785e = i;
                if (i <= floatingWindow.f15770i - floatingWindow.f15776o.getHeight()) {
                    return true;
                }
                FloatingWindow floatingWindow2 = FloatingWindow.this;
                this.f15785e = floatingWindow2.f15770i - floatingWindow2.f15776o.getHeight();
                return true;
            } else if (action == 1) {
                if (FloatingWindow.this.f15773l) {
                    this.f15788h.computeCurrentVelocity(1000);
                    float xVelocity = this.f15788h.getXVelocity();
                    if (Math.abs(xVelocity) <= this.f15781a || Math.abs(this.f15783c - motionEvent.getRawX()) <= this.f15782b) {
                        float abs = Math.abs(FloatingWindow.this.f15776o.getTranslationX());
                        FloatingWindow floatingWindow3 = FloatingWindow.this;
                        if (abs < floatingWindow3.f15769h / 2) {
                            floatingWindow3.m34522a(0);
                            FloatingWindow.this.f15773l = false;
                        }
                    }
                    float abs2 = Math.abs(FloatingWindow.this.f15776o.getTranslationX());
                    FloatingWindow floatingWindow4 = FloatingWindow.this;
                    if (abs2 >= floatingWindow4.f15769h / 2) {
                        xVelocity = floatingWindow4.f15776o.getTranslationX();
                    }
                    FloatingWindow floatingWindow5 = FloatingWindow.this;
                    floatingWindow5.m34522a((int) Math.copySign(floatingWindow5.f15769h, xVelocity));
                    FloatingWindow.this.f15773l = false;
                }
                FloatingWindow.this.f15772k = false;
                return true;
            } else if (action != 2) {
                return false;
            } else {
                this.f15786f = motionEvent.getRawX();
                float rawY2 = motionEvent.getRawY();
                this.f15787g = rawY2;
                float f = this.f15786f - this.f15783c;
                float f2 = rawY2 - this.f15784d;
                FloatingWindow floatingWindow6 = FloatingWindow.this;
                if (!floatingWindow6.f15773l && !floatingWindow6.f15772k) {
                    float abs3 = Math.abs(f2);
                    FloatingWindow floatingWindow7 = FloatingWindow.this;
                    if (abs3 > floatingWindow7.f15775n) {
                        floatingWindow7.f15772k = true;
                    } else {
                        float abs4 = Math.abs(f);
                        FloatingWindow floatingWindow8 = FloatingWindow.this;
                        if (abs4 > floatingWindow8.f15775n) {
                            floatingWindow8.f15773l = true;
                        }
                    }
                }
                FloatingWindow floatingWindow9 = FloatingWindow.this;
                if (floatingWindow9.f15772k) {
                    int i2 = (int) (this.f15785e + f2);
                    if (i2 < 0) {
                        floatingWindow9.f15766e.y = 0;
                    } else if (i2 > floatingWindow9.f15770i - floatingWindow9.f15776o.getHeight()) {
                        FloatingWindow floatingWindow10 = FloatingWindow.this;
                        floatingWindow10.f15766e.y = floatingWindow10.f15770i - floatingWindow10.f15776o.getHeight();
                    } else {
                        FloatingWindow.this.f15766e.y = i2;
                    }
                    FloatingWindow floatingWindow11 = FloatingWindow.this;
                    floatingWindow11.f15765d.updateViewLayout(floatingWindow11.f15767f, floatingWindow11.f15766e);
                }
                if (!FloatingWindow.this.f15773l) {
                    return true;
                }
                FloatingWindow.this.f15776o.setAlpha(Math.max(0.0f, Math.min(1.0f, 1.0f - (Math.abs(f) / FloatingWindow.this.f15769h))));
                FloatingWindow.this.f15776o.setTranslationX(f);
                return true;
            }
        }
    }

    public FloatingWindow(Context context, AbstractC4682c abstractC4682c, Class<ViewType> cls) {
        ContextThemeWrapper m16114D = C17422k.m16114D(context);
        this.f15762a = m16114D;
        this.f15763b = abstractC4682c == null ? C13204o.f38352a : abstractC4682c;
        this.f15764c = cls;
        this.f15768g = new Handler(new Handler.Callback() { // from class: e.a.e.c2.n
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                FloatingWindow floatingWindow = FloatingWindow.this;
                Objects.requireNonNull(floatingWindow);
                int i = message.what;
                boolean z = true;
                if (i == 1) {
                    floatingWindow.m34521b(FloatingWindow.DismissCause.MANUAL);
                } else if (i != 2) {
                    z = false;
                } else {
                    floatingWindow.m34521b(FloatingWindow.DismissCause.AUTOMATIC);
                }
                return z;
            }
        });
        this.f15771j = m16114D.getResources().getInteger(17694720);
        this.f15775n = ViewConfiguration.get(m16114D).getScaledTouchSlop();
        int i = Build.VERSION.SDK_INT >= 26 ? 2038 : 2010;
        LayoutInflater from = LayoutInflater.from(m16114D);
        this.f15765d = (WindowManager) m16114D.getSystemService("window");
        DisplayMetrics displayMetrics = m16114D.getResources().getDisplayMetrics();
        this.f15769h = displayMetrics.widthPixels;
        this.f15770i = displayMetrics.heightPixels - C19045j0.m14204l(m16114D.getResources());
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -2, i, 8, -3);
        this.f15766e = layoutParams;
        layoutParams.gravity = 49;
        layoutParams.dimAmount = 0.6f;
        layoutParams.y = C15571h.m18642i("clipboardSearchLastYPosition");
        this.f15776o = cls.cast(from.inflate(C2752R.layout.view_searchclipboard, (ViewGroup) null));
        FrameLayout frameLayout = new FrameLayout(m16114D);
        this.f15767f = frameLayout;
        frameLayout.setVisibility(8);
        this.f15767f.addView(this.f15776o);
        this.f15765d.addView(this.f15767f, this.f15766e);
        this.f15767f.setOnTouchListener(new View$OnTouchListenerC4683d());
        ViewType viewtype = this.f15776o;
        C13213v c13213v = (C13213v) this;
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) viewtype.getContext().getApplicationContext()).mo10154s();
        c13213v.f38376z = mo10154s.mo12217s();
        c13213v.f38363A = mo10154s.mo12414d6();
        c13213v.f38364B = mo10154s.mo12525V();
        c13213v.f38365C = mo10154s.mo12625N7();
        c13213v.f38366p = (AvatarView) viewtype.findViewById(C2752R.C2754id.caller_id_photo);
        c13213v.f38367q = (TextView) viewtype.findViewById(C2752R.C2754id.caller_id_alt_name);
        c13213v.f38368r = (TextView) viewtype.findViewById(C2752R.C2754id.caller_id_address);
        c13213v.f38370t = viewtype.findViewById(C2752R.C2754id.search_button_call);
        c13213v.f38371u = viewtype.findViewById(C2752R.C2754id.search_button_sms);
        c13213v.f38372v = viewtype.findViewById(C2752R.C2754id.search_button_info);
        ImageView imageView = (ImageView) viewtype.findViewById(C2752R.C2754id.search_button_dismiss);
        c13213v.f38373w = imageView;
        C19291g.m13516r1(imageView, C19291g.m13612L(c13213v.f15762a, 2130970409));
        ImageView imageView2 = (ImageView) viewtype.findViewById(C2752R.C2754id.auto_search_logo);
        if (c13213v.f38364B.mo28596b()) {
            imageView2.setImageResource(C2752R.C2753drawable.ic_searchbar_logo_uk);
        }
        c13213v.f38370t.setOnClickListener(c13213v);
        c13213v.f38371u.setOnClickListener(c13213v);
        c13213v.f38372v.setOnClickListener(c13213v);
        c13213v.f38373w.setOnClickListener(c13213v);
    }

    /* renamed from: a */
    public final void m34522a(int i) {
        AccelerateDecelerateInterpolator accelerateDecelerateInterpolator;
        float f;
        if (i == 0) {
            f = 1.0f;
            accelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();
        } else {
            accelerateDecelerateInterpolator = new AccelerateInterpolator();
            int i2 = this.f15769h;
            if (i == (-i2) || i == i2) {
                this.f15774m = false;
            }
            f = 0.0f;
        }
        this.f15776o.animate().translationX(i).alpha(f).setDuration(this.f15771j).setInterpolator(accelerateDecelerateInterpolator).setListener(new C4681b(i));
    }

    /* renamed from: b */
    public final void m34521b(DismissCause dismissCause) {
        this.f15774m = false;
        Handler handler = this.f15768g;
        if (handler != null) {
            handler.removeMessages(2);
            this.f15776o.animate().alpha(0.0f).setDuration(this.f15771j).setInterpolator(new LinearInterpolator()).setListener(new C4680a(dismissCause));
        }
    }

    /* renamed from: c */
    public abstract void mo21992c(DismissCause dismissCause);

    /* renamed from: d */
    public final void m34520d() {
        this.f15774m = true;
        this.f15767f.setVisibility(0);
        this.f15776o.setAlpha(0.0f);
        this.f15776o.setTranslationX(this.f15769h);
        m34522a(0);
        C13213v c13213v = (C13213v) this;
        Handler handler = c13213v.f15768g;
        if (handler != null) {
            handler.removeMessages(2);
            c13213v.f15768g.sendEmptyMessageDelayed(2, 6000L);
        }
    }
}
