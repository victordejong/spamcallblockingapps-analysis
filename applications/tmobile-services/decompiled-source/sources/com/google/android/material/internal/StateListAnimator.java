package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/StateListAnimator.class */
public final class StateListAnimator {

    /* renamed from: a */
    private final ArrayList<Tuple> f10915a = new ArrayList<>();
    @Nullable

    /* renamed from: b */
    private Tuple f10916b = null;
    @Nullable

    /* renamed from: c */
    ValueAnimator f10917c = null;

    /* renamed from: d */
    private final Animator.AnimatorListener f10918d = new AnimatorListenerAdapter() { // from class: com.google.android.material.internal.StateListAnimator.1
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            StateListAnimator stateListAnimator = StateListAnimator.this;
            if (stateListAnimator.f10917c == animator) {
                stateListAnimator.f10917c = null;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/StateListAnimator$Tuple.class */
    public static class Tuple {

        /* renamed from: a */
        final int[] f10920a;

        /* renamed from: b */
        final ValueAnimator f10921b;

        Tuple(int[] iArr, ValueAnimator valueAnimator) {
            this.f10920a = iArr;
            this.f10921b = valueAnimator;
        }
    }

    /* renamed from: b */
    private void m9475b() {
        ValueAnimator valueAnimator = this.f10917c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f10917c = null;
        }
    }

    /* renamed from: e */
    private void m9472e(@NonNull Tuple tuple) {
        ValueAnimator valueAnimator = tuple.f10921b;
        this.f10917c = valueAnimator;
        valueAnimator.start();
    }

    /* renamed from: a */
    public void m9476a(int[] iArr, ValueAnimator valueAnimator) {
        Tuple tuple = new Tuple(iArr, valueAnimator);
        valueAnimator.addListener(this.f10918d);
        this.f10915a.add(tuple);
    }

    /* renamed from: c */
    public void m9474c() {
        ValueAnimator valueAnimator = this.f10917c;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f10917c = null;
        }
    }

    /* renamed from: d */
    public void m9473d(int[] iArr) {
        Tuple tuple;
        int size = this.f10915a.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                tuple = null;
                break;
            }
            Tuple tuple2 = this.f10915a.get(i);
            if (StateSet.stateSetMatches(tuple2.f10920a, iArr)) {
                tuple = tuple2;
                break;
            }
            i++;
        }
        Tuple tuple3 = this.f10916b;
        if (tuple != tuple3) {
            if (tuple3 != null) {
                m9475b();
            }
            this.f10916b = tuple;
            if (tuple != null) {
                m9472e(tuple);
            }
        }
    }
}
