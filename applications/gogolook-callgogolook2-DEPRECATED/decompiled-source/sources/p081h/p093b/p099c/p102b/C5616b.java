package p081h.p093b.p099c.p102b;

import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.style.DynamicDrawableSpan;
/* renamed from: h.b.c.b.b */
/* loaded from: classes-dex2jar.jar:h/b/c/b/b.class */
public class C5616b extends DynamicDrawableSpan {

    /* renamed from: a */
    public C5615a f14038a;

    public C5616b(int i, int i2, Spannable spannable) {
        super(0);
        this.f14038a = new C5615a(i, i2, spannable);
    }

    /* renamed from: a */
    public void m25000a(int i) {
        this.f14038a.m25003a(i);
    }

    @Override // android.text.style.DynamicDrawableSpan
    public Drawable getDrawable() {
        return this.f14038a;
    }
}
