package com.futuremind.recyclerviewfastscroll.a;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.futuremind.recyclerviewfastscroll.FastScroller;
/* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/a/c.class */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private d f20248a;

    /* renamed from: b  reason: collision with root package name */
    private d f20249b;

    /* renamed from: c  reason: collision with root package name */
    public FastScroller f20250c;

    public abstract View a();

    public abstract View a(ViewGroup viewGroup);

    public abstract TextView b();

    public abstract int c();

    protected abstract d d();

    public d e() {
        if (this.f20248a == null) {
            this.f20248a = null;
        }
        return this.f20248a;
    }

    public d f() {
        if (this.f20249b == null) {
            this.f20249b = d();
        }
        return this.f20249b;
    }
}
