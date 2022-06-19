package org.mistergroup.shouldianswer.utils;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import kotlin.p081e.p083b.C1694h;
/* renamed from: org.mistergroup.shouldianswer.utils.b */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/b.class */
public final class C3082b {

    /* renamed from: a */
    private final Animation f9020a;

    /* renamed from: b */
    private int f9021b;

    /* renamed from: c */
    private final boolean f9022c;

    /* renamed from: d */
    private boolean f9023d;

    /* renamed from: e */
    private final View f9024e;

    public C3082b(View view, int i, int i2) {
        C1694h.m3117b(view, "view");
        this.f9024e = view;
        this.f9022c = i2 == 0;
        this.f9021b = i2;
        Animation loadAnimation = AnimationUtils.loadAnimation(this.f9024e.getContext(), i);
        C1694h.m3122a((Object) loadAnimation, "AnimationUtils.loadAnima…iew.context, animationId)");
        this.f9020a = loadAnimation;
        this.f9020a.setAnimationListener(new Animation.AnimationListener() { // from class: org.mistergroup.shouldianswer.utils.b.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                C1694h.m3117b(animation, "animation");
                if (C3082b.this.f9023d) {
                    if (!C3082b.this.f9022c) {
                        C3082b.this.f9021b--;
                    }
                    if (!C3082b.this.f9022c && C3082b.this.f9021b <= 0) {
                        return;
                    }
                    C3082b.this.f9024e.startAnimation(animation);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
                C1694h.m3117b(animation, "animation");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                C1694h.m3117b(animation, "animation");
            }
        });
    }

    /* renamed from: a */
    public final void m200a() {
        this.f9023d = true;
        this.f9024e.startAnimation(this.f9020a);
    }

    /* renamed from: b */
    public final void m197b() {
        this.f9023d = false;
    }
}
