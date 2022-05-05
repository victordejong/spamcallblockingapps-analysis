package com.google.android.material.expandable;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* loaded from: classes-dex2jar.jar:com/google/android/material/expandable/ExpandableWidgetHelper.class */
public final class ExpandableWidgetHelper {
    @NonNull

    /* renamed from: a */
    private final View f10643a;

    /* renamed from: b */
    private boolean f10644b = false;
    @IdRes

    /* renamed from: c */
    private int f10645c = 0;

    public ExpandableWidgetHelper(ExpandableWidget expandableWidget) {
        this.f10643a = (View) expandableWidget;
    }

    /* renamed from: a */
    private void m9790a() {
        ViewParent parent = this.f10643a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).m19920f(this.f10643a);
        }
    }

    @IdRes
    /* renamed from: b */
    public int m9789b() {
        return this.f10645c;
    }

    /* renamed from: c */
    public boolean m9788c() {
        return this.f10644b;
    }

    /* renamed from: d */
    public void m9787d(@NonNull Bundle bundle) {
        this.f10644b = bundle.getBoolean("expanded", false);
        this.f10645c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f10644b) {
            m9790a();
        }
    }

    @NonNull
    /* renamed from: e */
    public Bundle m9786e() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f10644b);
        bundle.putInt("expandedComponentIdHint", this.f10645c);
        return bundle;
    }

    /* renamed from: f */
    public void m9785f(@IdRes int i) {
        this.f10645c = i;
    }
}
