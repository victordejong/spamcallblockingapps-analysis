package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeBounds$a.class */
public class ChangeBounds$a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ ViewGroup f1480a;

    /* renamed from: b */
    public final /* synthetic */ BitmapDrawable f1481b;

    /* renamed from: c */
    public final /* synthetic */ View f1482c;

    /* renamed from: d */
    public final /* synthetic */ float f1483d;

    public ChangeBounds$a(ChangeBounds changeBounds, ViewGroup viewGroup, BitmapDrawable bitmapDrawable, View view, float f) {
        this.f1480a = viewGroup;
        this.f1481b = bitmapDrawable;
        this.f1482c = view;
        this.f1483d = f;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        i30.b(this.f1480a).remove(this.f1481b);
        i30.h(this.f1482c, this.f1483d);
    }
}
