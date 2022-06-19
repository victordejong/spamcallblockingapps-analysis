package p000;

import android.app.Activity;
import android.os.Handler;
import android.os.SystemClock;
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.AdRendererRegistry;
import com.mopub.nativeads.MoPubAdRenderer;
import com.mopub.nativeads.MoPubNative;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.RequestParameters;
import java.util.ArrayList;
import java.util.List;
/* renamed from: wh1 */
/* loaded from: classes3-dex2jar.jar:wh1.class */
public class wh1 {
    @VisibleForTesting

    /* renamed from: m */
    public static final int[] f8554m = {1000, 3000, 5000, 25000, 60000, 300000};

    /* renamed from: a */
    public final List<ei1<NativeAd>> f8555a;

    /* renamed from: b */
    public final Handler f8556b;

    /* renamed from: c */
    public final Runnable f8557c;

    /* renamed from: d */
    public final MoPubNative.MoPubNativeNetworkListener f8558d;
    @VisibleForTesting

    /* renamed from: e */
    public boolean f8559e;
    @VisibleForTesting

    /* renamed from: f */
    public boolean f8560f;
    @VisibleForTesting

    /* renamed from: g */
    public int f8561g;
    @VisibleForTesting

    /* renamed from: h */
    public int f8562h;

    /* renamed from: i */
    public AbstractC1716c f8563i;

    /* renamed from: j */
    public RequestParameters f8564j;

    /* renamed from: k */
    public MoPubNative f8565k;

    /* renamed from: l */
    public final AdRendererRegistry f8566l;

    /* renamed from: wh1$a */
    /* loaded from: classes3-dex2jar.jar:wh1$a.class */
    public class RunnableC1714a implements Runnable {
        public RunnableC1714a() {
            wh1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            wh1 wh1Var = wh1.this;
            wh1Var.f8560f = false;
            wh1Var.m243m();
        }
    }

    /* renamed from: wh1$b */
    /* loaded from: classes3-dex2jar.jar:wh1$b.class */
    public class C1715b implements MoPubNative.MoPubNativeNetworkListener {
        public C1715b() {
            wh1.this = r4;
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeFail(NativeErrorCode nativeErrorCode) {
            wh1 wh1Var = wh1.this;
            wh1Var.f8559e = false;
            if (wh1Var.f8562h >= wh1.f8554m.length - 1) {
                wh1Var.m242n();
                return;
            }
            wh1Var.m240p();
            wh1 wh1Var2 = wh1.this;
            wh1Var2.f8560f = true;
            wh1Var2.f8556b.postDelayed(wh1.this.f8557c, wh1.this.m247i());
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeLoad(NativeAd nativeAd) {
            if (wh1.this.f8565k == null) {
                return;
            }
            wh1 wh1Var = wh1.this;
            wh1Var.f8559e = false;
            wh1Var.f8561g++;
            wh1Var.m242n();
            wh1.this.f8555a.add(new ei1(nativeAd));
            if (wh1.this.f8555a.size() == 1 && wh1.this.f8563i != null) {
                wh1.this.f8563i.onAdsAvailable();
            }
            wh1.this.m243m();
        }
    }

    /* renamed from: wh1$c */
    /* loaded from: classes3-dex2jar.jar:wh1$c.class */
    public interface AbstractC1716c {
        void onAdsAvailable();
    }

    public wh1() {
        this(new ArrayList(1), new Handler(), new AdRendererRegistry());
    }

    @VisibleForTesting
    public wh1(List<ei1<NativeAd>> list, Handler handler, AdRendererRegistry adRendererRegistry) {
        this.f8555a = list;
        this.f8556b = handler;
        this.f8557c = new RunnableC1714a();
        this.f8566l = adRendererRegistry;
        this.f8558d = new C1715b();
        this.f8561g = 0;
        m242n();
    }

    /* renamed from: f */
    public void m250f() {
        MoPubNative moPubNative = this.f8565k;
        if (moPubNative != null) {
            moPubNative.destroy();
            this.f8565k = null;
        }
        this.f8564j = null;
        for (ei1<NativeAd> ei1Var : this.f8555a) {
            ei1Var.f6352a.destroy();
        }
        this.f8555a.clear();
        this.f8556b.removeMessages(0);
        this.f8559e = false;
        this.f8561g = 0;
        m242n();
    }

    /* renamed from: g */
    public NativeAd m249g() {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (!this.f8559e && !this.f8560f) {
            this.f8556b.post(this.f8557c);
        }
        while (!this.f8555a.isEmpty()) {
            ei1<NativeAd> remove = this.f8555a.remove(0);
            if (uptimeMillis - remove.f6353b < 14400000) {
                return remove.f6352a;
            }
        }
        return null;
    }

    public MoPubAdRenderer getAdRendererForViewType(int i) {
        return this.f8566l.getRendererForViewType(i);
    }

    public int getViewTypeForAd(NativeAd nativeAd) {
        return this.f8566l.getViewTypeForAd(nativeAd);
    }

    /* renamed from: h */
    public int m248h() {
        return this.f8566l.getAdRendererCount();
    }

    @VisibleForTesting
    /* renamed from: i */
    public int m247i() {
        int i = this.f8562h;
        int[] iArr = f8554m;
        if (i >= iArr.length) {
            this.f8562h = iArr.length - 1;
        }
        return iArr[this.f8562h];
    }

    /* renamed from: j */
    public void m246j(Activity activity, String str, RequestParameters requestParameters) {
        m245k(requestParameters, new MoPubNative(activity, str, this.f8558d));
    }

    @VisibleForTesting
    /* renamed from: k */
    public void m245k(RequestParameters requestParameters, MoPubNative moPubNative) {
        m250f();
        for (MoPubAdRenderer moPubAdRenderer : this.f8566l.getRendererIterable()) {
            moPubNative.registerAdRenderer(moPubAdRenderer);
        }
        this.f8564j = requestParameters;
        this.f8565k = moPubNative;
        m243m();
    }

    /* renamed from: l */
    public void m244l(MoPubAdRenderer moPubAdRenderer) {
        this.f8566l.registerAdRenderer(moPubAdRenderer);
        MoPubNative moPubNative = this.f8565k;
        if (moPubNative != null) {
            moPubNative.registerAdRenderer(moPubAdRenderer);
        }
    }

    @VisibleForTesting
    /* renamed from: m */
    public void m243m() {
        if (this.f8559e || this.f8565k == null || this.f8555a.size() >= 1) {
            return;
        }
        this.f8559e = true;
        this.f8565k.makeRequest(this.f8564j, Integer.valueOf(this.f8561g));
    }

    @VisibleForTesting
    /* renamed from: n */
    public void m242n() {
        this.f8562h = 0;
    }

    /* renamed from: o */
    public void m241o(AbstractC1716c abstractC1716c) {
        this.f8563i = abstractC1716c;
    }

    @VisibleForTesting
    /* renamed from: p */
    public void m240p() {
        int i = this.f8562h;
        if (i < f8554m.length - 1) {
            this.f8562h = i + 1;
        }
    }
}
