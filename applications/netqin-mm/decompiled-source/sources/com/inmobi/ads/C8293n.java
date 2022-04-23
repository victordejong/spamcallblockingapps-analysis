package com.inmobi.ads;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.View;
import com.inmobi.ads.C8144ba;
import com.inmobi.ads.NativeContainerLayout;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
/* renamed from: com.inmobi.ads.n */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/n.class */
public class C8293n {

    /* renamed from: c */
    public static final String f32280c = "n";

    /* renamed from: a */
    public List<C8296a> f32281a = new ArrayList();

    /* renamed from: b */
    public boolean f32282b = false;

    /* renamed from: com.inmobi.ads.n$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/n$a.class */
    public final class C8296a {

        /* renamed from: a */
        public Animator f32289a;

        /* renamed from: b */
        public long f32290b;

        /* renamed from: c */
        public boolean f32291c;

        public C8296a(Animator animator) {
            this.f32289a = animator;
        }
    }

    /* renamed from: a */
    public static Animator m5986a(View view, String str, float f, float f2) {
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        return ObjectAnimator.ofFloat(view, str, f2 / f);
    }

    /* renamed from: a */
    private C8296a m5988a(Animator animator, C8103ak akVar) {
        animator.setDuration(0L);
        animator.setStartDelay(0L);
        C8144ba g = akVar.f31678c.m6441g();
        if (g != null) {
            C8144ba.C8145a aVar = g.f31822a;
            C8144ba.C8145a aVar2 = g.f31823b;
            if (aVar2 != null) {
                animator.setDuration(aVar2.m6342a() * 1000);
            }
            if (aVar != null) {
                animator.setStartDelay(aVar.m6342a() * 1000);
            }
        }
        return new C8296a(animator);
    }

    /* renamed from: a */
    public final List<C8296a> m5987a(final View view, C8103ak akVar) {
        float c;
        float c2;
        float c3;
        float c4;
        LinkedList linkedList = new LinkedList();
        try {
            if (C8154bf.m6283c(akVar.f31678c.f31703c.x) != C8154bf.m6283c(akVar.f31678c.f31704d.x)) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat((int) c, (int) c2);
                final NativeContainerLayout.C8027a aVar = (NativeContainerLayout.C8027a) view.getLayoutParams();
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.inmobi.ads.n.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        aVar.f31379a = ((Float) valueAnimator.getAnimatedValue()).intValue();
                        view.setLayoutParams(aVar);
                        view.requestLayout();
                    }
                });
                linkedList.add(m5988a(ofFloat, akVar));
            }
            if (C8154bf.m6283c(akVar.f31678c.f31703c.y) != C8154bf.m6283c(akVar.f31678c.f31704d.y)) {
                ValueAnimator ofFloat2 = ValueAnimator.ofFloat((int) c3, (int) c4);
                final NativeContainerLayout.C8027a aVar2 = (NativeContainerLayout.C8027a) view.getLayoutParams();
                ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.inmobi.ads.n.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        aVar2.f31380b = ((Float) valueAnimator.getAnimatedValue()).intValue();
                        view.setLayoutParams(aVar2);
                        view.requestLayout();
                    }
                });
                linkedList.add(m5988a(ofFloat2, akVar));
            }
            float c5 = C8154bf.m6283c(akVar.f31678c.f31701a.x);
            float c6 = C8154bf.m6283c(akVar.f31678c.f31702b.x);
            if (c5 != c6) {
                linkedList.add(m5988a(m5986a(view, "scaleX", c5, c6), akVar));
            }
            float c7 = C8154bf.m6283c(akVar.f31678c.f31701a.y);
            float c8 = C8154bf.m6283c(akVar.f31678c.f31702b.y);
            if (c7 != c8) {
                linkedList.add(m5988a(m5986a(view, "scaleY", c7, c8), akVar));
            }
        } catch (Exception e) {
        }
        if (linkedList.isEmpty()) {
            return null;
        }
        return linkedList;
    }

    /* renamed from: a */
    public final void m5985a(List<C8296a> list) {
        if (list != null) {
            for (C8296a aVar : list) {
                if (!aVar.f32291c) {
                    ValueAnimator valueAnimator = (ValueAnimator) aVar.f32289a;
                    valueAnimator.setCurrentPlayTime(aVar.f32290b);
                    valueAnimator.start();
                }
                if (!this.f32281a.contains(aVar)) {
                    this.f32281a.add(aVar);
                }
            }
        }
    }
}
