package com.applovin.impl.sdk.utils;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
/* renamed from: com.applovin.impl.sdk.utils.p */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/p.class */
public class C1536p {
    /* renamed from: a */
    public static void m4946a(final View view, long j, final Runnable runnable) {
        view.setVisibility(4);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(j);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.applovin.impl.sdk.utils.p.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                view.setVisibility(0);
            }
        });
        view.startAnimation(alphaAnimation);
    }

    /* renamed from: a */
    public static boolean m4949a(int i) {
        return i == 0;
    }

    /* renamed from: a */
    public static boolean m4948a(int i, int i2) {
        return m4949a(i) != m4949a(i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
        if ((r5 & 16) == 16) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b2, code lost:
        if ((r5 & 1) == 1) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] m4947a(int r5, int r6, int r7) {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.utils.C1536p.m4947a(int, int, int):int[]");
    }

    /* renamed from: b */
    public static String m4945b(int i) {
        return i == 0 ? "VISIBLE" : i == 4 ? "INVISIBLE" : i == 8 ? "GONE" : String.valueOf(i);
    }

    /* renamed from: b */
    public static void m4944b(final View view, long j, final Runnable runnable) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(j);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.applovin.impl.sdk.utils.p.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                view.setVisibility(4);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                view.setVisibility(0);
            }
        });
        view.startAnimation(alphaAnimation);
    }
}
