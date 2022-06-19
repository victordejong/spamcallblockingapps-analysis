package p000;

import android.view.View;
import android.view.ViewGroup;
/* renamed from: eb */
/* loaded from: classes-dex2jar.jar:eb.class */
public class C1357eb {

    /* renamed from: a */
    public int f6318a;

    /* renamed from: b */
    public int f6319b;

    public C1357eb(ViewGroup viewGroup) {
    }

    /* renamed from: a */
    public int m2182a() {
        return this.f6318a | this.f6319b;
    }

    /* renamed from: b */
    public void m2181b(View view, View view2, int i) {
        m2180c(view, view2, i, 0);
    }

    /* renamed from: c */
    public void m2180c(View view, View view2, int i, int i2) {
        if (i2 == 1) {
            this.f6319b = i;
        } else {
            this.f6318a = i;
        }
    }

    /* renamed from: d */
    public void m2179d(View view) {
        m2178e(view, 0);
    }

    /* renamed from: e */
    public void m2178e(View view, int i) {
        if (i == 1) {
            this.f6319b = 0;
        } else {
            this.f6318a = 0;
        }
    }
}
