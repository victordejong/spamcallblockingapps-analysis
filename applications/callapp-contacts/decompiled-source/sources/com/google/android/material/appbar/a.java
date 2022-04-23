package com.google.android.material.appbar;

import android.view.View;
import androidx.core.view.v;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/appbar/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    int f30239a;

    /* renamed from: b  reason: collision with root package name */
    int f30240b;

    /* renamed from: c  reason: collision with root package name */
    int f30241c;
    private final View e;
    private int f;
    private boolean g = true;

    /* renamed from: d  reason: collision with root package name */
    boolean f30242d = true;

    public a(View view) {
        this.e = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f30239a = this.e.getTop();
        this.f = this.e.getLeft();
    }

    public final boolean a(int i) {
        if (!this.g || this.f30240b == i) {
            return false;
        }
        this.f30240b = i;
        b();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        View view = this.e;
        v.e(view, this.f30240b - (view.getTop() - this.f30239a));
        View view2 = this.e;
        v.f(view2, this.f30241c - (view2.getLeft() - this.f));
    }
}
