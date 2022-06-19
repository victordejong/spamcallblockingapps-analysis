package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import androidx.core.p023g.C0552u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout.class */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a */
    private TypedValue f969a;

    /* renamed from: b */
    private TypedValue f970b;

    /* renamed from: c */
    private TypedValue f971c;

    /* renamed from: d */
    private TypedValue f972d;

    /* renamed from: e */
    private TypedValue f973e;

    /* renamed from: f */
    private TypedValue f974f;

    /* renamed from: g */
    private final Rect f975g;

    /* renamed from: h */
    private AbstractC0239a f976h;

    /* renamed from: androidx.appcompat.widget.ContentFrameLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout$a.class */
    public interface AbstractC0239a {
        /* renamed from: a */
        void mo7391a();

        /* renamed from: b */
        void mo7390b();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f975g = new Rect();
    }

    /* renamed from: a */
    public void m7393a(int i, int i2, int i3, int i4) {
        this.f975g.set(i, i2, i3, i4);
        if (C0552u.m6295A(this)) {
            requestLayout();
        }
    }

    /* renamed from: a */
    public void m7392a(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f973e == null) {
            this.f973e = new TypedValue();
        }
        return this.f973e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f974f == null) {
            this.f974f = new TypedValue();
        }
        return this.f974f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f971c == null) {
            this.f971c = new TypedValue();
        }
        return this.f971c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f972d == null) {
            this.f972d = new TypedValue();
        }
        return this.f972d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f969a == null) {
            this.f969a = new TypedValue();
        }
        return this.f969a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f970b == null) {
            this.f970b = new TypedValue();
        }
        return this.f970b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC0239a abstractC0239a = this.f976h;
        if (abstractC0239a != null) {
            abstractC0239a.mo7391a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0239a abstractC0239a = this.f976h;
        if (abstractC0239a != null) {
            abstractC0239a.mo7390b();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(AbstractC0239a abstractC0239a) {
        this.f976h = abstractC0239a;
    }
}
