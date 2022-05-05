package com.flurry.android.ads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.flurry.sdk.AbstractC3344jl;
import com.flurry.sdk.AbstractRunnableC3447lc;
import com.flurry.sdk.C2772aa;
import com.flurry.sdk.C2921cr;
import com.flurry.sdk.C3010dx;
import com.flurry.sdk.C3156ge;
import com.flurry.sdk.C3324j;
import com.flurry.sdk.C3331jb;
import com.flurry.sdk.C3345jm;
import com.flurry.sdk.C3356jq;
import com.flurry.sdk.C3444l;
import com.flurry.sdk.C3484p;
import com.flurry.sdk.EnumC2873bh;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/flurry/android/ads/FlurryAdNative.class */
public final class FlurryAdNative {

    /* renamed from: a */
    public static final String f3870a = "FlurryAdNative";

    /* renamed from: c */
    public C2772aa f3872c;

    /* renamed from: d */
    public FlurryAdNativeListener f3873d;

    /* renamed from: b */
    public final List<FlurryAdNativeAsset> f3871b = new ArrayList();

    /* renamed from: e */
    public final AbstractC3344jl<C3324j> f3874e = new AbstractC3344jl<C3324j>() { // from class: com.flurry.android.ads.FlurryAdNative.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3324j jVar) {
            C3324j.EnumC3325a aVar;
            final C3324j jVar2 = jVar;
            if (jVar2.f5647a == FlurryAdNative.this.f3872c && (aVar = jVar2.f5648b) != null) {
                if (C3324j.EnumC3325a.kOnFetched.equals(aVar)) {
                    FlurryAdNative.m33722b(FlurryAdNative.this);
                }
                final FlurryAdNativeListener flurryAdNativeListener = FlurryAdNative.this.f3873d;
                if (flurryAdNativeListener != null) {
                    C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc() { // from class: com.flurry.android.ads.FlurryAdNative.1.1
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            switch (C27702.f3879a[jVar2.f5648b.ordinal()]) {
                                case 1:
                                    C3444l.m32473a().m32472a("nativeAdReady");
                                    flurryAdNativeListener.onFetched(FlurryAdNative.this);
                                    return;
                                case 2:
                                    if (jVar2.f5649c == EnumC2873bh.kUnfilled) {
                                        C3444l.m32473a().m32472a("nativeAdUnfilled");
                                    }
                                    flurryAdNativeListener.onError(FlurryAdNative.this, FlurryAdErrorType.FETCH, jVar2.f5649c.f4222z);
                                    return;
                                case 3:
                                    flurryAdNativeListener.onShowFullscreen(FlurryAdNative.this);
                                    return;
                                case 4:
                                    flurryAdNativeListener.onCloseFullscreen(FlurryAdNative.this);
                                    return;
                                case 5:
                                    flurryAdNativeListener.onAppExit(FlurryAdNative.this);
                                    return;
                                case 6:
                                    flurryAdNativeListener.onClicked(FlurryAdNative.this);
                                    return;
                                case 7:
                                    flurryAdNativeListener.onError(FlurryAdNative.this, FlurryAdErrorType.CLICK, jVar2.f5649c.f4222z);
                                    return;
                                case 8:
                                    flurryAdNativeListener.onImpressionLogged(FlurryAdNative.this);
                                    return;
                                case 9:
                                    flurryAdNativeListener.onExpanded(FlurryAdNative.this);
                                    return;
                                case 10:
                                    flurryAdNativeListener.onCollapsed(FlurryAdNative.this);
                                    return;
                                default:
                                    return;
                            }
                        }
                    });
                }
            }
        }
    };

    /* renamed from: com.flurry.android.ads.FlurryAdNative$2 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/android/ads/FlurryAdNative$2.class */
    public static final /* synthetic */ class C27702 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3879a = new int[C3324j.EnumC3325a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007d -> B:51:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0081 -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0085 -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0089 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008d -> B:49:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0091 -> B:43:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0095 -> B:39:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0099 -> B:33:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009d -> B:47:0x0070). Please submit an issue!!! */
        static {
            try {
                f3879a[C3324j.EnumC3325a.kOnFetched.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3879a[C3324j.EnumC3325a.kOnFetchFailed.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3879a[C3324j.EnumC3325a.kOnOpen.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3879a[C3324j.EnumC3325a.kOnClose.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3879a[C3324j.EnumC3325a.kOnAppExit.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f3879a[C3324j.EnumC3325a.kOnClicked.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f3879a[C3324j.EnumC3325a.kOnClickFailed.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f3879a[C3324j.EnumC3325a.kOnImpressionLogged.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f3879a[C3324j.EnumC3325a.kOnExpanded.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f3879a[C3324j.EnumC3325a.kOnCollapsed.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    public FlurryAdNative(Context context, String str) {
        if (C3331jb.m32681a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        } else if (context == null) {
            throw new IllegalArgumentException("Context cannot be null!");
        } else if (!TextUtils.isEmpty(str)) {
            try {
                if (C3484p.m32358a() != null) {
                    this.f3872c = new C2772aa(context, str);
                    String str2 = f3870a;
                    C3356jq.m32613a(str2, "NativeAdObject created: " + this.f3872c);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(1);
                    this.f3872c.f3886l = arrayList;
                    C3345jm.m32636a().m32632a("com.flurry.android.impl.ads.AdStateEvent", this.f3874e);
                    return;
                }
                throw new IllegalStateException("Could not find FlurryAds module. Please make sure the library is included.");
            } catch (Throwable th) {
                C3356jq.m32612a(f3870a, "Exception: ", th);
            }
        } else {
            throw new IllegalArgumentException("Ad space must be specified!");
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m33722b(FlurryAdNative flurryAdNative) {
        boolean z;
        boolean z2;
        if (flurryAdNative.f3872c != null) {
            Iterator<String> it = C3010dx.m33312d().iterator();
            while (true) {
                z = true;
                z = true;
                if (!it.hasNext()) {
                    z2 = true;
                    break;
                }
                String next = it.next();
                if (next != null && next.startsWith("Flurry_Mopub")) {
                    z2 = false;
                    break;
                }
            }
            if (z2) {
                synchronized (flurryAdNative.f3871b) {
                    Iterator<C2921cr> it2 = flurryAdNative.f3872c.m33720B().iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        C2921cr next2 = it2.next();
                        if (next2.f4515a.equals("showRating")) {
                            z = next2.f4517c.equals("true");
                            break;
                        }
                    }
                }
            }
            synchronized (flurryAdNative.f3871b) {
                for (C2921cr crVar : flurryAdNative.f3872c.m33720B()) {
                    if (!crVar.f4515a.equals("showRating") && (z || (!crVar.f4515a.equals("appRating") && !crVar.f4515a.equals("secRatingImg") && !crVar.f4515a.equals("secHqRatingIMg")))) {
                        flurryAdNative.f3871b.add(new FlurryAdNativeAsset(crVar, flurryAdNative.f3872c.f6058b));
                    }
                }
                new C3156ge().m32962e();
                int i = flurryAdNative.f3872c.mo32282e().getResources().getDisplayMetrics().densityDpi;
                if (i == 120 || i == 160) {
                    flurryAdNative.f3871b.add(new FlurryAdNativeAsset(C3156ge.m32966a("downArrowImage", "android/down_arrow.png"), flurryAdNative.f3872c.f6058b));
                    flurryAdNative.f3871b.add(new FlurryAdNativeAsset(C3156ge.m32966a("upArrowImage", "android/up_arrow.png"), flurryAdNative.f3872c.f6058b));
                } else if (i != 240) {
                    flurryAdNative.f3871b.add(new FlurryAdNativeAsset(C3156ge.m32966a("downArrowImage", "android/down_arrow3x.png"), flurryAdNative.f3872c.f6058b));
                    flurryAdNative.f3871b.add(new FlurryAdNativeAsset(C3156ge.m32966a("upArrowImage", "android/up_arrow3x.png"), flurryAdNative.f3872c.f6058b));
                } else {
                    flurryAdNative.f3871b.add(new FlurryAdNativeAsset(C3156ge.m32966a("downArrowImage", "android/down_arrow2x.png"), flurryAdNative.f3872c.f6058b));
                    flurryAdNative.f3871b.add(new FlurryAdNativeAsset(C3156ge.m32966a("upArrowImage", "android/up_arrow2x.png"), flurryAdNative.f3872c.f6058b));
                }
            }
        }
    }

    /* renamed from: a */
    public final FlurryAdNativeAsset m33724a() {
        boolean z;
        FlurryAdNativeAsset flurryAdNativeAsset;
        synchronized (this.f3871b) {
            Iterator<FlurryAdNativeAsset> it = this.f3871b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    flurryAdNativeAsset = null;
                    break;
                }
                flurryAdNativeAsset = it.next();
                if ("clickToCall".equals(flurryAdNativeAsset.getName())) {
                    z = true;
                    break;
                }
            }
        }
        FlurryAdNativeAsset flurryAdNativeAsset2 = flurryAdNativeAsset;
        if (!z) {
            synchronized (this.f3871b) {
                Iterator<FlurryAdNativeAsset> it2 = this.f3871b.iterator();
                do {
                    flurryAdNativeAsset2 = flurryAdNativeAsset;
                    if (!it2.hasNext()) {
                        break;
                    }
                    flurryAdNativeAsset2 = it2.next();
                } while (!"callToAction".equals(flurryAdNativeAsset2.getName()));
            }
        }
        return flurryAdNativeAsset2;
    }

    public final void destroy() {
        if (this.f3872c == null) {
            C3356jq.m32609b(f3870a, "Invalid ad object");
            return;
        }
        try {
            C3345jm.m32636a().m32630b("com.flurry.android.impl.ads.AdStateEvent", this.f3874e);
            this.f3872c.mo32290a();
            this.f3872c = null;
            this.f3873d = null;
        } catch (Throwable th) {
            C3356jq.m32612a(f3870a, "Exception: ", th);
        }
    }

    public final void fetchAd() {
        if (this.f3872c == null) {
            C3356jq.m32609b(f3870a, "Invalid ad object");
            return;
        }
        try {
            String str = f3870a;
            C3356jq.m32613a(str, "NativeAdObject ready to fetch ad: " + this.f3872c);
            C3444l.m32473a().m32472a("nativeAdFetch");
            this.f3872c.m33691y();
        } catch (Throwable th) {
            C3356jq.m32612a(f3870a, "Exception: ", th);
        }
    }

    public final FlurryAdNativeAsset getAsset(String str) {
        FlurryAdNativeAsset flurryAdNativeAsset;
        if (this.f3872c == null) {
            C3356jq.m32609b(f3870a, "Invalid ad object");
            return null;
        } else if (C3484p.m32358a() == null || TextUtils.isEmpty(str)) {
            return null;
        } else {
            boolean z = false;
            try {
                if ("callToAction".equals(str)) {
                    return m33724a();
                }
                synchronized (this.f3871b) {
                    Iterator<FlurryAdNativeAsset> it = this.f3871b.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            flurryAdNativeAsset = null;
                            break;
                        }
                        flurryAdNativeAsset = it.next();
                        if (str.equals(flurryAdNativeAsset.getName())) {
                            z = true;
                            break;
                        }
                    }
                }
                FlurryAdNativeAsset flurryAdNativeAsset2 = flurryAdNativeAsset;
                if (!z) {
                    flurryAdNativeAsset2 = flurryAdNativeAsset;
                    if (str.equals("videoUrl")) {
                        synchronized (this.f3871b) {
                            Iterator<FlurryAdNativeAsset> it2 = this.f3871b.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    flurryAdNativeAsset2 = null;
                                    break;
                                }
                                flurryAdNativeAsset2 = it2.next();
                                if ("vastAd".equals(flurryAdNativeAsset2.getName())) {
                                    break;
                                }
                            }
                        }
                    }
                }
                return flurryAdNativeAsset2;
            } catch (Throwable th) {
                C3356jq.m32612a(f3870a, "Exception: ", th);
                return null;
            }
        }
    }

    public final boolean isVideoAd() {
        C2772aa aaVar = this.f3872c;
        if (aaVar == null) {
            C3356jq.m32609b(f3870a, "Invalid ad object");
            return false;
        }
        try {
            return aaVar.mo32304v();
        } catch (Throwable th) {
            C3356jq.m32612a(f3870a, "Exception: ", th);
            return false;
        }
    }

    public final void removeTrackingView() {
        C2772aa aaVar = this.f3872c;
        if (aaVar == null) {
            C3356jq.m32609b(f3870a, "Invalid ad object");
            return;
        }
        try {
            aaVar.m33690z();
        } catch (Throwable th) {
            C3356jq.m32612a(f3870a, "Exception: ", th);
        }
    }

    public final void setListener(FlurryAdNativeListener flurryAdNativeListener) {
        try {
            this.f3873d = flurryAdNativeListener;
        } catch (Throwable th) {
            C3356jq.m32612a(f3870a, "Exception: ", th);
        }
    }

    public final void setTargeting(FlurryAdTargeting flurryAdTargeting) {
        C2772aa aaVar = this.f3872c;
        if (aaVar == null) {
            C3356jq.m32609b(f3870a, "Invalid ad object");
            return;
        }
        try {
            aaVar.f6065i = flurryAdTargeting;
        } catch (Throwable th) {
            C3356jq.m32612a(f3870a, "Exception: ", th);
        }
    }

    public final void setTrackingView(View view) {
        C2772aa aaVar = this.f3872c;
        if (aaVar == null) {
            C3356jq.m32609b(f3870a, "Invalid ad object");
            return;
        }
        try {
            aaVar.mo32288a(view);
        } catch (Throwable th) {
            C3356jq.m32612a(f3870a, "Exception: ", th);
        }
    }
}
