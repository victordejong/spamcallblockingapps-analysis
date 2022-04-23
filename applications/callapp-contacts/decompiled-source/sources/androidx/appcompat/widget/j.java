package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.a;
import androidx.core.graphics.drawable.a;
import androidx.core.view.v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/j.class */
final class j extends i {

    /* renamed from: b  reason: collision with root package name */
    final SeekBar f1103b;

    /* renamed from: c  reason: collision with root package name */
    Drawable f1104c;

    /* renamed from: d  reason: collision with root package name */
    private ColorStateList f1105d = null;
    private PorterDuff.Mode e = null;
    private boolean f = false;
    private boolean g = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(SeekBar seekBar) {
        super(seekBar);
        this.f1103b = seekBar;
    }

    private void a() {
        Drawable drawable = this.f1104c;
        if (drawable == null) {
            return;
        }
        if (this.f || this.g) {
            Drawable f = a.f(drawable.mutate());
            this.f1104c = f;
            if (this.f) {
                a.a(f, this.f1105d);
            }
            if (this.g) {
                a.a(this.f1104c, this.e);
            }
            if (this.f1104c.isStateful()) {
                this.f1104c.setState(this.f1103b.getDrawableState());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.widget.i
    public final void a(AttributeSet attributeSet, int i) {
        super.a(attributeSet, i);
        ab a2 = ab.a(this.f1103b.getContext(), attributeSet, a.j.AppCompatSeekBar, i, 0);
        SeekBar seekBar = this.f1103b;
        v.a(seekBar, seekBar.getContext(), a.j.AppCompatSeekBar, attributeSet, a2.f1044a, i);
        Drawable b2 = a2.b(a.j.AppCompatSeekBar_android_thumb);
        if (b2 != null) {
            this.f1103b.setThumb(b2);
        }
        Drawable a3 = a2.a(a.j.AppCompatSeekBar_tickMark);
        Drawable drawable = this.f1104c;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f1104c = a3;
        if (a3 != null) {
            a3.setCallback(this.f1103b);
            androidx.core.graphics.drawable.a.b(a3, v.f(this.f1103b));
            if (a3.isStateful()) {
                a3.setState(this.f1103b.getDrawableState());
            }
            a();
        }
        this.f1103b.invalidate();
        if (a2.g(a.j.AppCompatSeekBar_tickMarkTintMode)) {
            this.e = p.a(a2.a(a.j.AppCompatSeekBar_tickMarkTintMode, -1), this.e);
            this.g = true;
        }
        if (a2.g(a.j.AppCompatSeekBar_tickMarkTint)) {
            this.f1105d = a2.e(a.j.AppCompatSeekBar_tickMarkTint);
            this.f = true;
        }
        a2.f1044a.recycle();
        a();
    }
}
