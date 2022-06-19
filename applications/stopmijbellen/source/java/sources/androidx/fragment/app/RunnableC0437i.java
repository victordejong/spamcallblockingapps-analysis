package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
/* renamed from: androidx.fragment.app.i */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/i.class */
public class RunnableC0437i implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC0471r0 f1819a;

    /* renamed from: b */
    public final /* synthetic */ View f1820b;

    /* renamed from: c */
    public final /* synthetic */ Rect f1821c;

    public RunnableC0437i(C0416c c0416c, AbstractC0471r0 abstractC0471r0, View view, Rect rect) {
        this.f1819a = abstractC0471r0;
        this.f1820b = view;
        this.f1821c = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1819a.m8067j(this.f1820b, this.f1821c);
    }
}
