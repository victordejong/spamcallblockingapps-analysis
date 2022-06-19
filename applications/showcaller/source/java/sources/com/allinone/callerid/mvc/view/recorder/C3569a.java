package com.allinone.callerid.mvc.view.recorder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.animation.DecelerateInterpolator;
/* renamed from: com.allinone.callerid.mvc.view.recorder.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/a.class */
public class C3569a {

    /* renamed from: a */
    private AbstractC3571b f11453a;

    /* renamed from: com.allinone.callerid.mvc.view.recorder.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/a$a.class */
    public class C3570a extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ boolean f11454a;

        /* renamed from: b */
        final /* synthetic */ View f11455b;

        C3570a(boolean z, View view) {
            C3569a.this = r4;
            this.f11454a = z;
            this.f11455b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            if (this.f11454a) {
                this.f11455b.setVisibility(0);
                if (C3569a.this.f11453a == null) {
                    return;
                }
                C3569a.this.f11453a.mo24965b();
                return;
            }
            this.f11455b.setVisibility(8);
            if (C3569a.this.f11453a == null) {
                return;
            }
            C3569a.this.f11453a.mo24966a();
        }
    }

    /* renamed from: com.allinone.callerid.mvc.view.recorder.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/a$b.class */
    public interface AbstractC3571b {
        /* renamed from: a */
        void mo24966a();

        /* renamed from: b */
        void mo24965b();
    }

    @SuppressLint({"NewApi"})
    /* renamed from: b */
    private void m24969b(boolean z, View view, View view2) {
        if (Build.VERSION.SDK_INT < 21) {
            if (z) {
                view2.setVisibility(0);
                AbstractC3571b abstractC3571b = this.f11453a;
                if (abstractC3571b == null) {
                    return;
                }
                abstractC3571b.mo24965b();
                return;
            }
            view2.setVisibility(8);
            AbstractC3571b abstractC3571b2 = this.f11453a;
            if (abstractC3571b2 == null) {
                return;
            }
            abstractC3571b2.mo24966a();
            return;
        }
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int width = iArr[0] + (view.getWidth() / 2);
        int height = iArr[1] + (view.getHeight() / 2);
        int[] iArr2 = new int[2];
        view2.getLocationInWindow(iArr2);
        int i = iArr2[0];
        int width2 = view2.getWidth() / 2;
        int i2 = iArr2[1];
        int height2 = view2.getHeight() / 2;
        int width3 = width < i + width2 ? view2.getWidth() - width : width - iArr2[0];
        int height3 = height < i2 + height2 ? view2.getHeight() - height : height - iArr2[1];
        float sqrt = (float) Math.sqrt((width3 * width3) + (height3 * height3));
        float f = 0.0f;
        float f2 = sqrt;
        if (z) {
            f2 = 0.0f;
            f = sqrt;
        }
        Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view2, width, height, f2, f);
        view2.setVisibility(0);
        createCircularReveal.setDuration(300L);
        createCircularReveal.setInterpolator(new DecelerateInterpolator());
        createCircularReveal.addListener(new C3570a(z, view2));
        createCircularReveal.start();
    }

    /* renamed from: c */
    public void m24968c(View view, View view2) {
        m24969b(false, view, view2);
    }

    /* renamed from: d */
    public void m24967d(AbstractC3571b abstractC3571b) {
        this.f11453a = abstractC3571b;
    }
}
