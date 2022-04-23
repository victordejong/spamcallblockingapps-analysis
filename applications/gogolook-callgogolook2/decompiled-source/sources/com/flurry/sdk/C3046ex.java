package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.flurry.sdk.AbstractC3055ez;
import com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw;
import java.io.File;
import java.util.Collections;
import java.util.Map;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.flurry.sdk.ex */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ex.class */
public class C3046ex extends AbstractC3055ez {

    /* renamed from: e */
    public static final String f4799e = C3046ex.class.getSimpleName();

    /* renamed from: f */
    public static final int f4800f = C3442ky.m32483b(15);

    /* renamed from: g */
    public static int f4801g = C3442ky.m32483b(20);

    /* renamed from: h */
    public boolean f4802h;

    /* renamed from: i */
    public Bitmap f4803i;

    /* renamed from: j */
    public FrameLayout f4804j;

    /* renamed from: k */
    public Button f4805k;

    /* renamed from: l */
    public Button f4806l;

    /* renamed from: m */
    public ImageButton f4807m;

    /* renamed from: n */
    public Context f4808n;

    /* renamed from: o */
    public RelativeLayout f4809o;

    /* renamed from: p */
    public RelativeLayout f4810p;

    /* renamed from: q */
    public AbstractC3518x f4811q;

    /* renamed from: r */
    public ProgressBar f4812r;

    /* renamed from: s */
    public GestureDetector f4813s;

    /* renamed from: t */
    public String f4814t;

    /* renamed from: u */
    public String f4815u;

    /* renamed from: v */
    public boolean f4816v = false;

    /* renamed from: w */
    public boolean f4817w = false;

    public C3046ex(Context context, AbstractC3518x xVar, AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a aVar, String str) {
        super(context, xVar, aVar);
        this.f4802h = false;
        C3076ff e = getAdController().m33525e();
        if (((AbstractC3066fc) this).f4874c == null) {
            ((AbstractC3066fc) this).f4874c = new C3088fj(context, AbstractC3055ez.EnumC3056a.FULLSCREEN, xVar.mo32279k().f4111b.m33504b(), xVar.mo32283d(), e.f4905m);
            ((AbstractC3066fc) this).f4874c.f4969a = this;
        }
        this.f4811q = xVar;
        this.f4808n = context;
        this.f4802h = true;
        this.f4814t = str;
        setAutoPlay(this.f4802h);
        if (!e.f4899g) {
            C3088fj fjVar = ((AbstractC3066fc) this).f4874c;
            fjVar.f4974f = true;
            fjVar.f4971c.setVisibility(0);
        } else {
            ((AbstractC3066fc) this).f4874c.f4971c.hide();
            ((AbstractC3066fc) this).f4874c.f4971c.setVisibility(8);
        }
        this.f4815u = m33208d("clickToCall");
        if (this.f4815u == null) {
            this.f4815u = m33208d("callToAction");
        }
        C3156ge geVar = new C3156ge();
        geVar.m32962e();
        this.f4803i = geVar.f5166e;
    }

    /* renamed from: G */
    public final void m33216G() {
        ((AbstractC3066fc) this).f4874c.f4971c.mo33108b();
        ((AbstractC3066fc) this).f4874c.f4971c.mo33106c();
        ((AbstractC3066fc) this).f4874c.f4971c.requestLayout();
        ((AbstractC3066fc) this).f4874c.f4971c.show();
    }

    /* renamed from: H */
    public final void m33215H() {
        this.f4817w = true;
        this.f4804j.setVisibility(0);
        this.f4809o.setVisibility(0);
        this.f4810p.setVisibility(0);
        this.f4805k.setVisibility(8);
        ((AbstractC3066fc) this).f4874c.f4972d.setVisibility(8);
        ((AbstractC3066fc) this).f4874c.f4971c.setVisibility(8);
        m33214I();
        requestLayout();
    }

