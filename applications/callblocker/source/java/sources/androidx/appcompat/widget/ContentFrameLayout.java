package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import androidx.core.p026h.C0595u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout.class */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a */
    private TypedValue f1031a;

    /* renamed from: b */
    private TypedValue f1032b;

    /* renamed from: c */
    private TypedValue f1033c;

    /* renamed from: d */
    private TypedValue f1034d;

    /* renamed from: e */
    private TypedValue f1035e;

    /* renamed from: f */
    private TypedValue f1036f;

    /* renamed from: g */
    private final Rect f1037g;

    /* renamed from: h */
    private AbstractC0249a f1038h;

    /* renamed from: androidx.appcompat.widget.ContentFrameLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout$a.class */
    public interface AbstractC0249a {
        /* renamed from: a */
        void mo21694a();

        /* renamed from: b */
        void mo21693b();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1037g = new Rect();
    }

    /* renamed from: a */
    public void m21696a(int i, int i2, int i3, int i4) {
        this.f1037g.set(i, i2, i3, i4);
        if (C0595u.m20299y(this)) {
            requestLayout();
        }
    }

    /* renamed from: a */
    public void m21695a(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f1035e == null) {
            this.f1035e = new TypedValue();
        }
        return this.f1035e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f1036f == null) {
            this.f1036f = new TypedValue();
        }
        return this.f1036f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f1033c == null) {
            this.f1033c = new TypedValue();
        }
        return this.f1033c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f1034d == null) {
            this.f1034d = new TypedValue();
        }
        return this.f1034d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f1031a == null) {
            this.f1031a = new TypedValue();
        }
        return this.f1031a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f1032b == null) {
            this.f1032b = new TypedValue();
        }
        return this.f1032b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f1038h != null) {
            this.f1038h.mo21694a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f1038h != null) {
            this.f1038h.mo21693b();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:77:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(AbstractC0249a abstractC0249a) {
        this.f1038h = abstractC0249a;
    }
}
