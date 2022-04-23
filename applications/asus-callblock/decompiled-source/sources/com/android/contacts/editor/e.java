package com.android.contacts.editor;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/e.class */
public final class e {

    /* renamed from: b  reason: collision with root package name */
    private static e f1213b = new e();

    /* renamed from: a  reason: collision with root package name */
    a f1214a = new a();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/editor/e$a.class */
    static final class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private Animator f1223a;

        a() {
        }

        public final void a() {
            if (this.f1223a != null) {
                this.f1223a.end();
            }
        }

        public final void a(List<Animator> list, Animator.AnimatorListener animatorListener) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(list);
            if (animatorListener != null) {
                animatorSet.addListener(animatorListener);
            }
            animatorSet.addListener(this);
            this.f1223a = animatorSet;
            animatorSet.start();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            this.f1223a = null;
        }
    }

    private e() {
    }

    public static e a() {
        return f1213b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<View> a(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        ArrayList arrayList = new ArrayList();
        if (viewGroup != null) {
            a(arrayList, viewGroup, viewGroup.indexOfChild(view) + 1);
        }
        return arrayList;
    }

    private static void a(List<View> list, ViewGroup viewGroup, int i) {
        while (true) {
            if (i < viewGroup.getChildCount()) {
                list.add(viewGroup.getChildAt(i));
                i++;
            } else {
                ViewParent parent = viewGroup.getParent();
                if (parent instanceof LinearLayout) {
                    LinearLayout linearLayout = (LinearLayout) parent;
                    if (linearLayout.getOrientation() == 1) {
                        i = linearLayout.indexOfChild(viewGroup) + 1;
                        viewGroup = linearLayout;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(List<Animator> list, List<View> list2, float f, float f2, int i) {
        for (int i2 = 0; i2 < list2.size(); i2++) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(list2.get(i2), View.TRANSLATION_Y, f, f2);
            ofFloat.setStartDelay(i);
            ofFloat.setDuration(200L);
            list.add(ofFloat);
        }
    }
}
