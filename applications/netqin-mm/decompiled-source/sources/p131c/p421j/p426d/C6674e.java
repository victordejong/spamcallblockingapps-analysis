package p131c.p421j.p426d;

import android.app.Activity;
import android.os.Handler;
import android.os.SystemClock;
import com.android.volley.toolbox.BasicNetwork;
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.AdRendererRegistry;
import com.mopub.nativeads.MoPubAdRenderer;
import com.mopub.nativeads.MoPubNative;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.RequestParameters;
import java.util.ArrayList;
import java.util.List;
/* renamed from: c.j.d.e */
/* loaded from: classes2-dex2jar.jar:c/j/d/e.class */
public class C6674e {
    @VisibleForTesting

    /* renamed from: m */
    public static final int[] f20599m = {1000, BasicNetwork.SLOW_REQUEST_THRESHOLD_MS, 5000, 25000, 60000, 300000};

    /* renamed from: a */
    public final List<C6687l<NativeAd>> f20600a;

    /* renamed from: b */
    public final Handler f20601b;

    /* renamed from: c */
    public final Runnable f20602c;

    /* renamed from: d */
    public final MoPubNative.MoPubNativeNetworkListener f20603d;
    @VisibleForTesting

    /* renamed from: e */
    public boolean f20604e;
    @VisibleForTesting

    /* renamed from: f */
    public boolean f20605f;
    @VisibleForTesting

    /* renamed from: g */
    public int f20606g;
    @VisibleForTesting

    /* renamed from: h */
    public int f20607h;

    /* renamed from: i */
    public AbstractC6677c f20608i;

    /* renamed from: j */
    public RequestParameters f20609j;

    /* renamed from: k */
    public MoPubNative f20610k;

    /* renamed from: l */
    public final AdRendererRegistry f20611l;

    /* renamed from: c.j.d.e$a */
    /* loaded from: classes2-dex2jar.jar:c/j/d/e$a.class */
    public class RunnableC6675a implements Runnable {
        public RunnableC6675a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C6674e eVar = C6674e.this;
            eVar.f20605f = false;
            eVar.m20087e();
        }
    }

    /* renamed from: c.j.d.e$b */
    /* loaded from: classes2-dex2jar.jar:c/j/d/e$b.class */
    public class C6676b implements MoPubNative.MoPubNativeNetworkListener {
        public C6676b() {
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeFail(NativeErrorCode nativeErrorCode) {
            C6674e eVar = C6674e.this;
            eVar.f20604e = false;
            if (eVar.f20607h >= C6674e.f20599m.length - 1) {
                eVar.m20085f();
                return;
            }
            eVar.m20084g();
            C6674e eVar2 = C6674e.this;
            eVar2.f20605f = true;
            eVar2.f20601b.postDelayed(C6674e.this.f20602c, C6674e.this.m20089d());
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeLoad(NativeAd nativeAd) {
            if (C6674e.this.f20610k != null) {
                C6674e eVar = C6674e.this;
                eVar.f20604e = false;
                eVar.f20606g++;
                eVar.m20085f();
                C6674e.this.f20600a.add(new C6687l(nativeAd));
                if (C6674e.this.f20600a.size() == 1 && C6674e.this.f20608i != null) {
                    C6674e.this.f20608i.onAdsAvailable();
                }
                C6674e.this.m20087e();
            }
        }
    }

    /* renamed from: c.j.d.e$c */
    /* loaded from: classes2-dex2jar.jar:c/j/d/e$c.class */
    public interface AbstractC6677c {
        void onAdsAvailable();
    }

    public C6674e() {
        this(new ArrayList(1), new Handler(), new AdRendererRegistry());
    }

    @VisibleForTesting
    public C6674e(List<C6687l<NativeAd>> list, Handler handler, AdRendererRegistry adRendererRegistry) {
        this.f20600a = list;
        this.f20601b = handler;
        this.f20602c = new RunnableC6675a();
        this.f20611l = adRendererRegistry;
        this.f20603d = new C6676b();
        this.f20606g = 0;
        m20085f();
    }

    /* renamed from: a */
    public void m20099a() {
        MoPubNative moPubNative = this.f20610k;
        if (moPubNative != null) {
            moPubNative.destroy();
            this.f20610k = null;
        }
        this.f20609j = null;
        for (C6687l<NativeAd> lVar : this.f20600a) {
            lVar.f20649a.destroy();
        }
        this.f20600a.clear();
        this.f20601b.removeMessages(0);
        this.f20604e = false;
        this.f20606g = 0;
        m20085f();
    }

    /* renamed from: a */
    public void m20098a(Activity activity, String str, RequestParameters requestParameters) {
        m20094a(requestParameters, new MoPubNative(activity, str, this.f20603d));
    }

    /* renamed from: a */
    public void m20097a(AbstractC6677c cVar) {
        this.f20608i = cVar;
    }

    /* renamed from: a */
    public void m20095a(MoPubAdRenderer moPubAdRenderer) {
        this.f20611l.registerAdRenderer(moPubAdRenderer);
        MoPubNative moPubNative = this.f20610k;
        if (moPubNative != null) {
            moPubNative.registerAdRenderer(moPubAdRenderer);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m20094a(RequestParameters requestParameters, MoPubNative moPubNative) {
        m20099a();
        for (MoPubAdRenderer moPubAdRenderer : this.f20611l.getRendererIterable()) {
            moPubNative.registerAdRenderer(moPubAdRenderer);
        }
        this.f20609j = requestParameters;
        this.f20610k = moPubNative;
        m20087e();
    }

    /* renamed from: b */
    public NativeAd m20093b() {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (!this.f20604e && !this.f20605f) {
            this.f20601b.post(this.f20602c);
        }
        while (!this.f20600a.isEmpty()) {
            C6687l<NativeAd> remove = this.f20600a.remove(0);
            if (uptimeMillis - remove.f20650b < 14400000) {
                return remove.f20649a;
            }
        }
        return null;
    }

    /* renamed from: c */
    public int m20091c() {
        return this.f20611l.getAdRendererCount();
    }

    @VisibleForTesting
    /* renamed from: d */
    public int m20089d() {
        int i = this.f20607h;
        int[] iArr = f20599m;
        if (i >= iArr.length) {
            this.f20607h = iArr.length - 1;
        }
        return f20599m[this.f20607h];
    }

    @VisibleForTesting
    /* renamed from: e */
    public void m20087e() {
        if (!this.f20604e && this.f20610k != null && this.f20600a.size() < 1) {
            this.f20604e = true;
            this.f20610k.makeRequest(this.f20609j, Integer.valueOf(this.f20606g));
        }
    }

    @VisibleForTesting
    /* renamed from: f */
    public void m20085f() {
        this.f20607h = 0;
    }

    @VisibleForTesting
    /* renamed from: g */
    public void m20084g() {
        int i = this.f20607h;
        if (i < f20599m.length - 1) {
            this.f20607h = i + 1;
        }
    }

    public MoPubAdRenderer getAdRendererForViewType(int i) {
        return this.f20611l.getRendererForViewType(i);
    }

    public int getViewTypeForAd(NativeAd nativeAd) {
        return this.f20611l.getViewTypeForAd(nativeAd);
    }
}
