package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/ContentLoadingProgressBar.class */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: a */
    public long f797a;

    /* renamed from: b */
    public boolean f798b;

    /* renamed from: c */
    public boolean f799c;

    /* renamed from: d */
    public boolean f800d;

    /* renamed from: f */
    public final Runnable f801f;

    /* renamed from: g */
    public final Runnable f802g;

    /* renamed from: androidx.core.widget.ContentLoadingProgressBar$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/ContentLoadingProgressBar$a.class */
    public class RunnableC0103a implements Runnable {
        public RunnableC0103a() {
            ContentLoadingProgressBar.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
            contentLoadingProgressBar.f798b = false;
            contentLoadingProgressBar.f797a = -1L;
            contentLoadingProgressBar.setVisibility(8);
        }
    }

    /* renamed from: androidx.core.widget.ContentLoadingProgressBar$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/ContentLoadingProgressBar$b.class */
    public class RunnableC0104b implements Runnable {
        public RunnableC0104b() {
            ContentLoadingProgressBar.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
            contentLoadingProgressBar.f799c = false;
            if (!contentLoadingProgressBar.f800d) {
                contentLoadingProgressBar.f797a = System.currentTimeMillis();
                ContentLoadingProgressBar.this.setVisibility(0);
            }
        }
    }

    public ContentLoadingProgressBar(Context context) {
        this(context, null);
    }

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f800d = false;
        this.f801f = new RunnableC0103a();
        this.f802g = new RunnableC0104b();
    }

    /* renamed from: a */
    public final void m6780a() {
        removeCallbacks(this.f801f);
        removeCallbacks(this.f802g);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m6780a();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m6780a();
    }
}
