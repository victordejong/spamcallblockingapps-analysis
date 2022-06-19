package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$a.class */
class ChangeBounds$a extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ ViewGroup f2622a;

    /* renamed from: b */
    final /* synthetic */ BitmapDrawable f2623b;

    /* renamed from: c */
    final /* synthetic */ View f2624c;

    /* renamed from: d */
    final /* synthetic */ float f2625d;

    ChangeBounds$a(ChangeBounds changeBounds, ViewGroup viewGroup, BitmapDrawable bitmapDrawable, View view, float f) {
        this.f2622a = viewGroup;
        this.f2623b = bitmapDrawable;
        this.f2624c = view;
        this.f2625d = f;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        C0497j0.m12022b(this.f2622a).m12026b(this.f2623b);
        C0497j0.m12016h(this.f2624c, this.f2625d);
    }
}
