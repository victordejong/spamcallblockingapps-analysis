package com.google.android.material.transformation;

import android.view.View;
import android.view.ViewTreeObserver;
import e.m.a.g.m.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/transformation/ExpandableBehavior$a.class */
public class ExpandableBehavior$a implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final /* synthetic */ View f6982a;

    /* renamed from: b */
    public final /* synthetic */ int f6983b;

    /* renamed from: c */
    public final /* synthetic */ a f6984c;

    /* renamed from: d */
    public final /* synthetic */ ExpandableBehavior f6985d;

    public ExpandableBehavior$a(ExpandableBehavior expandableBehavior, View view, int i, a aVar) {
        this.f6985d = expandableBehavior;
        this.f6982a = view;
        this.f6983b = i;
        this.f6984c = aVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        this.f6982a.getViewTreeObserver().removeOnPreDrawListener(this);
        ExpandableBehavior expandableBehavior = this.f6985d;
        if (expandableBehavior.a == this.f6983b) {
            View view = this.f6984c;
            expandableBehavior.C(view, this.f6982a, view.a(), false);
            return false;
        }
        return false;
    }
}
