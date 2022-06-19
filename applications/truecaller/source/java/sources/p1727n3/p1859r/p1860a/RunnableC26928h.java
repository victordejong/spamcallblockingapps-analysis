package p1727n3.p1859r.p1860a;

import android.graphics.Rect;
import android.view.View;
/* renamed from: n3.r.a.h */
/* loaded from: classes-dex2jar.jar:n3/r/a/h.class */
public class RunnableC26928h implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC26949o0 f75348a;

    /* renamed from: b */
    public final /* synthetic */ View f75349b;

    /* renamed from: c */
    public final /* synthetic */ Rect f75350c;

    public RunnableC26928h(C26909b c26909b, AbstractC26949o0 abstractC26949o0, View view, Rect rect) {
        this.f75348a = abstractC26949o0;
        this.f75349b = view;
        this.f75350c = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f75348a.m1088j(this.f75349b, this.f75350c);
    }
}
