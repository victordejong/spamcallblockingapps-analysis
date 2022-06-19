package androidx.core.p023g;

import android.view.View;
import android.view.ViewGroup;
/* renamed from: androidx.core.g.p */
/* loaded from: classes-dex2jar.jar:androidx/core/g/p.class */
public class C0547p {

    /* renamed from: a */
    private int f1875a;

    /* renamed from: b */
    private int f1876b;

    public C0547p(ViewGroup viewGroup) {
    }

    /* renamed from: a */
    public int m6303a() {
        return this.f1875a | this.f1876b;
    }

    /* renamed from: a */
    public void m6302a(View view, int i) {
        if (i == 1) {
            this.f1876b = 0;
        } else {
            this.f1875a = 0;
        }
    }

    /* renamed from: a */
    public void m6301a(View view, View view2, int i) {
        m6300a(view, view2, i, 0);
    }

    /* renamed from: a */
    public void m6300a(View view, View view2, int i, int i2) {
        if (i2 == 1) {
            this.f1876b = i;
        } else {
            this.f1875a = i;
        }
    }
}
