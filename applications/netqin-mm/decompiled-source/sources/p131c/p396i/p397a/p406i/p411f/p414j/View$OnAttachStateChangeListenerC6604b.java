package p131c.p396i.p397a.p406i.p411f.p414j;

import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdView;
import com.library.p518ad.core.BaseAdResult;
import p131c.p396i.p397a.p398e.AbstractC6515g;
import p131c.p396i.p397a.p406i.p411f.AbstractC6578a;
import p131c.p396i.p397a.p417j.C6617d;
/* renamed from: c.i.a.i.f.j.b */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/j/b.class */
public class View$OnAttachStateChangeListenerC6604b extends AbstractC6578a<AdView> implements View.OnAttachStateChangeListener {

    /* renamed from: e */
    public AdView f20414e;

    public View$OnAttachStateChangeListenerC6604b(BaseAdResult baseAdResult) {
        super(baseAdResult);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public boolean mo20392a(ViewGroup viewGroup, AdView adView) {
        this.f20414e = adView;
        this.f20414e.setAdListener(new C6603a(this, (AdListener) C6617d.m20353a(adView, AdListener.class), this.f20384a.m5320b(), this.f20384a.m5331a()));
        viewGroup.removeView(this.f20414e);
        this.f20414e.addOnAttachStateChangeListener(this);
        if (this.f20414e.getParent() != null) {
            ((ViewGroup) this.f20414e.getParent()).removeView(this.f20414e);
        }
        viewGroup.addView(this.f20414e);
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
        String str = "onViewDetachedFromWindow:" + view;
        if (this.f20386c != null) {
            view.removeOnAttachStateChangeListener(this);
            this.f20386c.mo3231b(this.f20385b, 0);
        }
    }
}
