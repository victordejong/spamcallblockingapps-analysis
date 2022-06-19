package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout.class */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a */
    public TypedValue f550a;

    /* renamed from: b */
    public TypedValue f551b;

    /* renamed from: c */
    public TypedValue f552c;

    /* renamed from: d */
    public TypedValue f553d;

    /* renamed from: f */
    public TypedValue f554f;

    /* renamed from: g */
    public TypedValue f555g;

    /* renamed from: h */
    public final Rect f556h;

    /* renamed from: j */
    public AbstractC0084a f557j;

    /* renamed from: androidx.appcompat.widget.ContentFrameLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout$a.class */
    public interface AbstractC0084a {
        /* renamed from: a */
        void m6956a();

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
        this.f556h = new Rect();
    }

    /* renamed from: a */
    public void m6957a(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f554f == null) {
            this.f554f = new TypedValue();
        }
        return this.f554f;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f555g == null) {
            this.f555g = new TypedValue();
        }
        return this.f555g;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f552c == null) {
            this.f552c = new TypedValue();
        }
        return this.f552c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f553d == null) {
            this.f553d = new TypedValue();
        }
        return this.f553d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f550a == null) {
            this.f550a = new TypedValue();
        }
        return this.f550a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f551b == null) {
            this.f551b = new TypedValue();
        }
        return this.f551b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC0084a abstractC0084a = this.f557j;
        if (abstractC0084a != null) {
            abstractC0084a.m6956a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0084a abstractC0084a = this.f557j;
        if (abstractC0084a != null) {
            abstractC0084a.onDetachedFromWindow();
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

    public void setAttachListener(AbstractC0084a abstractC0084a) {
        this.f557j = abstractC0084a;
    }

    public void setDecorPadding(int i, int i2, int i3, int i4) {
        this.f556h.set(i, i2, i3, i4);
        if (jb.S(this)) {
            requestLayout();
        }
    }
}
