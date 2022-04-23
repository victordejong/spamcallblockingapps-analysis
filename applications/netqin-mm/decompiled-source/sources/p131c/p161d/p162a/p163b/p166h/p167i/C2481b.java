package p131c.p161d.p162a.p163b.p166h.p167i;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiInterstitial;
import com.inmobi.ads.listeners.InterstitialAdEventListener;
import java.util.HashMap;
import java.util.Map;
/* renamed from: c.d.a.b.h.i.b */
/* loaded from: classes-dex2jar.jar:c/d/a/b/h/i/b.class */
public class C2481b implements MediationInterstitialAd {

    /* renamed from: a */
    public final InMobiInterstitial f9458a;

    /* renamed from: b */
    public SignalCallbacks f9459b;

    /* renamed from: c */
    public MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> f9460c;

    /* renamed from: d */
    public MediationInterstitialAdCallback f9461d;

    /* renamed from: e */
    public final String f9462e = C2481b.class.getName();

    /* renamed from: c.d.a.b.h.i.b$a */
    /* loaded from: classes-dex2jar.jar:c/d/a/b/h/i/b$a.class */
    public class C2482a extends InterstitialAdEventListener {
        public C2482a() {
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdClicked(InMobiInterstitial inMobiInterstitial, Map<Object, Object> map) {
            Log.d(C2481b.this.f9462e, "onAdClicked");
            if (C2481b.this.f9461d != null) {
                C2481b.this.f9461d.mo16290C();
            }
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdDismissed(InMobiInterstitial inMobiInterstitial) {
            Log.d(C2481b.this.f9462e, "onAdDismissed");
            if (C2481b.this.f9461d != null) {
                C2481b.this.f9461d.mo16292A();
            }
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdDisplayed(InMobiInterstitial inMobiInterstitial) {
            Log.d(C2481b.this.f9462e, "onAdDisplayed");
            if (C2481b.this.f9461d != null) {
                C2481b.this.f9461d.mo16286t();
                C2481b.this.f9461d.mo16291B();
            }
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdLoadFailed(InMobiInterstitial inMobiInterstitial, InMobiAdRequestStatus inMobiAdRequestStatus) {
            String str = "onAdLoadFailed: " + inMobiAdRequestStatus.getMessage();
            Log.d(C2481b.this.f9462e, str);
            if (C2481b.this.f9460c != null) {
                C2481b.this.f9460c.mo17937a(str);
            }
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdLoadSucceeded(InMobiInterstitial inMobiInterstitial) {
            Log.d(C2481b.this.f9462e, "onAdLoadSucceeded");
            if (C2481b.this.f9460c != null) {
                C2481b bVar = C2481b.this;
                bVar.f9461d = (MediationInterstitialAdCallback) bVar.f9460c.onSuccess(C2481b.this);
            }
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdWillDisplay(InMobiInterstitial inMobiInterstitial) {
            Log.d(C2481b.this.f9462e, "onAdWillDisplay");
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onRequestPayloadCreated(byte[] bArr) {
            String str = new String(bArr);
            String str2 = C2481b.this.f9462e;
            Log.d(str2, "onRequestPayloadCreated: " + str);
            if (C2481b.this.f9459b != null) {
                C2481b.this.f9459b.onSuccess(str);
            }
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onRequestPayloadCreationFailed(InMobiAdRequestStatus inMobiAdRequestStatus) {
            String message = inMobiAdRequestStatus.getMessage();
            String str = C2481b.this.f9462e;
            Log.d(str, "onRequestPayloadCreationFailed: " + message);
            if (C2481b.this.f9459b != null) {
                C2481b.this.f9459b.mo17917a(message);
            }
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onUserLeftApplication(InMobiInterstitial inMobiInterstitial) {
            Log.d(C2481b.this.f9462e, "onUserLeftApplication");
            if (C2481b.this.f9461d != null) {
                C2481b.this.f9461d.mo17931k();
            }
        }
    }

    public C2481b(Context context, long j) {
        this.f9458a = new InMobiInterstitial(context, j, new C2482a());
        HashMap hashMap = new HashMap();
        hashMap.put("tp", "c_admob");
        this.f9458a.setExtras(hashMap);
    }

    /* renamed from: a */
    public void m29678a(MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        this.f9460c = mediationAdLoadCallback;
        this.f9458a.load(mediationInterstitialAdConfiguration.m17943a().getBytes());
    }

    /* renamed from: a */
    public void m29677a(SignalCallbacks signalCallbacks) {
        this.f9459b = signalCallbacks;
        this.f9458a.getSignals();
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAd
    public void showAd(Context context) {
        if (this.f9458a.isReady()) {
            this.f9458a.show();
        }
    }
}
