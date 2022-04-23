package p131c.p396i.p397a.p406i.p411f.p415k;

import android.view.View;
import android.view.ViewGroup;
import com.library.p518ad.core.BaseAdResult;
import com.mopub.mobileads.DefaultBannerAdListener;
import com.mopub.mobileads.MoPubView;
import p131c.p396i.p397a.p406i.p411f.AbstractC6578a;
/* renamed from: c.i.a.i.f.k.a */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/f/k/a.class */
public class View$OnAttachStateChangeListenerC6607a extends AbstractC6578a<MoPubView> implements View.OnAttachStateChangeListener {

    /* renamed from: e */
    public MoPubView f20419e;

    /* renamed from: c.i.a.i.f.k.a$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/f/k/a$a.class */
    public class C6608a extends DefaultBannerAdListener {
        public C6608a() {
        }

        @Override // com.mopub.mobileads.DefaultBannerAdListener, com.mopub.mobileads.MoPubView.BannerAdListener
        public void onBannerClicked(MoPubView moPubView) {
            if (View$OnAttachStateChangeListenerC6607a.this.f20386c != null) {
                View$OnAttachStateChangeListenerC6607a.this.f20386c.mo3232a(View$OnAttachStateChangeListenerC6607a.this.f20385b, 0);
            }
        }
    }

    public View$OnAttachStateChangeListenerC6607a(BaseAdResult baseAdResult) {
        super(baseAdResult);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public boolean mo20392a(ViewGroup viewGroup, MoPubView moPubView) {
        this.f20419e = moPubView;
        moPubView.addOnAttachStateChangeListener(this);
        this.f20419e.setBannerAdListener(new C6608a());
        viewGroup.addView(this.f20419e);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        if (this.f20419e != null) {
            this.f20386c.mo3230d(this.f20385b, 0);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        MoPubView moPubView = this.f20419e;
        if (moPubView != null) {
            moPubView.removeOnAttachStateChangeListener(this);
            this.f20386c.mo3231b(this.f20385b, 0);
            this.f20419e.destroy();
        }
    }
}
