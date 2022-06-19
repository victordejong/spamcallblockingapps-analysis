package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout.class */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: d */
    private TypedValue f950d;

    /* renamed from: e */
    private TypedValue f951e;

    /* renamed from: f */
    private TypedValue f952f;

    /* renamed from: g */
    private TypedValue f953g;

    /* renamed from: h */
    private TypedValue f954h;

    /* renamed from: i */
    private TypedValue f955i;

    /* renamed from: j */
    private final Rect f956j;

    /* renamed from: k */
    private AbstractC0238a f957k;

    /* renamed from: androidx.appcompat.widget.ContentFrameLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout$a.class */
    public interface AbstractC0238a {
        /* renamed from: a */
        void mo35177a();

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
        this.f956j = new Rect();
    }

    /* renamed from: a */
    public void m35178a(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f954h == null) {
            this.f954h = new TypedValue();
        }
        return this.f954h;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f955i == null) {
            this.f955i = new TypedValue();
        }
        return this.f955i;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f952f == null) {
            this.f952f = new TypedValue();
        }
        return this.f952f;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f953g == null) {
            this.f953g = new TypedValue();
        }
        return this.f953g;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f950d == null) {
            this.f950d = new TypedValue();
        }
        return this.f950d;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f951e == null) {
            this.f951e = new TypedValue();
        }
        return this.f951e;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC0238a abstractC0238a = this.f957k;
        if (abstractC0238a != null) {
            abstractC0238a.mo35177a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0238a abstractC0238a = this.f957k;
        if (abstractC0238a != null) {
            abstractC0238a.onDetachedFromWindow();
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

    public void setAttachListener(AbstractC0238a abstractC0238a) {
        this.f957k = abstractC0238a;
    }

    public void setDecorPadding(int i, int i2, int i3, int i4) {
        this.f956j.set(i, i2, i3, i4);
        if (C1679w.m29313V(this)) {
            requestLayout();
        }
    }
}
