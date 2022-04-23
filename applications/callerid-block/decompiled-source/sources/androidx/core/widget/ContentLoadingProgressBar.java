package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/ContentLoadingProgressBar.class */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: b */
    long f1696b;

    /* renamed from: c */
    boolean f1697c;

    /* renamed from: d */
    boolean f1698d;

    /* renamed from: e */
    boolean f1699e;

    /* renamed from: f */
    private final Runnable f1700f;

    /* renamed from: g */
    private final Runnable f1701g;

    /* renamed from: androidx.core.widget.ContentLoadingProgressBar$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/ContentLoadingProgressBar$a.class */
    class RunnableC0287a implements Runnable {
        RunnableC0287a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
            contentLoadingProgressBar.f1697c = false;
            contentLoadingProgressBar.f1696b = -1L;
            contentLoadingProgressBar.setVisibility(8);
        }
    }

    /* renamed from: androidx.core.widget.ContentLoadingProgressBar$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/widget/ContentLoadingProgressBar$b.class */
    class RunnableC0288b implements Runnable {
        RunnableC0288b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
            contentLoadingProgressBar.f1698d = false;
            if (!contentLoadingProgressBar.f1699e) {
                contentLoadingProgressBar.f1696b = System.currentTimeMillis();
                ContentLoadingProgressBar.this.setVisibility(0);
            }
        }
    }

    public ContentLoadingProgressBar(Context context) {
        this(context, null);
    }

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1699e = false;
        this.f1700f = new RunnableC0287a();
        this.f1701g = new RunnableC0288b();
    }

    /* renamed from: a */
    private void m13457a() {
        removeCallbacks(this.f1700f);
        removeCallbacks(this.f1701g);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m13457a();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m13457a();
    }
}
