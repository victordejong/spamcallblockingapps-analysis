package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import d.h.m.t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout.class */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: b */
    private TypedValue f407b;

    /* renamed from: c */
    private TypedValue f408c;

    /* renamed from: d */
    private TypedValue f409d;

    /* renamed from: e */
    private TypedValue f410e;

    /* renamed from: f */
    private TypedValue f411f;

    /* renamed from: g */
    private TypedValue f412g;

    /* renamed from: h */
    private final Rect f413h;

    /* renamed from: i */
    private AbstractC0110a f414i;

    /* renamed from: androidx.appcompat.widget.ContentFrameLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout$a.class */
    public interface AbstractC0110a {
        /* renamed from: a */
        void m14762a();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f413h = new Rect();
    }

    /* renamed from: a */
    public void m14763a(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f411f == null) {
            this.f411f = new TypedValue();
        }
        return this.f411f;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f412g == null) {
            this.f412g = new TypedValue();
        }
        return this.f412g;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f409d == null) {
            this.f409d = new TypedValue();
        }
        return this.f409d;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f410e == null) {
            this.f410e = new TypedValue();
        }
        return this.f410e;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f407b == null) {
            this.f407b = new TypedValue();
        }
        return this.f407b;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f408c == null) {
            this.f408c = new TypedValue();
        }
        return this.f408c;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC0110a abstractC0110a = this.f414i;
        if (abstractC0110a != null) {
            abstractC0110a.m14762a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0110a abstractC0110a = this.f414i;
        if (abstractC0110a != null) {
            abstractC0110a.onDetachedFromWindow();
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
    protected void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(AbstractC0110a abstractC0110a) {
        this.f414i = abstractC0110a;
    }

    public void setDecorPadding(int i, int i2, int i3, int i4) {
        this.f413h.set(i, i2, i3, i4);
        if (t.S(this)) {
            requestLayout();
        }
    }
}
