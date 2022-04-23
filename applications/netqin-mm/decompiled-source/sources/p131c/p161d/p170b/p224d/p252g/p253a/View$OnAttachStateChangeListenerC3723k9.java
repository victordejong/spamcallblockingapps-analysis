package p131c.p161d.p170b.p224d.p252g.p253a;

import android.view.View;
import com.google.android.gms.internal.ads.zzawl;
import com.google.android.gms.internal.ads.zzbgi;
/* renamed from: c.d.b.d.g.a.k9 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/k9.class */
public final class View$OnAttachStateChangeListenerC3723k9 implements View.OnAttachStateChangeListener {

    /* renamed from: a */
    public final /* synthetic */ zzawl f13845a;

    /* renamed from: b */
    public final /* synthetic */ zzbgi f13846b;

    public View$OnAttachStateChangeListenerC3723k9(zzbgi zzbgiVar, zzawl zzawlVar) {
        this.f13846b = zzbgiVar;
        this.f13845a = zzawlVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f13846b.m15634a(view, this.f13845a, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
