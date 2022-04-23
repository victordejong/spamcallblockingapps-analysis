package p131c.p161d.p170b.p224d.p252g.p253a;

import android.view.View;
import com.google.android.gms.internal.ads.zzawl;
import com.google.android.gms.internal.ads.zzbib;
/* renamed from: c.d.b.d.g.a.ca */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ca.class */
public final class View$OnAttachStateChangeListenerC3427ca implements View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final /* synthetic */ zzawl f12535a;

    /* renamed from: b */
    public final /* synthetic */ zzbib f12536b;

    public View$OnAttachStateChangeListenerC3427ca(zzbib zzbibVar, zzawl zzawlVar) {
        this.f12536b = zzbibVar;
        this.f12535a = zzawlVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f12536b.m15496a(view, this.f12535a, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
