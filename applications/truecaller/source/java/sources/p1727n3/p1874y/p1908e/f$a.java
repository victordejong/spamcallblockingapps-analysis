package p1727n3.p1874y.p1908e;

import android.view.accessibility.CaptioningManager;
/* renamed from: n3.y.e.f$a */
/* loaded from: classes-dex2jar.jar:n3/y/e/f$a.class */
public class f$a extends CaptioningManager.CaptioningChangeListener {

    /* renamed from: a */
    public final /* synthetic */ f f77531a;

    public f$a(f fVar) {
        this.f77531a = fVar;
    }

    @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
    public void onFontScaleChanged(float f) {
        this.f77531a.e.m157b(f);
    }

    @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
    public void onUserStyleChanged(CaptioningManager.CaptionStyle captionStyle) {
        this.f77531a.c = new C27497a(captionStyle);
        f fVar = this.f77531a;
        fVar.e.m158a(fVar.c);
    }
}
