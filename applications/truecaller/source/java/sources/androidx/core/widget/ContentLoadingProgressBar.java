package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.core.widget.ContentLoadingProgressBar;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/ContentLoadingProgressBar.class */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: a */
    public long f705a = -1;

    /* renamed from: b */
    public boolean f706b = false;

    /* renamed from: c */
    public boolean f707c = false;

    /* renamed from: d */
    public boolean f708d = false;

    /* renamed from: e */
    public final Runnable f709e = new Runnable() { // from class: n3.k.j.a
        @Override // java.lang.Runnable
        public final void run() {
            ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
            contentLoadingProgressBar.f706b = false;
            contentLoadingProgressBar.f705a = -1L;
            contentLoadingProgressBar.setVisibility(8);
        }
    };

    /* renamed from: f */
    public final Runnable f710f = new Runnable() { // from class: n3.k.j.c
        @Override // java.lang.Runnable
        public final void run() {
            ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
            contentLoadingProgressBar.f707c = false;
            if (!contentLoadingProgressBar.f708d) {
                contentLoadingProgressBar.f705a = System.currentTimeMillis();
                contentLoadingProgressBar.setVisibility(0);
            }
        }
    };

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        removeCallbacks(this.f709e);
        removeCallbacks(this.f710f);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f709e);
        removeCallbacks(this.f710f);
    }
}
