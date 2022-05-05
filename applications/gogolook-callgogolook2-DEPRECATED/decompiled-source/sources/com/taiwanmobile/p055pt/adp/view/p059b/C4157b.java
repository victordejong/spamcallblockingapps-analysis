package com.taiwanmobile.p055pt.adp.view.p059b;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import java.lang.ref.WeakReference;
/* renamed from: com.taiwanmobile.pt.adp.view.b.b */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/b/b.class */
public class C4157b {

    /* renamed from: a */
    public final WeakReference<Activity> f9954a;

    /* renamed from: b */
    public View f9955b;

    /* renamed from: c */
    public int f9956c;

    /* renamed from: d */
    public FrameLayout.LayoutParams f9957d;

    /* renamed from: e */
    public boolean f9958e;

    /* renamed from: f */
    public boolean f9959f;

    public C4157b(Activity activity) {
        boolean z = false;
        this.f9958e = false;
        this.f9959f = false;
        this.f9954a = new WeakReference<>(activity);
        this.f9955b = ((FrameLayout) activity.findViewById(16908290)).getChildAt(0);
        this.f9955b.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.taiwanmobile.pt.adp.view.b.b.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                C4157b.this.m29500a();
            }
        });
        this.f9957d = (FrameLayout.LayoutParams) this.f9955b.getLayoutParams();
        this.f9958e = this.f9957d.height == -1;
        this.f9959f = this.f9957d.height == -2 ? true : z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29500a() {
        int b = m29497b();
        if (b != this.f9956c) {
            int height = this.f9955b.getRootView().getHeight();
            int i = height - b;
            if (i > height / 4) {
                this.f9957d.height = height - i;
                new Handler().postDelayed(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.b.b.2
                    @Override // java.lang.Runnable
                    public void run() {
                        C4157b.this.f9955b.requestLayout();
                    }
                }, 300L);
            } else {
                if (this.f9958e) {
                    this.f9957d.height = -1;
                } else if (this.f9959f) {
                    this.f9957d.height = -2;
                } else {
                    this.f9957d.height = height;
                }
                this.f9955b.requestLayout();
            }
            this.f9956c = b;
        }
    }

    /* renamed from: a */
    public static void m29499a(Activity activity) {
        new C4157b(activity);
    }

    /* renamed from: b */
    private int m29497b() {
        Rect rect = new Rect();
        this.f9955b.getWindowVisibleDisplayFrame(rect);
        return rect.bottom - rect.top;
    }
}
