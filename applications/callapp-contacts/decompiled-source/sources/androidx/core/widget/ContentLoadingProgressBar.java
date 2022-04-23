package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/ContentLoadingProgressBar.class */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: a  reason: collision with root package name */
    long f2039a;

    /* renamed from: b  reason: collision with root package name */
    boolean f2040b;

    /* renamed from: c  reason: collision with root package name */
    boolean f2041c;

    /* renamed from: d  reason: collision with root package name */
    boolean f2042d;
    private final Runnable e;
    private final Runnable f;

    public ContentLoadingProgressBar(Context context) {
        this(context, null);
    }

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f2039a = -1L;
        this.f2040b = false;
        this.f2041c = false;
        this.f2042d = false;
        this.e = new Runnable() { // from class: androidx.core.widget.ContentLoadingProgressBar.1
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.f2040b = false;
                ContentLoadingProgressBar.this.f2039a = -1L;
                ContentLoadingProgressBar.this.setVisibility(8);
            }
        };
        this.f = new Runnable() { // from class: androidx.core.widget.ContentLoadingProgressBar.2
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.f2041c = false;
                if (!ContentLoadingProgressBar.this.f2042d) {
                    ContentLoadingProgressBar.this.f2039a = System.currentTimeMillis();
                    ContentLoadingProgressBar.this.setVisibility(0);
                }
            }
        };
    }

    private void a() {
        removeCallbacks(this.e);
        removeCallbacks(this.f);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }
}
