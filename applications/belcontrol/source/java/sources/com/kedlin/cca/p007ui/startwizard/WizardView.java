package com.kedlin.cca.p007ui.startwizard;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import carbon.widget.Button;
import com.kedlin.cca.p007ui.Slide;
import java.util.ArrayList;
import java.util.Stack;
/* renamed from: com.kedlin.cca.ui.startwizard.WizardView */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/WizardView.class */
public class WizardView extends LinearLayout {

    /* renamed from: c */
    public Slide f4103c;

    /* renamed from: a */
    public final ArrayList<Class<? extends Slide>> f4101a = new ArrayList<>();

    /* renamed from: b */
    public Stack<Class<? extends Slide>> f4102b = new Stack<>();

    /* renamed from: d */
    public Runnable f4104d = null;

    /* renamed from: f */
    public Runnable f4105f = null;

    /* renamed from: g */
    public Runnable f4106g = null;

    /* renamed from: com.kedlin.cca.ui.startwizard.WizardView$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/WizardView$a.class */
    public class RunnableC0713a implements Runnable {
        public RunnableC0713a() {
            WizardView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            WizardView wizardView = WizardView.this;
            wizardView.m4082i(wizardView.f4101a.get(0));
            WizardView.this.m4087d();
        }
    }

    /* renamed from: com.kedlin.cca.ui.startwizard.WizardView$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/WizardView$b.class */
    public class View$OnClickListenerC0714b implements View.OnClickListener {
        public View$OnClickListenerC0714b() {
            WizardView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.isEnabled()) {
                WizardView.this.m4084g();
            }
        }
    }

    /* renamed from: com.kedlin.cca.ui.startwizard.WizardView$c */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/WizardView$c.class */
    public class C0715c implements Animator.AnimatorListener {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup f4109a;

        /* renamed from: b */
        public final /* synthetic */ Slide f4110b;

        public C0715c(ViewGroup viewGroup, Slide slide) {
            WizardView.this = r4;
            this.f4109a = viewGroup;
            this.f4110b = slide;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        @TargetApi(12)
        public void onAnimationEnd(Animator animator) {
            this.f4109a.removeView(this.f4110b);
            WizardView.this.f4103c.animate().alpha(1.0f).setDuration(200L);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public WizardView(Context context) {
        super(context);
        m4085f();
    }

    public WizardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4085f();
    }

    @TargetApi(11)
    public WizardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4085f();
    }

    @TargetApi(12)
    /* renamed from: b */
    public final void m4089b(Slide slide, boolean z, ViewGroup viewGroup) {
        slide.animate().translationX(z ? -slide.getWidth() : slide.getWidth()).setDuration(200L).setListener(new C0715c(viewGroup, slide));
    }

    /* renamed from: c */
    public void m4088c() {
        if (!this.f4102b.empty()) {
            Slide slide = this.f4103c;
            if ((slide instanceof FirstStartWizardCreateAccountSlide) || (slide instanceof FirstStartWizardThirdSlide)) {
                return;
            }
            Class<? extends Slide> pop = this.f4102b.pop();
            Slide slide2 = this.f4103c;
            if (slide2 != null) {
                slide2.mo4099a();
            }
            m4081j(pop, false);
        }
    }

    /* renamed from: d */
    public void m4087d() {
        View findViewById = findViewById(2131362487);
        if (findViewById == null) {
            return;
        }
        findViewById.setOnClickListener(new View$OnClickListenerC0714b());
        findViewById.setElevation(10.0f);
        findViewById.setTranslationZ(5.0f);
    }

    /* renamed from: e */
    public void m4086e() {
        Slide slide = this.f4103c;
        if (slide != null) {
            slide.mo4099a();
        }
        Runnable runnable = this.f4104d;
        if (runnable != null) {
            runnable.run();
        }
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        }
    }

    /* renamed from: f */
    public final void m4085f() {
        LayoutInflater layoutInflater = (LayoutInflater) getContext().getSystemService("layout_inflater");
        if (layoutInflater == null) {
            return;
        }
        layoutInflater.inflate(2131558607, (ViewGroup) this, true);
        this.f4101a.add(FirstStartWizardFirstSlide.class);
        if (!ta1.GROUP_CRITICAL.m531d()) {
            this.f4101a.add(FirstStartWizardSecondSlide.class);
        }
        if (Build.VERSION.SDK_INT >= 23 && !Settings.canDrawOverlays(getContext())) {
            this.f4101a.add(FirstStartWizardThirdSlide.class);
        }
        if (r71.m709m().length == 0) {
            this.f4101a.add(FirstStartWizardCreateAccountSlide.class);
            this.f4101a.add(FirstStartWizardSignInSlide.class);
        }
        new Handler(Looper.getMainLooper()).post(new RunnableC0713a());
    }

    /* renamed from: g */
    public void m4084g() {
        m4083h(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    public void m4083h(boolean z) {
        if (z) {
            Slide slide = this.f4103c;
            if ((slide instanceof FirstStartWizardSecondSlide) || ((slide instanceof FirstStartWizardFirstSlide) && !this.f4101a.contains(FirstStartWizardSecondSlide.class))) {
                Runnable runnable = this.f4105f;
                if (runnable == null) {
                    return;
                }
                runnable.run();
                return;
            }
        }
        if (z && (this.f4103c instanceof FirstStartWizardThirdSlide)) {
            Runnable runnable2 = this.f4106g;
            if (runnable2 == null) {
                return;
            }
            runnable2.run();
            return;
        }
        Slide slide2 = this.f4103c;
        Class<? extends Slide> cls = null;
        if (slide2 != null) {
            int indexOf = this.f4101a.indexOf(slide2.getClass()) + 1;
            cls = null;
            if (indexOf < this.f4101a.size()) {
                cls = this.f4101a.get(indexOf);
            }
            if (cls == null && r71.m709m().length == 0) {
                return;
            }
            this.f4102b.push(this.f4103c.getClass());
        }
        if (cls == null) {
            m4086e();
        } else if (this.f4101a.indexOf(cls) != -1) {
            m4081j(cls, true);
        } else {
            j91.m1505k(this, "Slide " + cls.getSimpleName() + " is not in the sequence!");
        }
    }

    /* renamed from: i */
    public void m4082i(Class<? extends Slide> cls) {
        m4081j(cls, true);
    }

    /* renamed from: j */
    public void m4081j(Class<? extends Slide> cls, boolean z) {
        Slide slide = this.f4103c;
        if (slide != null) {
            slide.mo4099a();
        }
        Slide m4111d = Slide.m4111d(getContext(), cls);
        if (m4111d == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            m4111d.m4112c(16974393);
        } else {
            m4111d.m4113b();
        }
        cls.equals(FirstStartWizardCreateAccountSlide.class);
        if (this.f4103c != null) {
            m4111d.setAlpha(0.0f);
        }
        Slide slide2 = this.f4103c;
        this.f4103c = m4111d;
        ViewGroup viewGroup = (ViewGroup) findViewById(2131362486);
        if (viewGroup != null) {
            viewGroup.addView(m4111d);
        }
        Button button = (Button) findViewById(2131362487);
        Slide slide3 = this.f4103c;
        button.setVisibility(((slide3 instanceof FirstStartWizardCreateAccountSlide) || (slide3 instanceof FirstStartWizardSignInSlide)) ? 8 : 0);
        Slide slide4 = this.f4103c;
        button.setText(slide4 instanceof FirstStartWizardFirstSlide ? 2131821437 : slide4 instanceof FirstStartWizardSecondSlide ? 2131821439 : slide4 instanceof FirstStartWizardThirdSlide ? 2131821255 : 2131821870);
        if (slide2 == null) {
            return;
        }
        m4089b(slide2, z, viewGroup);
    }

    public void setOnAfterDrawPermissionSlideHandler(Runnable runnable) {
        this.f4106g = runnable;
    }

    public void setOnAfterLastSlideHandler(Runnable runnable) {
        this.f4104d = runnable;
    }

    public void setOnAfterPermissionSlideHandler(Runnable runnable) {
        this.f4105f = runnable;
    }
}
