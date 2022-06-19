package com.kedlin.cca.p007ui;

import android.content.Context;
import android.os.Handler;
import android.text.SpannableString;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.kedlin.cca.ui.MultiStateButton */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/MultiStateButton.class */
public class MultiStateButton extends FrameLayout {

    /* renamed from: d */
    public View f4046d;

    /* renamed from: a */
    public ArrayList<C0694b> f4043a = new ArrayList<>();

    /* renamed from: b */
    public int f4044b = -1;

    /* renamed from: c */
    public Handler f4045c = new Handler();

    /* renamed from: f */
    public int f4047f = -1;

    /* renamed from: g */
    public Runnable f4048g = new RunnableC0693a();

    /* renamed from: com.kedlin.cca.ui.MultiStateButton$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/MultiStateButton$a.class */
    public class RunnableC0693a implements Runnable {
        public RunnableC0693a() {
            MultiStateButton.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MultiStateButton.this.f4045c.removeCallbacks(MultiStateButton.this.f4048g);
            if (MultiStateButton.this.f4043a.size() == 0) {
                return;
            }
            C0694b c0694b = (C0694b) MultiStateButton.this.f4043a.get(MultiStateButton.this.f4044b);
            MultiStateButton.m4141f(MultiStateButton.this);
            if (MultiStateButton.this.f4044b >= MultiStateButton.this.f4043a.size()) {
                MultiStateButton.this.f4044b = 0;
            }
            C0694b c0694b2 = (C0694b) MultiStateButton.this.f4043a.get(MultiStateButton.this.f4044b);
            if (c0694b == c0694b2) {
                return;
            }
            c0694b2.f4050a.setTranslationY(MultiStateButton.this.getHeight());
            c0694b.f4050a.animate().setDuration(500L).translationY(-MultiStateButton.this.getHeight());
            float f = 0.0f;
            c0694b2.f4050a.animate().setDuration(500L).translationY(0.0f);
            MultiStateButton multiStateButton = ((double) MultiStateButton.this.f4046d.getAlpha()) == 1.0d ? MultiStateButton.this : MultiStateButton.this.f4046d;
            multiStateButton.setBackgroundResource(c0694b2.f4051b);
            ViewPropertyAnimator duration = MultiStateButton.this.f4046d.animate().setDuration(500L);
            if (multiStateButton == MultiStateButton.this.f4046d) {
                f = 1.0f;
            }
            duration.alpha(f);
            MultiStateButton.this.m4133n();
        }
    }

    /* renamed from: com.kedlin.cca.ui.MultiStateButton$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/MultiStateButton$b.class */
    public class C0694b {

        /* renamed from: a */
        public TextView f4050a;

        /* renamed from: b */
        public int f4051b;

        public C0694b(MultiStateButton multiStateButton, TextView textView, int i) {
            this.f4050a = textView;
            this.f4051b = i;
        }

        public /* synthetic */ C0694b(MultiStateButton multiStateButton, TextView textView, int i, RunnableC0693a runnableC0693a) {
            this(multiStateButton, textView, i);
        }
    }

    public MultiStateButton(Context context) {
        super(context);
        m4134m();
    }

    public MultiStateButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4134m();
    }

    public MultiStateButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4134m();
    }

    /* renamed from: f */
    public static /* synthetic */ int m4141f(MultiStateButton multiStateButton) {
        int i = multiStateButton.f4044b;
        multiStateButton.f4044b = i + 1;
        return i;
    }

    /* renamed from: i */
    public void m4138i(int i, int i2) {
        m4136k(getContext().getString(i), i2);
    }

    /* renamed from: j */
    public void m4137j(Spanned spanned, int i) {
        TextView textView = new TextView(getContext(), null);
        textView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(textView);
        if (this.f4047f != -1) {
            textView.setTextAppearance(getContext(), this.f4047f);
        }
        textView.setTranslationY(getHeight());
        textView.setTranslationX(0.0f);
        textView.setText(spanned);
        textView.setGravity(17);
        if (this.f4043a.size() == 1) {
            m4133n();
        }
        this.f4043a.add(new C0694b(this, textView, i, null));
    }

    /* renamed from: k */
    public void m4136k(String str, int i) {
        m4137j(new SpannableString(str), i);
    }

    /* renamed from: l */
    public void m4135l() {
        this.f4046d.animate().cancel();
        this.f4046d.setAlpha(0.0f);
        setBackground(null);
        Iterator<C0694b> it = this.f4043a.iterator();
        while (it.hasNext()) {
            removeView(it.next().f4050a);
        }
        this.f4043a.clear();
        this.f4045c.removeCallbacks(this.f4048g);
        this.f4044b = -1;
    }

    /* renamed from: m */
    public final void m4134m() {
        View view = new View(getContext());
        this.f4046d = view;
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f4046d.setAlpha(0.0f);
        addView(this.f4046d);
        setPadding(0, 0, 0, 0);
    }

    /* renamed from: n */
    public final void m4133n() {
        this.f4045c.removeCallbacks(this.f4048g);
        this.f4045c.postDelayed(this.f4048g, 3000L);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f4045c.removeCallbacksAndMessages(null);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f4044b != -1 || this.f4043a.size() <= 0) {
            return;
        }
        this.f4044b = 0;
        Iterator<C0694b> it = this.f4043a.iterator();
        while (it.hasNext()) {
            it.next().f4050a.setTranslationY(getHeight());
        }
        C0694b c0694b = this.f4043a.get(0);
        c0694b.f4050a.setTranslationY(0.0f);
        setBackgroundResource(c0694b.f4051b);
        this.f4046d.setAlpha(0.0f);
        m4133n();
    }

    public void setTextAppearance(int i) {
        this.f4047f = i;
    }
}
