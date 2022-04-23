package p131c.p396i.p397a.p406i.p411f.p412h;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdView;
import com.library.p518ad.core.BaseAdResult;
import p131c.p396i.p397a.p398e.AbstractC6515g;
import p131c.p396i.p397a.p406i.p411f.AbstractC6578a;
/* renamed from: c.i.a.i.f.h.b */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/h/b.class */
public class View$OnAttachStateChangeListenerC6592b extends AbstractC6578a<AdView> implements View.OnAttachStateChangeListener {
    public View$OnAttachStateChangeListenerC6592b(BaseAdResult baseAdResult) {
        super(baseAdResult);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public boolean mo20392a(ViewGroup viewGroup, AdView adView) {
        adView.setAdListener(new C6591a(this, adView.getAdListener(), this.f20385b, this.f20386c));
        viewGroup.removeView(adView);
        if (adView.getParent() != null) {
            ((ViewGroup) adView.getParent()).removeView(adView);
        }
        adView.addOnAttachStateChangeListener(this);
        viewGroup.addView(adView);
        adView.m18121c();
        mo20446a();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        AbstractC6515g gVar = this.f20386c;
        if (gVar != null) {
            gVar.mo3230d(this.f20385b, 0);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        if (this.f20386c != null) {
            view.removeOnAttachStateChangeListener(this);
            this.f20386c.mo3231b(this.f20385b, 0);
        }
    }
}
