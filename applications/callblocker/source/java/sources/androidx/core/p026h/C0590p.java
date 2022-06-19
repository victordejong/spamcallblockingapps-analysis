package androidx.core.p026h;

import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.core.h.p */
/* loaded from: classes-dex2jar.jar:androidx/core/h/p.class */
public class C0590p {

    /* renamed from: a */
    private int f2084a;

    /* renamed from: b */
    private int f2085b;

    public C0590p(ViewGroup viewGroup) {
    }

    /* renamed from: a */
    public int m20380a() {
        return this.f2084a | this.f2085b;
    }

    /* renamed from: a */
    public void m20379a(View view) {
        m20378a(view, 0);
    }

    /* renamed from: a */
    public void m20378a(View view, int i) {
        if (i == 1) {
            this.f2085b = 0;
        } else {
            this.f2084a = 0;
        }
    }

    /* renamed from: a */
    public void m20377a(View view, View view2, int i) {
        m20376a(view, view2, i, 0);
    }

    /* renamed from: a */
    public void m20376a(View view, View view2, int i, int i2) {
        if (i2 == 1) {
            this.f2085b = i;
        } else {
            this.f2084a = i;
        }
    }
}