    /* renamed from: I */
    public final void m33214I() {
        ProgressBar progressBar = this.f4812r;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: a */
    public final void mo33200a(AbstractC3055ez.EnumC3056a aVar) {
        if (((AbstractC3066fc) this).f4874c.f4970b.isPlaying()) {
            m33172A();
        }
        C3076ff e = getAdController().m33525e();
        int p = ((AbstractC3066fc) this).f4874c.m33126p();
        if (!e.f4899g) {
            if (p != Integer.MIN_VALUE) {
                e.f4893a = p;
            }
            ((C2772aa) this.f4811q).m33719C();
        } else {
            ((C2772aa) this.f4811q).m33719C();
        }
        this.f4811q.mo32279k().m33529b(false);
        AbstractC3066fc.m33155x();
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: a */
    public final void mo33122a(String str) {
        C3076ff e = getAdController().m33525e();
        if (!e.f4899g) {
            int i = e.f4893a;
            if (((AbstractC3066fc) this).f4874c != null && this.f4802h && this.f4810p.getVisibility() != 0 && !this.f4816v) {
                mo33166a(i);
                m33216G();
            }
        } else if (this.f4817w) {
            m33215H();
        }
        m33170C();
        if (getAdController().m33532b() != null && getAdController().m33535a(EnumC2874bi.EV_RENDERED.f4289an)) {
            m33165a(EnumC2874bi.EV_RENDERED, Collections.emptyMap());
            getAdController().m33530b(EnumC2874bi.EV_RENDERED.f4289an);
        }
        m33214I();
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: a */
    public final void mo33121a(String str, float f, float f2) {
        AbstractC3066fc.m33169D();
        super.mo33121a(str, f, f2);
        this.f4817w = false;
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: a */
    public final void mo33120a(String str, int i, int i2) {
        C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.ex.7
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                C3088fj fjVar = ((AbstractC3066fc) C3046ex.this).f4874c;
                if (fjVar != null) {
                    fjVar.m33130g();
                }
                C3046ex.this.m33215H();
            }
        });
        setOrientation(4);
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: b */
    public final void mo33119b() {
        super.mo33119b();
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: b */
    public final void mo33118b(String str) {
        String str2 = f4799e;
        C3356jq.m32615a(3, str2, "Video Completed: " + str);
        C3076ff e = getAdController().m33525e();
        if (!e.f4899g) {
            ((AbstractC3066fc) this).f4874c.f4970b.suspend();
            e.f4893a = Integer.MIN_VALUE;
            Map<String, String> b = mo33162b(-1);
            b.put("doNotRemoveAssets", "true");
            m33165a(EnumC2874bi.EV_VIDEO_COMPLETED, b);
            String str3 = f4799e;
            C3356jq.m32615a(3, str3, "BeaconTest: Video completed event fired, adObj: " + getAdObject());
        }
        e.f4899g = true;
        this.f4817w = true;
        C3088fj fjVar = ((AbstractC3066fc) this).f4874c;
        if (fjVar != null) {
            fjVar.m33130g();
        }
        m33204w();
        if (this.f4810p.getVisibility() != 0) {
            m33215H();
        }
    }

    /* renamed from: d */
    public final String m33208d(String str) {
        AbstractC3518x xVar = this.f4811q;
        if (xVar == null) {
            return null;
        }
        for (C2921cr crVar : xVar.mo32279k().f4111b.m33504b()) {
            if (crVar.f4515a.equals(str)) {
                return crVar.f4517c;
            }
        }
        return null;
    }

    /* renamed from: d */
    public final void m33210d() {
        if (getAdController().m33525e().f4905m) {
            ((AbstractC3066fc) this).f4874c.m33125s();
        } else {
            ((AbstractC3066fc) this).f4874c.m33124u();
        }
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: e */
    public final boolean mo33191e() {
        return true;
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: f */
    public final boolean mo33188f() {
        return this.f4802h;
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: g */
    public final boolean mo33186g() {
        return false;
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    public String getVideoUrl() {
        return this.f4814t;
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: h */
    public final void mo33184h() {
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: i */
    public final void mo33182i() {
        ((AbstractC3066fc) this).f4874c.f4971c.show();
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    @SuppressLint({"ClickableViewAccessibility"})
    public void initLayout() {
        C3076ff e = getAdController().m33525e();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(13);
        this.f4804j = new FrameLayout(this.f4808n);
        this.f4804j.addView(((AbstractC3066fc) this).f4874c.f4972d, new FrameLayout.LayoutParams(-1, -1, 17));
        FrameLayout frameLayout = this.f4804j;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, 700, 17);
        String d = m33208d("secHqImage");
        this.f4810p = new RelativeLayout(this.f4808n);
        final RelativeLayout relativeLayout = this.f4810p;
        if (d == null || !m33205v()) {
            C2806af afVar = C3484p.m32358a().f6006h;
            File d2 = C2806af.m33634d(getAdObject(), "previewImageFromVideo");
            if (d2 != null && d2.exists()) {
                final Bitmap decodeFile = BitmapFactory.decodeFile(d2.getAbsolutePath());
                C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc(this) { // from class: com.flurry.sdk.ex.3
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        if (Build.VERSION.SDK_INT < 16) {
                            relativeLayout.setBackgroundDrawable(new BitmapDrawable(decodeFile));
                        } else {
                            relativeLayout.setBackground(new BitmapDrawable(decodeFile));
                        }
                    }
                });
            }
        } else {
            C2900c.m33452a(relativeLayout, this.f4811q.mo32283d(), d);
        }
        this.f4810p.setBackgroundColor(0);
        this.f4810p.setVisibility(8);
        RelativeLayout relativeLayout2 = this.f4810p;
        this.f4806l = new Button(this.f4808n);
        this.f4806l.setPadding(5, 5, 5, 5);
        this.f4806l.setBackgroundColor(0);
        this.f4806l.setText(this.f4815u);
        this.f4806l.setTextColor(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Integer.MIN_VALUE);
        gradientDrawable.setCornerRadius(20.0f);
        gradientDrawable.setStroke(2, -1);
        gradientDrawable.setSize(C3442ky.m32483b(90), C3442ky.m32483b(30));
        if (Build.VERSION.SDK_INT < 16) {
            this.f4806l.setBackgroundDrawable(gradientDrawable);
        } else {
            this.f4806l.setBackground(gradientDrawable);
        }
        this.f4806l.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.ex.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C3046ex.this.mo33113y();
                if (C3046ex.this.f4811q != null && (C3046ex.this.f4811q instanceof C2772aa)) {
                    ((C2772aa) C3046ex.this.f4811q).f3890p.mo33184h();
                }
            }
        });
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.setMargins(0, 0, 0, 0);
        layoutParams4.addRule(13);
        this.f4806l.setVisibility(0);
        Button button = this.f4806l;
        int i = f4801g;
        button.setPadding(i, i, i, i);
        relativeLayout2.addView(this.f4806l, layoutParams4);
        frameLayout.addView(this.f4810p, layoutParams3);
        FrameLayout frameLayout2 = this.f4804j;
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-1, -2, 51);
        this.f4809o = new RelativeLayout(this.f4808n);
        this.f4809o.setVisibility(0);
        RelativeLayout relativeLayout3 = this.f4809o;
        int i2 = f4800f;
        relativeLayout3.setPadding(i2, i2, i2, i2);
        layoutParams5.setMargins(10, 10, 10, 10);
        RelativeLayout relativeLayout4 = this.f4809o;
        this.f4805k = new Button(this.f4808n);
        this.f4805k.setPadding(5, 5, 5, 5);
        this.f4805k.setText(this.f4815u);
        this.f4805k.setTextColor(-1);
        this.f4805k.setBackgroundColor(0);
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setColor(Integer.MIN_VALUE);
        gradientDrawable2.setCornerRadius(20.0f);
        gradientDrawable2.setStroke(2, -1);
        gradientDrawable2.setSize(C3442ky.m32483b(80), C3442ky.m32483b(40));
        if (Build.VERSION.SDK_INT < 16) {
            this.f4805k.setBackgroundDrawable(gradientDrawable2);
        } else {
            this.f4805k.setBackground(gradientDrawable2);
        }
        this.f4805k.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.ex.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C3046ex.this.mo33113y();
                ((C2772aa) C3046ex.this.f4811q).f3890p.mo33184h();
            }
        });
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.setMargins(5, 5, 5, 5);
        layoutParams6.addRule(5);
        this.f4805k.setVisibility(0);
        relativeLayout4.addView(this.f4805k, layoutParams6);
        RelativeLayout relativeLayout5 = this.f4809o;
        this.f4807m = new ImageButton(this.f4808n);
        this.f4807m.setPadding(0, 0, 0, 0);
        this.f4807m.setBackgroundColor(0);
        this.f4807m.setImageBitmap(this.f4803i);
        this.f4807m.setClickable(true);
        this.f4807m.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.ex.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C3046ex.this.m33207m();
            }
        });
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.setMargins(0, 0, 15, 0);
        layoutParams7.addRule(11);
        layoutParams7.addRule(1, this.f4805k.getId());
        this.f4807m.setVisibility(0);
        relativeLayout5.addView(this.f4807m, layoutParams7);
        frameLayout2.addView(this.f4809o, layoutParams5);
        this.f4812r = new ProgressBar(getContext());
        ProgressBar progressBar = this.f4812r;
        if (progressBar != null) {
            progressBar.setVisibility(0);
        }
        addView(this.f4804j, layoutParams2);
        addView(this.f4812r, layoutParams);
        this.f4813s = new GestureDetector(this.f4808n, new GestureDetector.SimpleOnGestureListener() { // from class: com.flurry.sdk.ex.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                C3096fl flVar;
                C3046ex exVar = C3046ex.this;
                C3088fj fjVar = ((AbstractC3066fc) exVar).f4874c;
                if (fjVar == null || (flVar = fjVar.f4970b) == null || !flVar.f4990h || exVar.f4810p.getVisibility() == 0) {
                    C3046ex exVar2 = C3046ex.this;
                    C3088fj fjVar2 = ((AbstractC3066fc) exVar2).f4874c;
                    if (fjVar2 == null || fjVar2.f4971c == null || exVar2.f4810p.getVisibility() == 0) {
                        return false;
                    }
                    if (((AbstractC3066fc) C3046ex.this).f4874c.f4971c.isShowing()) {
                        ((AbstractC3066fc) C3046ex.this).f4874c.f4971c.hide();
                        return false;
                    }
                    ((AbstractC3066fc) C3046ex.this).f4874c.f4971c.show();
                    return false;
                }
                ((AbstractC3066fc) C3046ex.this).f4874c.f4970b.f4990h = false;
                return false;
            }
        });
        this.f4804j.setOnTouchListener(new View.OnTouchListener() { // from class: com.flurry.sdk.ex.1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (C3046ex.this.f4813s == null) {
                    return true;
                }
                C3046ex.this.f4813s.onTouchEvent(motionEvent);
                return true;
            }
        });
        if (e.f4899g) {
            ((AbstractC3066fc) this).f4874c.f4971c.hide();
            m33215H();
        }
        setBackgroundColor(-16777216);
        requestLayout();
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: j */
    public final boolean mo33180j() {
        return false;
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: k */
    public final void mo33178k() {
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    /* renamed from: l */
    public final boolean mo33177l() {
        return false;
    }

    /* renamed from: m */
    public final void m33207m() {
        Log.e("Testing", "Resize clicked switch to stream mode.");
        AbstractC3518x xVar = this.f4811q;
        if (xVar != null && (xVar instanceof C2772aa) && ((C2772aa) xVar).f3890p.mo33191e()) {
            this.f4816v = true;
            AbstractC3055ez.EnumC3056a aVar = AbstractC3055ez.EnumC3056a.INSTREAM;
            ((AbstractC3066fc) this).f4874c.m33126p();
            mo33200a(aVar);
        }
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: n */
    public final void mo33115n() {
        C3076ff e = getAdController().m33525e();
        e.f4905m = true;
        getAdController().m33536a(e);
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: o */
    public final void mo33114o() {
        C3076ff e = getAdController().m33525e();
        e.f4905m = false;
        getAdController().m33536a(e);
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void onActivityPause() {
        super.onActivityPause();
    }

    @Override // com.flurry.sdk.AbstractC3066fc, com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void onActivityResume() {
        super.onActivityResume();
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public boolean onBackKey() {
        AbstractC3518x xVar = this.f4811q;
        if (xVar == null || !(xVar instanceof C2772aa)) {
            return false;
        }
        m33207m();
        return true;
    }

    @Override // com.flurry.sdk.AbstractC3066fc, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C3076ff e = getAdController().m33525e();
        boolean z = false;
        if (configuration.orientation == 2) {
            ((AbstractC3066fc) this).f4874c.f4972d.setPadding(0, 5, 0, 5);
            this.f4810p.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
            if (!e.f4899g) {
                ((AbstractC3066fc) this).f4874c.f4971c.mo33107b(2);
            }
            this.f4804j.requestLayout();
        } else {
            ((AbstractC3066fc) this).f4874c.f4972d.setPadding(0, 0, 0, 0);
            this.f4810p.setLayoutParams(new FrameLayout.LayoutParams(-1, 700, 17));
            this.f4804j.setPadding(0, 5, 0, 5);
            if (!e.f4899g) {
                ((AbstractC3066fc) this).f4874c.f4971c.mo33107b(1);
            }
            this.f4804j.requestLayout();
        }
        if (!e.f4899g) {
            C3096fl flVar = ((AbstractC3066fc) this).f4874c.f4970b;
            if (flVar != null) {
                z = flVar.m33075e();
            }
            if (z && this.f4810p.getVisibility() != 0) {
                ((AbstractC3066fc) this).f4874c.f4971c.mo33105d();
                ((AbstractC3066fc) this).f4874c.f4971c.mo33111a();
                ((AbstractC3066fc) this).f4874c.f4971c.requestLayout();
                ((AbstractC3066fc) this).f4874c.f4971c.show();
            } else if (((AbstractC3066fc) this).f4874c.f4970b.isPlaying()) {
                m33216G();
            }
        }
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.flurry.sdk.AbstractC3055ez
    public void setVideoUrl(String str) {
        this.f4814t = str;
    }
}
