package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import androidx.core.view.v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout.class */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private TypedValue f946a;

    /* renamed from: b  reason: collision with root package name */
    private TypedValue f947b;

    /* renamed from: c  reason: collision with root package name */
    private TypedValue f948c;

    /* renamed from: d  reason: collision with root package name */
    private TypedValue f949d;
    private TypedValue e;
    private TypedValue f;
    private final Rect g;
    private a h;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ContentFrameLayout$a.class */
    public interface a {
        void a();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = new Rect();
    }

    public final TypedValue a() {
        if (this.f946a == null) {
            this.f946a = new TypedValue();
        }
        return this.f946a;
    }

    public final void a(Rect rect) {
        fitSystemWindows(rect);
    }

    public final TypedValue b() {
        if (this.f947b == null) {
            this.f947b = new TypedValue();
        }
        return this.f947b;
    }

    public final TypedValue c() {
        if (this.f948c == null) {
            this.f948c = new TypedValue();
        }
        return this.f948c;
    }

    public final TypedValue d() {
        if (this.f949d == null) {
            this.f949d = new TypedValue();
        }
        return this.f949d;
    }

    public final TypedValue e() {
        if (this.e == null) {
            this.e = new TypedValue();
        }
        return this.e;
    }

    public final TypedValue f() {
        if (this.f == null) {
            this.f = new TypedValue();
        }
        return this.f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a aVar = this.h;
        if (aVar != null) {
            aVar.a();
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

    public void setAttachListener(a aVar) {
        this.h = aVar;
    }

    public void setDecorPadding(int i, int i2, int i3, int i4) {
        this.g.set(i, i2, i3, i4);
        if (v.B(this)) {
            requestLayout();
        }
    }
}
