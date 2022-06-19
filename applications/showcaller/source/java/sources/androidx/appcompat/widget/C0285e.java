package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import androidx.core.graphics.drawable.C0615a;
import androidx.core.widget.C0643e;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e.class */
public class C0285e {

    /* renamed from: a */
    private final CompoundButton f1247a;

    /* renamed from: b */
    private ColorStateList f1248b = null;

    /* renamed from: c */
    private PorterDuff.Mode f1249c = null;

    /* renamed from: d */
    private boolean f1250d = false;

    /* renamed from: e */
    private boolean f1251e = false;

    /* renamed from: f */
    private boolean f1252f;

    public C0285e(CompoundButton compoundButton) {
        this.f1247a = compoundButton;
    }

    /* renamed from: a */
    void m34975a() {
        Drawable m33107a = C0643e.m33107a(this.f1247a);
        if (m33107a != null) {
            if (!this.f1250d && !this.f1251e) {
                return;
            }
            Drawable mutate = C0615a.m33212r(m33107a).mutate();
            if (this.f1250d) {
                C0615a.m33215o(mutate, this.f1248b);
            }
            if (this.f1251e) {
                C0615a.m33214p(mutate, this.f1249c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.f1247a.getDrawableState());
            }
            this.f1247a.setButtonDrawable(mutate);
        }
    }

    /* renamed from: b */
    public int m34974b(int i) {
        int i2 = i;
        if (Build.VERSION.SDK_INT < 17) {
            Drawable m33107a = C0643e.m33107a(this.f1247a);
            i2 = i;
            if (m33107a != null) {
                i2 = i + m33107a.getIntrinsicWidth();
            }
        }
        return i2;
    }

    /* renamed from: c */
    public ColorStateList m34973c() {
        return this.f1248b;
    }

    /* renamed from: d */
    public PorterDuff.Mode m34972d() {
        return this.f1249c;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0063 A[Catch: all -> 0x00c5, TRY_ENTER, TryCatch #0 {all -> 0x00c5, blocks: (B:3:0x0030, B:5:0x003c, B:7:0x0047, B:12:0x0063, B:14:0x006f, B:16:0x007a, B:17:0x008b, B:17:0x008b, B:18:0x008e, B:20:0x0097, B:21:0x00a3, B:21:0x00a3, B:22:0x00a6, B:24:0x00af), top: B:32:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0097 A[Catch: all -> 0x00c5, TryCatch #0 {all -> 0x00c5, blocks: (B:3:0x0030, B:5:0x003c, B:7:0x0047, B:12:0x0063, B:14:0x006f, B:16:0x007a, B:17:0x008b, B:17:0x008b, B:18:0x008e, B:20:0x0097, B:21:0x00a3, B:21:0x00a3, B:22:0x00a6, B:24:0x00af), top: B:32:0x0030 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00af A[Catch: all -> 0x00c5, TryCatch #0 {all -> 0x00c5, blocks: (B:3:0x0030, B:5:0x003c, B:7:0x0047, B:12:0x0063, B:14:0x006f, B:16:0x007a, B:17:0x008b, B:17:0x008b, B:18:0x008e, B:20:0x0097, B:21:0x00a3, B:21:0x00a3, B:22:0x00a6, B:24:0x00af), top: B:32:0x0030 }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m34971e(android.util.AttributeSet r9, int r10) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0285e.m34971e(android.util.AttributeSet, int):void");
    }

    /* renamed from: f */
    public void m34970f() {
        if (this.f1252f) {
            this.f1252f = false;
            return;
        }
        this.f1252f = true;
        m34975a();
    }

    /* renamed from: g */
    public void m34969g(ColorStateList colorStateList) {
        this.f1248b = colorStateList;
        this.f1250d = true;
        m34975a();
    }

    /* renamed from: h */
    public void m34968h(PorterDuff.Mode mode) {
        this.f1249c = mode;
        this.f1251e = true;
        m34975a();
    }
}
