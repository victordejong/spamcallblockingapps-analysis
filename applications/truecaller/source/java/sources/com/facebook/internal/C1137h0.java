package com.facebook.internal;

import android.os.RemoteException;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.facebook.internal.p037u0.p040m.C1220a;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import s1.f0.v;
import s1.z.c.l;
@Metadata(d1 = {"��\u0019\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0017¨\u0006\u0007"}, d2 = {"com/facebook/internal/InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1", "Lcom/android/installreferrer/api/InstallReferrerStateListener;", "onInstallReferrerServiceDisconnected", "", "onInstallReferrerSetupFinished", "responseCode", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.h0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/h0.class */
public final class C1137h0 implements InstallReferrerStateListener {

    /* renamed from: a */
    public final /* synthetic */ InstallReferrerClient f3130a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC1135g0 f3131b;

    public C1137h0(InstallReferrerClient installReferrerClient, AbstractC1135g0 abstractC1135g0) {
        this.f3130a = installReferrerClient;
        this.f3131b = abstractC1135g0;
    }

    @Override // com.android.installreferrer.api.InstallReferrerStateListener
    public void onInstallReferrerServiceDisconnected() {
    }

    @Override // com.android.installreferrer.api.InstallReferrerStateListener
    public void onInstallReferrerSetupFinished(int i) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            if (i != 0) {
                if (i != 2) {
                    return;
                }
                C23228f0 c23228f0 = C23228f0.f64291a;
                C23228f0.m7354a().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putBoolean("is_referrer_updated", true).apply();
                return;
            }
            try {
                ReferrerDetails installReferrer = this.f3130a.getInstallReferrer();
                l.d(installReferrer, "{\n                      referrerClient.installReferrer\n                    }");
                String installReferrer2 = installReferrer.getInstallReferrer();
                if (installReferrer2 != null && (v.B(installReferrer2, "fb", false, 2) || v.B(installReferrer2, "facebook", false, 2))) {
                    this.f3131b.mo41735a(installReferrer2);
                }
                C23228f0 c23228f02 = C23228f0.f64291a;
                C23228f0.m7354a().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putBoolean("is_referrer_updated", true).apply();
            } catch (RemoteException e) {
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
