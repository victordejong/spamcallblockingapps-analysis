package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import androidx.core.graphics.drawable.C0840a;
import androidx.core.widget.C0954c;
/* renamed from: androidx.appcompat.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e.class */
public final class C0391e {

    /* renamed from: b */
    private final CompoundButton f1570b;

    /* renamed from: f */
    private boolean f1574f;

    /* renamed from: a */
    ColorStateList f1569a = null;

    /* renamed from: c */
    private PorterDuff.Mode f1571c = null;

    /* renamed from: d */
    private boolean f1572d = false;

    /* renamed from: e */
    private boolean f1573e = false;

    public C0391e(CompoundButton compoundButton) {
        this.f1570b = compoundButton;
    }

    /* renamed from: b */
    private void m45733b() {
        Drawable m43980b = C0954c.m43980b(this.f1570b);
        if (m43980b != null) {
            if (!this.f1572d && !this.f1573e) {
                return;
            }
            Drawable mutate = C0840a.m44345f(m43980b).mutate();
            if (this.f1572d) {
                C0840a.m44355a(mutate, this.f1569a);
            }
            if (this.f1573e) {
                C0840a.m44352a(mutate, this.f1571c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.f1570b.getDrawableState());
            }
            this.f1570b.setButtonDrawable(mutate);
        }
    }

    /* renamed from: a */
    public final int m45737a(int i) {
        int i2 = i;
        if (Build.VERSION.SDK_INT < 17) {
            Drawable m43980b = C0954c.m43980b(this.f1570b);
            i2 = i;
            if (m43980b != null) {
                i2 = i + m43980b.getIntrinsicWidth();
            }
        }
        return i2;
    }

    /* renamed from: a */
    public final void m45738a() {
        if (this.f1574f) {
            this.f1574f = false;
            return;
        }
        this.f1574f = true;
        m45733b();
    }

    /* renamed from: a */
    public final void m45736a(ColorStateList colorStateList) {
        this.f1569a = colorStateList;
        this.f1572d = true;
        m45733b();
    }

    /* renamed from: a */
    public final void m45735a(PorterDuff.Mode mode) {
        this.f1571c = mode;
        this.f1573e = true;
        m45733b();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x008f A[Catch: all -> 0x00c2, TryCatch #0 {all -> 0x00c2, blocks: (B:3:0x002a, B:5:0x0034, B:7:0x0041, B:12:0x005d, B:14:0x0067, B:16:0x0074, B:18:0x0086, B:20:0x008f, B:22:0x009e, B:24:0x00a7), top: B:32:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a7 A[Catch: all -> 0x00c2, TryCatch #0 {all -> 0x00c2, blocks: (B:3:0x002a, B:5:0x0034, B:7:0x0041, B:12:0x005d, B:14:0x0067, B:16:0x0074, B:18:0x0086, B:20:0x008f, B:22:0x009e, B:24:0x00a7), top: B:32:0x002a }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m45734a(android.util.AttributeSet r8, int r9) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0391e.m45734a(android.util.AttributeSet, int):void");
    }
}
