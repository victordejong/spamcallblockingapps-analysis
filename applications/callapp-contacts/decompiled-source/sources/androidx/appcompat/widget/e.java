package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import androidx.core.graphics.drawable.a;
import androidx.core.widget.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e.class */
public final class e {

    /* renamed from: b  reason: collision with root package name */
    private final CompoundButton f1086b;
    private boolean f;

    /* renamed from: a  reason: collision with root package name */
    ColorStateList f1085a = null;

    /* renamed from: c  reason: collision with root package name */
    private PorterDuff.Mode f1087c = null;

    /* renamed from: d  reason: collision with root package name */
    private boolean f1088d = false;
    private boolean e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(CompoundButton compoundButton) {
        this.f1086b = compoundButton;
    }

    private void b() {
        Drawable b2 = c.b(this.f1086b);
        if (b2 == null) {
            return;
        }
        if (this.f1088d || this.e) {
            Drawable mutate = a.f(b2).mutate();
            if (this.f1088d) {
                a.a(mutate, this.f1085a);
            }
            if (this.e) {
                a.a(mutate, this.f1087c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.f1086b.getDrawableState());
            }
            this.f1086b.setButtonDrawable(mutate);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(int i) {
        int i2 = i;
        if (Build.VERSION.SDK_INT < 17) {
            Drawable b2 = c.b(this.f1086b);
            i2 = i;
            if (b2 != null) {
                i2 = i + b2.getIntrinsicWidth();
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        if (this.f) {
            this.f = false;
            return;
        }
        this.f = true;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ColorStateList colorStateList) {
        this.f1085a = colorStateList;
        this.f1088d = true;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(PorterDuff.Mode mode) {
        this.f1087c = mode;
        this.e = true;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x008f A[Catch: all -> 0x00c2, TryCatch #0 {all -> 0x00c2, blocks: (B:3:0x002a, B:5:0x0034, B:7:0x0041, B:12:0x005d, B:14:0x0067, B:16:0x0074, B:18:0x0086, B:20:0x008f, B:22:0x009e, B:24:0x00a7), top: B:32:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a7 A[Catch: all -> 0x00c2, TryCatch #0 {all -> 0x00c2, blocks: (B:3:0x002a, B:5:0x0034, B:7:0x0041, B:12:0x005d, B:14:0x0067, B:16:0x0074, B:18:0x0086, B:20:0x008f, B:22:0x009e, B:24:0x00a7), top: B:32:0x002a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.util.AttributeSet r8, int r9) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.e.a(android.util.AttributeSet, int):void");
    }
}
