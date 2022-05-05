package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
/* renamed from: h.i.a.e.j.a.t9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/t9.class */
public final class RunnableC7412t9 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ PublisherAdView f17469a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC7322m4 f17470b;

    /* renamed from: c */
    public final /* synthetic */ BinderC7400s9 f17471c;

    public RunnableC7412t9(BinderC7400s9 s9Var, PublisherAdView publisherAdView, AbstractC7322m4 m4Var) {
        this.f17471c = s9Var;
        this.f17469a = publisherAdView;
        this.f17470b = m4Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener;
        if (this.f17469a.zza(this.f17470b)) {
            onPublisherAdViewLoadedListener = this.f17471c.f17454a;
            onPublisherAdViewLoadedListener.onPublisherAdViewLoaded(this.f17469a);
            return;
        }
        C7452x1.m20568d("Could not bind.");
    }
}
