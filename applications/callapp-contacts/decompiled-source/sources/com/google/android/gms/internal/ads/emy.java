package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emy.class */
public class emy {
    private static emy f;

    /* renamed from: b  reason: collision with root package name */
    public eln f27972b;

    /* renamed from: d  reason: collision with root package name */
    InitializationStatus f27974d;
    private RewardedVideoAd i;

    /* renamed from: a  reason: collision with root package name */
    public final Object f27971a = new Object();
    private boolean g = false;
    private boolean h = false;

    /* renamed from: c  reason: collision with root package name */
    public RequestConfiguration f27973c = new RequestConfiguration.Builder().build();
    private ArrayList<OnInitializationCompleteListener> e = new ArrayList<>();

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emy$a.class */
    final class a extends is {
        private a() {
        }

        /* synthetic */ a(emy emyVar, enb enbVar) {
            this();
        }

        @Override // com.google.android.gms.internal.ads.it
        public final void a(List<zzajm> list) throws RemoteException {
            emy.this.g = false;
            emy.this.h = true;
            InitializationStatus b2 = emy.b(list);
            ArrayList arrayList = emy.a().e;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((OnInitializationCompleteListener) obj).onInitializationComplete(b2);
            }
            emy.a().e.clear();
        }
    }

    private emy() {
    }

    public static emy a() {
        emy emyVar;
        synchronized (emy.class) {
            try {
                if (f == null) {
                    f = new emy();
                }
                emyVar = f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return emyVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InitializationStatus b(List<zzajm> list) {
        HashMap hashMap = new HashMap();
        for (zzajm zzajmVar : list) {
            hashMap.put(zzajmVar.zzdka, new iu(zzajmVar.zzdkb ? AdapterStatus.State.READY : AdapterStatus.State.NOT_READY, zzajmVar.description, zzajmVar.zzdkc));
        }
        return new iw(hashMap);
    }

    public final RewardedVideoAd a(Context context) {
        synchronized (this.f27971a) {
            RewardedVideoAd rewardedVideoAd = this.i;
            if (rewardedVideoAd != null) {
                return rewardedVideoAd;
            }
            ug ugVar = new ug(context, new ejz(ekb.b(), context, new mj()).a(context, false));
            this.i = ugVar;
            return ugVar;
        }
    }

    public final void a(final Context context, String str, final OnInitializationCompleteListener onInitializationCompleteListener) {
        synchronized (this.f27971a) {
            if (this.g) {
                if (onInitializationCompleteListener != null) {
                    a().e.add(onInitializationCompleteListener);
                }
            } else if (this.h) {
                if (onInitializationCompleteListener != null) {
                    onInitializationCompleteListener.onInitializationComplete(e());
                }
            } else {
                this.g = true;
                if (onInitializationCompleteListener != null) {
                    a().e.add(onInitializationCompleteListener);
                }
                if (context != null) {
                    try {
                        md.a().a(context, str);
                        b(context);
                        if (onInitializationCompleteListener != null) {
                            this.f27972b.a(new a(this, null));
                        }
                        this.f27972b.a(new mj());
                        this.f27972b.a();
                        this.f27972b.a(str, d.a(new Runnable(this, context) { // from class: com.google.android.gms.internal.ads.emx

                            /* renamed from: a  reason: collision with root package name */
                            private final emy f27969a;

                            /* renamed from: b  reason: collision with root package name */
                            private final Context f27970b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f27969a = this;
                                this.f27970b = context;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f27969a.a(this.f27970b);
                            }
                        }));
                        if (!(this.f27973c.getTagForChildDirectedTreatment() == -1 && this.f27973c.getTagForUnderAgeOfConsent() == -1)) {
                            a(this.f27973c);
                        }
                        aq.a(context);
                        if (!((Boolean) ekb.e().a(aq.da)).booleanValue() && !d().endsWith("0")) {
                            za.zzex("Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.");
                            this.f27974d = new InitializationStatus(this) { // from class: com.google.android.gms.internal.ads.emz

                                /* renamed from: a  reason: collision with root package name */
                                private final emy f27976a;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f27976a = this;
                                }

                                @Override // com.google.android.gms.ads.initialization.InitializationStatus
                                public final Map getAdapterStatusMap() {
                                    emy emyVar = this.f27976a;
                                    HashMap hashMap = new HashMap();
                                    hashMap.put("com.google.android.gms.ads.MobileAds", new enb(emyVar));
                                    return hashMap;
                                }
                            };
                            if (onInitializationCompleteListener != null) {
                                yq.f28555a.post(new Runnable(this, onInitializationCompleteListener) { // from class: com.google.android.gms.internal.ads.ena

                                    /* renamed from: a  reason: collision with root package name */
                                    private final emy f27977a;

                                    /* renamed from: b  reason: collision with root package name */
                                    private final OnInitializationCompleteListener f27978b;

                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    {
                                        this.f27977a = this;
                                        this.f27978b = onInitializationCompleteListener;
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f27978b.onInitializationComplete(this.f27977a.f27974d);
                                    }
                                });
                            }
                        }
                    } catch (RemoteException e) {
                        za.zzd("MobileAdsSettingManager initialization failed", e);
                    }
                    return;
                }
                throw new IllegalArgumentException("Context cannot be null.");
            }
        }
    }

    public final void a(RequestConfiguration requestConfiguration) {
        try {
            this.f27972b.a(new zzaat(requestConfiguration));
        } catch (RemoteException e) {
            za.zzc("Unable to set request configuration parcel.", e);
        }
    }

    public final float b() {
        synchronized (this.f27971a) {
            eln elnVar = this.f27972b;
            float f2 = 1.0f;
            if (elnVar == null) {
                return 1.0f;
            }
            try {
                f2 = elnVar.b();
            } catch (RemoteException e) {
                za.zzc("Unable to get app volume.", e);
            }
            return f2;
        }
    }

    public final void b(Context context) {
        if (this.f27972b == null) {
            this.f27972b = new eju(ekb.b(), context).a(context, false);
        }
    }

    public final boolean c() {
        synchronized (this.f27971a) {
            eln elnVar = this.f27972b;
            boolean z = false;
            if (elnVar == null) {
                return false;
            }
            try {
                z = elnVar.c();
            } catch (RemoteException e) {
                za.zzc("Unable to get app mute state.", e);
            }
            return z;
        }
    }

    public final String d() {
        String b2;
        synchronized (this.f27971a) {
            o.a(this.f27972b != null, "MobileAds.initialize() must be called prior to getting version string.");
            try {
                b2 = cyc.b(this.f27972b.d());
            } catch (RemoteException e) {
                za.zzc("Unable to get version string.", e);
                return "";
            }
        }
        return b2;
    }

    public final InitializationStatus e() {
        synchronized (this.f27971a) {
            o.a(this.f27972b != null, "MobileAds.initialize() must be called prior to getting initialization status.");
            try {
                InitializationStatus initializationStatus = this.f27974d;
                if (initializationStatus != null) {
                    return initializationStatus;
                }
                return b(this.f27972b.e());
            } catch (RemoteException e) {
                za.zzex("Unable to get Initialization status.");
                return null;
            }
        }
    }
}
