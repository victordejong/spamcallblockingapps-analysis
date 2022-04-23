package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import androidx.core.graphics.drawable.C0283a;
import androidx.core.widget.C0294c;
/* renamed from: androidx.appcompat.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e.class */
class C0128e {

    /* renamed from: a */
    private final CompoundButton f596a;

    /* renamed from: b */
    private ColorStateList f597b = null;

    /* renamed from: c */
    private PorterDuff.Mode f598c = null;

    /* renamed from: d */
    private boolean f599d = false;

    /* renamed from: e */
    private boolean f600e = false;

    /* renamed from: f */
    private boolean f601f;

    C0128e(CompoundButton compoundButton) {
        this.f596a = compoundButton;
    }

    /* renamed from: a */
    void m14616a() {
        Drawable a = C0294c.m13418a(this.f596a);
        if (a == null) {
            return;
        }
        if (this.f599d || this.f600e) {
            Drawable mutate = C0283a.m13461r(a).mutate();
            if (this.f599d) {
                C0283a.m13464o(mutate, this.f597b);
            }
            if (this.f600e) {
                C0283a.m13463p(mutate, this.f598c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.f596a.getDrawableState());
            }
            this.f596a.setButtonDrawable(mutate);
        }
    }

    /* renamed from: b */
    int m14615b(int i) {
        int i2 = i;
        if (Build.VERSION.SDK_INT < 17) {
            Drawable a = C0294c.m13418a(this.f596a);
            i2 = i;
            if (a != null) {
                i2 = i + a.getIntrinsicWidth();
            }
        }
        return i2;
    }

    /* renamed from: c */
    ColorStateList m14614c() {
        return this.f597b;
    }

    /* renamed from: d */
    PorterDuff.Mode m14613d() {
        return this.f598c;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0063 A[Catch: all -> 0x00c5, TRY_ENTER, TryCatch #0 {all -> 0x00c5, blocks: (B:3:0x0030, B:5:0x003c, B:7:0x0047, B:12:0x0063, B:14:0x006f, B:16:0x007a, B:17:0x008b, B:17:0x008b, B:18:0x008e, B:20:0x0097, B:21:0x00a3, B:21:0x00a3, B:22:0x00a6, B:24:0x00af), top: B:32:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0097 A[Catch: all -> 0x00c5, TryCatch #0 {all -> 0x00c5, blocks: (B:3:0x0030, B:5:0x003c, B:7:0x0047, B:12:0x0063, B:14:0x006f, B:16:0x007a, B:17:0x008b, B:17:0x008b, B:18:0x008e, B:20:0x0097, B:21:0x00a3, B:21:0x00a3, B:22:0x00a6, B:24:0x00af), top: B:32:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00af A[Catch: all -> 0x00c5, TryCatch #0 {all -> 0x00c5, blocks: (B:3:0x0030, B:5:0x003c, B:7:0x0047, B:12:0x0063, B:14:0x006f, B:16:0x007a, B:17:0x008b, B:17:0x008b, B:18:0x008e, B:20:0x0097, B:21:0x00a3, B:21:0x00a3, B:22:0x00a6, B:24:0x00af), top: B:32:0x0030 }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m14612e(android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0128e.m14612e(android.util.AttributeSet, int):void");
    }

    /* renamed from: f */
    void m14611f() {
        if (this.f601f) {
            this.f601f = false;
            return;
        }
        this.f601f = true;
        m14616a();
    }

    /* renamed from: g */
    void m14610g(ColorStateList colorStateList) {
        this.f597b = colorStateList;
        this.f599d = true;
        m14616a();
    }

    /* renamed from: h */
    void m14609h(PorterDuff.Mode mode) {
        this.f598c = mode;
        this.f600e = true;
        m14616a();
    }
}
