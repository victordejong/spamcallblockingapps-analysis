package com.facebook.internal;

import android.os.RemoteException;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.facebook.C10181g;
import com.facebook.internal.p299b.p301b.C10249a;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001:\u0001\u000eB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\b\u0010\r\u001a\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0007¨\u0006\u000f"}, m4298d2 = {"Lcom/facebook/internal/InstallReferrerUtil;", "", "()V", "IS_REFERRER_UPDATED", "", "isUpdated", "", "()Z", "tryConnectReferrerInfo", "", "callback", "Lcom/facebook/internal/InstallReferrerUtil$Callback;", "tryUpdateReferrerInfo", "updateReferrer", "Callback", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.u */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/u.class */
public final class C10330u {

    /* renamed from: a */
    public static final C10330u f33920a = new C10330u();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\bf\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, m4298d2 = {"Lcom/facebook/internal/InstallReferrerUtil$Callback;", "", "onReceiveReferrerUrl", "", "s", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.u$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/u$a.class */
    public interface AbstractC10331a {
        /* renamed from: a */
        void mo22998a(String str);
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0019\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0017¨\u0006\u0007"}, m4298d2 = {"com/facebook/internal/InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1", "Lcom/android/installreferrer/api/InstallReferrerStateListener;", "onInstallReferrerServiceDisconnected", "", "onInstallReferrerSetupFinished", "responseCode", "", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.u$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/u$b.class */
    public static final class C10332b implements InstallReferrerStateListener {

        /* renamed from: a */
        final /* synthetic */ InstallReferrerClient f33921a;

        /* renamed from: b */
        final /* synthetic */ AbstractC10331a f33922b;

        C10332b(InstallReferrerClient installReferrerClient, AbstractC10331a abstractC10331a) {
            this.f33921a = installReferrerClient;
            this.f33922b = abstractC10331a;
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public final void onInstallReferrerServiceDisconnected() {
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public final void onInstallReferrerSetupFinished(int i) {
            if (C10249a.m23108a(this)) {
                return;
            }
            try {
                if (i != 0) {
                    if (i != 2) {
                        return;
                    }
                    C10330u c10330u = C10330u.f33920a;
                    C10330u.m23000a();
                    return;
                }
                try {
                    InstallReferrerClient referrerClient = this.f33921a;
                    C18524p.m3843b(referrerClient, "referrerClient");
                    ReferrerDetails installReferrer = referrerClient.getInstallReferrer();
                    C18524p.m3843b(installReferrer, "referrerClient.installReferrer");
                    String installReferrer2 = installReferrer.getInstallReferrer();
                    if (installReferrer2 != null && (C18425p.m3919c((CharSequence) installReferrer2, (CharSequence) "fb", false) || C18425p.m3919c((CharSequence) installReferrer2, (CharSequence) "facebook", false))) {
                        this.f33922b.mo22998a(installReferrer2);
                    }
                    C10330u c10330u2 = C10330u.f33920a;
                    C10330u.m23000a();
                } catch (RemoteException e) {
                }
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    private C10330u() {
    }

    /* renamed from: a */
    public static final /* synthetic */ void m23000a() {
        C10181g.m23290i().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putBoolean("is_referrer_updated", true).apply();
    }

    /* renamed from: a */
    public static final void m22999a(AbstractC10331a callback) {
        C18524p.m3840d(callback, "callback");
        if (!C10181g.m23290i().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("is_referrer_updated", false)) {
            InstallReferrerClient build = InstallReferrerClient.newBuilder(C10181g.m23290i()).build();
            try {
                build.startConnection(new C10332b(build, callback));
            } catch (Exception e) {
            }
        }
    }
}
