package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/core/widget/ContentLoadingProgressBar.class */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: f */
    long f3391f;

    /* renamed from: g */
    boolean f3392g;

    /* renamed from: h */
    boolean f3393h;

    /* renamed from: i */
    boolean f3394i;

    /* renamed from: j */
    private final Runnable f3395j;

    /* renamed from: k */
    private final Runnable f3396k;

    public ContentLoadingProgressBar(@NonNull Context context) {
        this(context, null);
    }

    public ContentLoadingProgressBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f3394i = false;
        this.f3395j = new Runnable() { // from class: androidx.core.widget.ContentLoadingProgressBar.1
            @Override // java.lang.Runnable
            public void run() {
                ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
                contentLoadingProgressBar.f3392g = false;
                contentLoadingProgressBar.f3391f = -1L;
                contentLoadingProgressBar.setVisibility(8);
            }
        };
        this.f3396k = new Runnable() { // from class: androidx.core.widget.ContentLoadingProgressBar.2
            @Override // java.lang.Runnable
            public void run() {
                ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
                contentLoadingProgressBar.f3393h = false;
                if (!contentLoadingProgressBar.f3394i) {
                    contentLoadingProgressBar.f3391f = System.currentTimeMillis();
                    ContentLoadingProgressBar.this.setVisibility(0);
                }
            }
        };
    }

    /* renamed from: a */
    private void m18909a() {
        removeCallbacks(this.f3395j);
        removeCallbacks(this.f3396k);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m18909a();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m18909a();
    }
}
