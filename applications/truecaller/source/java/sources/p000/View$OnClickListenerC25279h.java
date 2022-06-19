package p000;

import android.view.View;
import p193e.p194a.p195a.p200c.C5174c3;
import p193e.p194a.p195a.p200c.ViewTreeObserver$OnPreDrawListenerC5184d;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j;
/* renamed from: h */
/* loaded from: classes2-dex2jar.jar:h.class */
public final class View$OnClickListenerC25279h implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f70719a;

    /* renamed from: b */
    public final /* synthetic */ Object f70720b;

    /* renamed from: c */
    public final /* synthetic */ Object f70721c;

    public View$OnClickListenerC25279h(int i, Object obj, Object obj2) {
        this.f70719a = i;
        this.f70720b = obj;
        this.f70721c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f70719a;
        if (i == 0) {
            AbstractC5418j abstractC5418j = ((ViewTreeObserver$OnPreDrawListenerC5184d) this.f70720b).f17817i0;
            C5174c3 c5174c3 = (C5174c3) this.f70721c;
            abstractC5418j.mo33151q0(c5174c3.f17688c, c5174c3.f17689d);
        } else if (i == 1) {
            AbstractC5418j abstractC5418j2 = ((ViewTreeObserver$OnPreDrawListenerC5184d) this.f70720b).f17817i0;
            C5174c3 c5174c32 = (C5174c3) this.f70721c;
            abstractC5418j2.mo33151q0(c5174c32.f17688c, c5174c32.f17689d);
        } else if (i == 2) {
            AbstractC5418j abstractC5418j3 = ((ViewTreeObserver$OnPreDrawListenerC5184d) this.f70720b).f17817i0;
            C5174c3 c5174c33 = (C5174c3) this.f70721c;
            abstractC5418j3.mo33148z0(c5174c33.f17688c, c5174c33.f17689d);
        } else if (i == 3) {
            AbstractC5418j abstractC5418j4 = ((ViewTreeObserver$OnPreDrawListenerC5184d) this.f70720b).f17817i0;
            C5174c3 c5174c34 = (C5174c3) this.f70721c;
            abstractC5418j4.mo33159h1(c5174c34.f17689d, c5174c34.f17688c);
        } else if (i != 4) {
            throw null;
        } else {
            AbstractC5418j abstractC5418j5 = ((ViewTreeObserver$OnPreDrawListenerC5184d) this.f70720b).f17817i0;
            C5174c3 c5174c35 = (C5174c3) this.f70721c;
            abstractC5418j5.mo33159h1(c5174c35.f17689d, c5174c35.f17688c);
        }
    }
}
