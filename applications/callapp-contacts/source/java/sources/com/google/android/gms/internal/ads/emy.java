package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emy.class */
public class emy {

    /* renamed from: f */
    private static emy f49253f;

    /* renamed from: b */
    public eln f49255b;

    /* renamed from: d */
    InitializationStatus f49257d;

    /* renamed from: i */
    private RewardedVideoAd f49261i;

    /* renamed from: a */
    public final Object f49254a = new Object();

    /* renamed from: g */
    private boolean f49259g = false;

    /* renamed from: h */
    private boolean f49260h = false;

    /* renamed from: c */
    public RequestConfiguration f49256c = new RequestConfiguration.Builder().build();

    /* renamed from: e */
    private ArrayList<OnInitializationCompleteListener> f49258e = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.emy$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emy$a.class */
    public final class BinderC12530a extends AbstractBinderC12644is {
        private BinderC12530a() {
            emy.this = r4;
        }

        /* synthetic */ BinderC12530a(emy emyVar, enb enbVar) {
            this();
        }

        @Override // com.google.android.gms.internal.ads.AbstractC12645it
        /* renamed from: a */
        public final void mo14595a(List<zzajm> list) throws RemoteException {
            emy.this.f49259g = false;
            emy.this.f49260h = true;
            InitializationStatus m14720b = emy.m14720b(list);
            ArrayList arrayList = emy.m14729a().f49258e;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                i++;
                ((OnInitializationCompleteListener) arrayList.get(i)).onInitializationComplete(m14720b);
            }
            emy.m14729a().f49258e.clear();
        }
    }

    private emy() {
    }

    /* renamed from: a */
    public static emy m14729a() {
        emy emyVar;
        synchronized (emy.class) {
            try {
                if (f49253f == null) {
                    f49253f = new emy();
                }
                emyVar = f49253f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return emyVar;
    }

    /* renamed from: b */
    public static InitializationStatus m14720b(List<zzajm> list) {
        HashMap hashMap = new HashMap();
        for (zzajm zzajmVar : list) {
            hashMap.put(zzajmVar.zzdka, new C12646iu(zzajmVar.zzdkb ? AdapterStatus.State.READY : AdapterStatus.State.NOT_READY, zzajmVar.description, zzajmVar.zzdkc));
        }
        return new C12648iw(hashMap);
    }

    /* renamed from: a */
    public final RewardedVideoAd m14728a(Context context) {
        synchronized (this.f49254a) {
            RewardedVideoAd rewardedVideoAd = this.f49261i;
            if (rewardedVideoAd != null) {
                return rewardedVideoAd;
            }
            C12957ug c12957ug = new C12957ug(context, new ejz(ekb.m14834b(), context, new BinderC12743mj()).m14843a(context, false));
            this.f49261i = c12957ug;
            return c12957ug;
        }
    }

    /* renamed from: a */
    public final void m14727a(Context context, String str, OnInitializationCompleteListener onInitializationCompleteListener) {
        synchronized (this.f49254a) {
            if (this.f49259g) {
                if (onInitializationCompleteListener != null) {
                    m14729a().f49258e.add(onInitializationCompleteListener);
                }
            } else if (this.f49260h) {
                if (onInitializationCompleteListener != null) {
                    onInitializationCompleteListener.onInitializationComplete(m14716e());
                }
            } else {
                this.f49259g = true;
                if (onInitializationCompleteListener != null) {
                    m14729a().f49258e.add(onInitializationCompleteListener);
                }
                if (context == null) {
                    throw new IllegalArgumentException("Context cannot be null.");
                }
                try {
                    C12737md.m14512a().m14511a(context, str);
                    m14722b(context);
                    if (onInitializationCompleteListener != null) {
                        this.f49255b.mo14545a(new BinderC12530a(this, null));
                    }
                    this.f49255b.mo14544a(new BinderC12743mj());
                    this.f49255b.mo14548a();
                    this.f49255b.mo14541a(str, BinderC12129d.m18979a(new Runnable(this, context) { // from class: com.google.android.gms.internal.ads.emx

                        /* renamed from: a */
                        private final emy f49251a;

                        /* renamed from: b */
                        private final Context f49252b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f49251a = this;
                            this.f49252b = context;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f49251a.m14728a(this.f49252b);
                        }
                    }));
                    if (this.f49256c.getTagForChildDirectedTreatment() != -1 || this.f49256c.getTagForUnderAgeOfConsent() != -1) {
                        m14726a(this.f49256c);
                    }
                    C12187aq.m18474a(context);
                    if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42823da)).booleanValue() && !m14717d().endsWith("0")) {
                        C13088za.zzex("Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.");
                        this.f49257d = new InitializationStatus(this) { // from class: com.google.android.gms.internal.ads.emz

                            /* renamed from: a */
                            private final emy f49263a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f49263a = this;
                            }

                            @Override // com.google.android.gms.ads.initialization.InitializationStatus
                            public final Map getAdapterStatusMap() {
                                emy emyVar = this.f49263a;
                                HashMap hashMap = new HashMap();
                                hashMap.put("com.google.android.gms.ads.MobileAds", new enb(emyVar));
                                return hashMap;
                            }
                        };
                        if (onInitializationCompleteListener != null) {
                            C13077yq.f50094a.post(new Runnable(this, onInitializationCompleteListener) { // from class: com.google.android.gms.internal.ads.ena

                                /* renamed from: a */
                                private final emy f49264a;

                                /* renamed from: b */
                                private final OnInitializationCompleteListener f49265b;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f49264a = this;
                                    this.f49265b = onInitializationCompleteListener;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f49265b.onInitializationComplete(this.f49264a.f49257d);
                                }
                            });
                        }
                    }
                } catch (RemoteException e) {
                    C13088za.zzd("MobileAdsSettingManager initialization failed", e);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m14726a(RequestConfiguration requestConfiguration) {
        try {
            this.f49255b.mo14543a(new zzaat(requestConfiguration));
        } catch (RemoteException e) {
            C13088za.zzc("Unable to set request configuration parcel.", e);
        }
    }

    /* renamed from: b */
    public final float m14723b() {
        synchronized (this.f49254a) {
            eln elnVar = this.f49255b;
            float f = 1.0f;
            if (elnVar == null) {
                return 1.0f;
            }
            try {
                f = elnVar.mo14539b();
            } catch (RemoteException e) {
                C13088za.zzc("Unable to get app volume.", e);
            }
            return f;
        }
    }

    /* renamed from: b */
    public final void m14722b(Context context) {
        if (this.f49255b == null) {
            this.f49255b = new eju(ekb.m14834b(), context).m14843a(context, false);
        }
    }

    /* renamed from: c */
    public final boolean m14719c() {
        boolean z;
        synchronized (this.f49254a) {
            eln elnVar = this.f49255b;
            if (elnVar == null) {
                return false;
            }
            try {
                z = elnVar.mo14537c();
            } catch (RemoteException e) {
                C13088za.zzc("Unable to get app mute state.", e);
                z = false;
            }
            return z;
        }
    }

    /* renamed from: d */
    public final String m14717d() {
        String m17068b;
        synchronized (this.f49254a) {
            C12045o.m19157a(this.f49255b != null, "MobileAds.initialize() must be called prior to getting version string.");
            try {
                m17068b = cyc.m17068b(this.f49255b.mo14536d());
            } catch (RemoteException e) {
                C13088za.zzc("Unable to get version string.", e);
                return "";
            }
        }
        return m17068b;
    }

    /* renamed from: e */
    public final InitializationStatus m14716e() {
        synchronized (this.f49254a) {
            C12045o.m19157a(this.f49255b != null, "MobileAds.initialize() must be called prior to getting initialization status.");
            try {
                InitializationStatus initializationStatus = this.f49257d;
                if (initializationStatus != null) {
                    return initializationStatus;
                }
                return m14720b(this.f49255b.mo14535e());
            } catch (RemoteException e) {
                C13088za.zzex("Unable to get Initialization status.");
                return null;
            }
        }
    }
}
