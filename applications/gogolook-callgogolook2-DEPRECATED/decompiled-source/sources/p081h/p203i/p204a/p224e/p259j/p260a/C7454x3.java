package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.android.gms.ads.AdListener;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.x3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/x3.class */
public class C7454x3 extends AdListener {

    /* renamed from: a */
    public final Object f17531a = new Object();

    /* renamed from: b */
    public AdListener f17532b;

    /* renamed from: a */
    public final void m20565a(AdListener adListener) {
        synchronized (this.f17531a) {
            this.f17532b = adListener;
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClosed() {
        synchronized (this.f17531a) {
            if (this.f17532b != null) {
                this.f17532b.onAdClosed();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(int i) {
        synchronized (this.f17531a) {
            if (this.f17532b != null) {
                this.f17532b.onAdFailedToLoad(i);
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLeftApplication() {
        synchronized (this.f17531a) {
            if (this.f17532b != null) {
                this.f17532b.onAdLeftApplication();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdLoaded() {
        synchronized (this.f17531a) {
            if (this.f17532b != null) {
                this.f17532b.onAdLoaded();
            }
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdOpened() {
        synchronized (this.f17531a) {
            if (this.f17532b != null) {
                this.f17532b.onAdOpened();
            }
        }
    }
}
