package com.google.firebase.inappmessaging.display.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Application;
import android.graphics.Point;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/display/internal/FiamAnimator.class */
public class FiamAnimator {

    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/display/internal/FiamAnimator$Position.class */
    public enum Position {
        LEFT,
        RIGHT,
        TOP,
        BOTTOM;

        public static Point getPoint(Position position, View view) {
            view.measure(-2, -2);
            int i = C7843b.f30966a[position.ordinal()];
            if (i == 1) {
                return new Point(view.getMeasuredWidth() * (-1), 0);
            }
            if (i == 2) {
                return new Point(view.getMeasuredWidth() * 1, 0);
            }
            if (i != 3 && i == 4) {
                return new Point(0, view.getMeasuredHeight() * 1);
            }
            return new Point(0, view.getMeasuredHeight() * (-1));
        }
    }

    /* renamed from: com.google.firebase.inappmessaging.display.internal.FiamAnimator$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/display/internal/FiamAnimator$a.class */
    public class C7842a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ View f30964a;

        /* renamed from: b */
        public final /* synthetic */ Application f30965b;

        public C7842a(FiamAnimator fiamAnimator, View view, Application application) {
            this.f30964a = view;
            this.f30965b = application;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            this.f30964a.animate().translationX(0.0f).translationY(0.0f).alpha(1.0f).setDuration(this.f30965b.getResources().getInteger(17694722)).setListener(null);
        }
    }

    /* renamed from: com.google.firebase.inappmessaging.display.internal.FiamAnimator$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/display/internal/FiamAnimator$b.class */
    public static /* synthetic */ class C7843b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f30966a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[Position.values().length];
            f30966a = iArr;
            try {
                iArr[Position.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30966a[Position.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30966a[Position.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f30966a[Position.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: a */
    public void m7311a(Application application, View view, Position position) {
        view.setAlpha(0.0f);
        Point point = Position.getPoint(position, view);
        view.animate().translationX(point.x).translationY(point.y).setDuration(1L).setListener(new C7842a(this, view, application));
    }
}
