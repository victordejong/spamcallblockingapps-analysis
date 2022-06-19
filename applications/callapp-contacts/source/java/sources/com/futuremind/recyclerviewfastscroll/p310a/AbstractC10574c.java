package com.futuremind.recyclerviewfastscroll.p310a;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.futuremind.recyclerviewfastscroll.FastScroller;
/* renamed from: com.futuremind.recyclerviewfastscroll.a.c */
/* loaded from: classes3-dex2jar.jar:com/futuremind/recyclerviewfastscroll/a/c.class */
public abstract class AbstractC10574c {

    /* renamed from: a */
    private AbstractC10575d f34319a;

    /* renamed from: b */
    private AbstractC10575d f34320b;

    /* renamed from: c */
    public FastScroller f34321c;

    /* renamed from: a */
    public abstract View mo22641a();

    /* renamed from: a */
    public abstract View mo22640a(ViewGroup viewGroup);

    /* renamed from: b */
    public abstract TextView mo22639b();

    /* renamed from: c */
    public abstract int mo22638c();

    /* renamed from: d */
    protected abstract AbstractC10575d mo22637d();

    /* renamed from: e */
    public AbstractC10575d m22636e() {
        if (this.f34319a == null) {
            this.f34319a = null;
        }
        return this.f34319a;
    }

    /* renamed from: f */
    public AbstractC10575d m22635f() {
        if (this.f34320b == null) {
            this.f34320b = mo22637d();
        }
        return this.f34320b;
    }
}
