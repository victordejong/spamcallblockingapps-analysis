package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/ContentLoadingProgressBar.class */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: d */
    long f3030d;

    /* renamed from: e */
    boolean f3031e;

    /* renamed from: f */
    boolean f3032f;

    /* renamed from: g */
    boolean f3033g;

    /* renamed from: h */
    private final Runnable f3034h;

    /* renamed from: i */
    private final Runnable f3035i;

    public ContentLoadingProgressBar(Context context) {
        this(context, null);
    }

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f3030d = -1L;
        this.f3031e = false;
        this.f3032f = false;
        this.f3033g = false;
        this.f3034h = new Runnable() { // from class: androidx.core.widget.a
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.m33182b();
            }
        };
        this.f3035i = new Runnable() { // from class: androidx.core.widget.b
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.m33180d();
            }
        };
    }

    /* renamed from: a */
    public /* synthetic */ void m33182b() {
        this.f3031e = false;
        this.f3030d = -1L;
        setVisibility(8);
    }

    /* renamed from: c */
    public /* synthetic */ void m33180d() {
        this.f3032f = false;
        if (!this.f3033g) {
            this.f3030d = System.currentTimeMillis();
            setVisibility(0);
        }
    }

    /* renamed from: e */
    private void m33179e() {
        removeCallbacks(this.f3034h);
        removeCallbacks(this.f3035i);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m33179e();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m33179e();
    }
}
