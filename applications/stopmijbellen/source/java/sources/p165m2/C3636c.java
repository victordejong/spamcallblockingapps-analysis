package p165m2;

import android.support.p012v4.media.AbstractC0081a;
import android.util.Log;
import com.google.ads.mediation.adcolony.AdColonyMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import p068d2.AbstractC2394r;
import p068d2.C2168b;
import p068d2.C2387q;
import p068d2.C2402s;
/* renamed from: m2.c */
/* loaded from: classes-dex2jar.jar:m2/c.class */
public class C3636c extends AbstractC0081a implements AbstractC2394r {

    /* renamed from: a */
    public static C3636c f11909a;

    /* renamed from: b */
    public static HashMap<String, WeakReference<C3638e>> f11910b;

    public C3636c() {
        f11910b = new HashMap<>();
    }

    /* renamed from: M */
    public static C3636c m1950M() {
        if (f11909a == null) {
            f11909a = new C3636c();
        }
        return f11909a;
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: C */
    public void mo1955C(C2387q c2387q, String str, int i) {
        m1949N(c2387q.f8444i);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: D */
    public void mo1954D(C2387q c2387q) {
        m1949N(c2387q.f8444i);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: E */
    public void mo1953E(C2387q c2387q) {
        MediationRewardedAdCallback mediationRewardedAdCallback;
        C3638e m1949N = m1949N(c2387q.f8444i);
        if (m1949N == null || (mediationRewardedAdCallback = m1949N.f11913a) == null) {
            return;
        }
        mediationRewardedAdCallback.onAdOpened();
        m1949N.f11913a.onVideoStart();
        m1949N.f11913a.reportAdImpression();
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: F */
    public void mo1952F(C2387q c2387q) {
        C3638e m1949N = m1949N(c2387q.f8444i);
        if (m1949N != null) {
            m1949N.f11916d = c2387q;
            m1949N.f11913a = m1949N.f11914b.onSuccess(m1949N);
        }
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: G */
    public void mo1951G(C2402s c2402s) {
        C3638e m1949N = m1949N(c2402s.m3603b(c2402s.f8513a));
        if (m1949N != null) {
            AdError createSdkError = AdColonyMediationAdapter.createSdkError();
            Log.w(AdColonyMediationAdapter.TAG, createSdkError.getMessage());
            m1949N.f11914b.onFailure(createSdkError);
            f11910b.remove(c2402s.m3603b(c2402s.f8513a));
        }
    }

    /* renamed from: N */
    public final C3638e m1949N(String str) {
        WeakReference<C3638e> weakReference = f11910b.get(str);
        return weakReference != null ? weakReference.get() : null;
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: w */
    public void mo1948w(C2387q c2387q) {
        MediationRewardedAdCallback mediationRewardedAdCallback;
        C3638e m1949N = m1949N(c2387q.f8444i);
        if (m1949N == null || (mediationRewardedAdCallback = m1949N.f11913a) == null) {
            return;
        }
        mediationRewardedAdCallback.reportAdClicked();
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: x */
    public void mo1947x(C2387q c2387q) {
        C3638e m1949N = m1949N(c2387q.f8444i);
        if (m1949N != null) {
            MediationRewardedAdCallback mediationRewardedAdCallback = m1949N.f11913a;
            if (mediationRewardedAdCallback != null) {
                mediationRewardedAdCallback.onAdClosed();
            }
            f11910b.remove(c2387q.f8444i);
        }
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: y */
    public void mo1946y(C2387q c2387q) {
        C3638e m1949N = m1949N(c2387q.f8444i);
        if (m1949N != null) {
            m1949N.f11916d = null;
            C2168b.m3787k(c2387q.f8444i, m1950M());
        }
    }
}
