package com.facebook.internal;

import android.os.RemoteException;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.facebook.g;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001:\u0001\u000eB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\b\u0010\r\u001a\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0007¨\u0006\u000f"}, d2 = {"Lcom/facebook/internal/InstallReferrerUtil;", "", "()V", "IS_REFERRER_UPDATED", "", "isUpdated", "", "()Z", "tryConnectReferrerInfo", "", "callback", "Lcom/facebook/internal/InstallReferrerUtil$Callback;", "tryUpdateReferrerInfo", "updateReferrer", "Callback", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/u.class */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public static final u f20005a = new u();

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\bf\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/InstallReferrerUtil$Callback;", "", "onReceiveReferrerUrl", "", "s", "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/u$a.class */
    public interface a {
        void a(String str);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0019\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0017¨\u0006\u0007"}, d2 = {"com/facebook/internal/InstallReferrerUtil$tryConnectReferrerInfo$installReferrerStateListener$1", "Lcom/android/installreferrer/api/InstallReferrerStateListener;", "onInstallReferrerServiceDisconnected", "", "onInstallReferrerSetupFinished", "responseCode", "", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/u$b.class */
    public static final class b implements InstallReferrerStateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InstallReferrerClient f20006a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a f20007b;

        b(InstallReferrerClient installReferrerClient, a aVar) {
            this.f20006a = installReferrerClient;
            this.f20007b = aVar;
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public final void onInstallReferrerServiceDisconnected() {
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public final void onInstallReferrerSetupFinished(int i) {
            if (!com.facebook.internal.b.b.a.a(this)) {
                try {
                    if (i == 0) {
                        try {
                            InstallReferrerClient referrerClient = this.f20006a;
                            p.b(referrerClient, "referrerClient");
                            ReferrerDetails installReferrer = referrerClient.getInstallReferrer();
                            p.b(installReferrer, "referrerClient.installReferrer");
                            String installReferrer2 = installReferrer.getInstallReferrer();
                            if (installReferrer2 != null && (kotlin.h.p.c((CharSequence) installReferrer2, (CharSequence) "fb", false) || kotlin.h.p.c((CharSequence) installReferrer2, (CharSequence) "facebook", false))) {
                                this.f20007b.a(installReferrer2);
                            }
                            u uVar = u.f20005a;
                            u.a();
                        } catch (RemoteException e) {
                        }
                    } else if (i == 2) {
                        u uVar2 = u.f20005a;
                        u.a();
                    }
                } catch (Throwable th) {
                    com.facebook.internal.b.b.a.a(th, this);
                }
            }
        }
    }

    private u() {
    }

    public static final /* synthetic */ void a() {
        g.i().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putBoolean("is_referrer_updated", true).apply();
    }

    public static final void a(a callback) {
        p.d(callback, "callback");
        if (!g.i().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("is_referrer_updated", false)) {
            InstallReferrerClient build = InstallReferrerClient.newBuilder(g.i()).build();
            try {
                build.startConnection(new b(build, callback));
            } catch (Exception e) {
            }
        }
    }
}
