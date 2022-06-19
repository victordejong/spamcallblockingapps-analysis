package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.C0136e;
import java.util.Objects;
import p086f.C2670o;
import p086f.LayoutInflater$Factory2C2654m;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout.class */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a */
    public TypedValue f607a;

    /* renamed from: b */
    public TypedValue f608b;

    /* renamed from: c */
    public TypedValue f609c;

    /* renamed from: d */
    public TypedValue f610d;

    /* renamed from: e */
    public TypedValue f611e;

    /* renamed from: f */
    public TypedValue f612f;

    /* renamed from: g */
    public final Rect f613g = new Rect();

    /* renamed from: h */
    public AbstractC0163a f614h;

    /* renamed from: androidx.appcompat.widget.ContentFrameLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout$a.class */
    public interface AbstractC0163a {
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f611e == null) {
            this.f611e = new TypedValue();
        }
        return this.f611e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f612f == null) {
            this.f612f = new TypedValue();
        }
        return this.f612f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f609c == null) {
            this.f609c = new TypedValue();
        }
        return this.f609c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f610d == null) {
            this.f610d = new TypedValue();
        }
        return this.f610d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f607a == null) {
            this.f607a = new TypedValue();
        }
        return this.f607a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f608b == null) {
            this.f608b = new TypedValue();
        }
        return this.f608b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC0163a abstractC0163a = this.f614h;
        if (abstractC0163a != null) {
            Objects.requireNonNull(abstractC0163a);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0163a abstractC0163a = this.f614h;
        if (abstractC0163a != null) {
            LayoutInflater$Factory2C2654m layoutInflater$Factory2C2654m = ((C2670o) abstractC0163a).f9184a;
            AbstractC0227f0 abstractC0227f0 = layoutInflater$Factory2C2654m.f9134k;
            if (abstractC0227f0 != null) {
                abstractC0227f0.mo8527l();
            }
            if (layoutInflater$Factory2C2654m.f9139p != null) {
                layoutInflater$Factory2C2654m.f9128e.getDecorView().removeCallbacks(layoutInflater$Factory2C2654m.f9140q);
                if (layoutInflater$Factory2C2654m.f9139p.isShowing()) {
                    try {
                        layoutInflater$Factory2C2654m.f9139p.dismiss();
                    } catch (IllegalArgumentException e) {
                    }
                }
                layoutInflater$Factory2C2654m.f9139p = null;
            }
            layoutInflater$Factory2C2654m.m3352K();
            C0136e c0136e = layoutInflater$Factory2C2654m.m3346Q(0).f9173h;
            if (c0136e == null) {
                return;
            }
            c0136e.m8712c(true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(AbstractC0163a abstractC0163a) {
        this.f614h = abstractC0163a;
    }
}
