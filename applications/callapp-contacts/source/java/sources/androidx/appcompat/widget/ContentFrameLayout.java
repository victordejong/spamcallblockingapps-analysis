package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import androidx.core.view.C0926v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout.class */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a */
    private TypedValue f1196a;

    /* renamed from: b */
    private TypedValue f1197b;

    /* renamed from: c */
    private TypedValue f1198c;

    /* renamed from: d */
    private TypedValue f1199d;

    /* renamed from: e */
    private TypedValue f1200e;

    /* renamed from: f */
    private TypedValue f1201f;

    /* renamed from: g */
    private final Rect f1202g;

    /* renamed from: h */
    private AbstractC0328a f1203h;

    /* renamed from: androidx.appcompat.widget.ContentFrameLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout$a.class */
    public interface AbstractC0328a {
        /* renamed from: a */
        void mo45951a();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1202g = new Rect();
    }

    /* renamed from: a */
    public final TypedValue m45958a() {
        if (this.f1196a == null) {
            this.f1196a = new TypedValue();
        }
        return this.f1196a;
    }

    /* renamed from: a */
    public final void m45957a(Rect rect) {
        fitSystemWindows(rect);
    }

    /* renamed from: b */
    public final TypedValue m45956b() {
        if (this.f1197b == null) {
            this.f1197b = new TypedValue();
        }
        return this.f1197b;
    }

    /* renamed from: c */
    public final TypedValue m45955c() {
        if (this.f1198c == null) {
            this.f1198c = new TypedValue();
        }
        return this.f1198c;
    }

    /* renamed from: d */
    public final TypedValue m45954d() {
        if (this.f1199d == null) {
            this.f1199d = new TypedValue();
        }
        return this.f1199d;
    }

    /* renamed from: e */
    public final TypedValue m45953e() {
        if (this.f1200e == null) {
            this.f1200e = new TypedValue();
        }
        return this.f1200e;
    }

    /* renamed from: f */
    public final TypedValue m45952f() {
        if (this.f1201f == null) {
            this.f1201f = new TypedValue();
        }
        return this.f1201f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC0328a abstractC0328a = this.f1203h;
        if (abstractC0328a != null) {
            abstractC0328a.mo45951a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r5, int r6) {
        /*
            Method dump skipped, instructions count: 533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(AbstractC0328a abstractC0328a) {
        this.f1203h = abstractC0328a;
    }

    public void setDecorPadding(int i, int i2, int i3, int i4) {
        this.f1202g.set(i, i2, i3, i4);
        if (C0926v.m44157B(this)) {
            requestLayout();
        }
    }
}
