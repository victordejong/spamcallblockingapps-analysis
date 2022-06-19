package p020b.p041h.p050l;

import android.view.View;
import android.view.ViewGroup;
/* renamed from: b.h.l.p */
/* loaded from: classes-dex2jar.jar:b/h/l/p.class */
public class C1672p {

    /* renamed from: a */
    private int f6333a;

    /* renamed from: b */
    private int f6334b;

    public C1672p(ViewGroup viewGroup) {
    }

    /* renamed from: a */
    public int m29360a() {
        return this.f6333a | this.f6334b;
    }

    /* renamed from: b */
    public void m29359b(View view, View view2, int i) {
        m29358c(view, view2, i, 0);
    }

    /* renamed from: c */
    public void m29358c(View view, View view2, int i, int i2) {
        if (i2 == 1) {
            this.f6334b = i;
        } else {
            this.f6333a = i;
        }
    }

    /* renamed from: d */
    public void m29357d(View view) {
        m29356e(view, 0);
    }

    /* renamed from: e */
    public void m29356e(View view, int i) {
        if (i == 1) {
            this.f6334b = 0;
        } else {
            this.f6333a = 0;
        }
    }
}
