package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/ContentLoadingProgressBar.class */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: a */
    long f3793a;

    /* renamed from: b */
    boolean f3794b;

    /* renamed from: c */
    boolean f3795c;

    /* renamed from: d */
    boolean f3796d;

    /* renamed from: e */
    private final Runnable f3797e;

    /* renamed from: f */
    private final Runnable f3798f;

    public ContentLoadingProgressBar(Context context) {
        this(context, null);
    }

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f3793a = -1L;
        this.f3794b = false;
        this.f3795c = false;
        this.f3796d = false;
        this.f3797e = new Runnable() { // from class: androidx.core.widget.ContentLoadingProgressBar.1
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.f3794b = false;
                ContentLoadingProgressBar.this.f3793a = -1L;
                ContentLoadingProgressBar.this.setVisibility(8);
            }
        };
        this.f3798f = new Runnable() { // from class: androidx.core.widget.ContentLoadingProgressBar.2
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.f3795c = false;
                if (!ContentLoadingProgressBar.this.f3796d) {
                    ContentLoadingProgressBar.this.f3793a = System.currentTimeMillis();
                    ContentLoadingProgressBar.this.setVisibility(0);
                }
            }
        };
    }

    /* renamed from: a */
    private void m44036a() {
        removeCallbacks(this.f3797e);
        removeCallbacks(this.f3798f);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m44036a();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m44036a();
    }
}
