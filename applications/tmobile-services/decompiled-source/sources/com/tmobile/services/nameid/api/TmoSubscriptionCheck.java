package com.tmobile.services.nameid.api;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.appcompat.app.AppCompatActivity;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.model.FeatureState;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.DateUtils;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.MigrationHelper;
import com.tmobile.services.nameid.utility.PendingStateHelper;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.SubscriptionUpgradeReceiver;
import com.tmobile.services.nameid.utility.SubscriptionUpgradeService;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.reactivex.functions.Consumer;
import io.realm.Realm;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/TmoSubscriptionCheck.class */
public class TmoSubscriptionCheck {
    /* renamed from: b */
    private String m6596b(SubscriptionHelper.State state) {
        return state == SubscriptionHelper.State.PREMIUM ? "P" : state == SubscriptionHelper.State.TRIAL ? "F" : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static /* synthetic */ void m6593e(TmoUserStatus tmoUserStatus, Realm realm) {
        if (tmoUserStatus != null) {
            tmoUserStatus.setPending(false);
            tmoUserStatus.setPendingCheckError(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static /* synthetic */ void m6592f(Realm realm) {
        TmoUserStatus tmoUserStatus = (TmoUserStatus) realm.m3053Q0(TmoUserStatus.class).m2916G();
        if (tmoUserStatus != null) {
            tmoUserStatus.setPending(false);
            tmoUserStatus.setPendingCheckError(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static /* synthetic */ void m6591g(TmoUserStatus tmoUserStatus, boolean z, String str, Realm realm) {
        tmoUserStatus.setPending(true);
        tmoUserStatus.setPendingCheckError(false);
        if (z) {
            LogUtil.m5643d("TmoSubscriptionCheckstartCheckingForNonPendingState", "Setting Type Letter: " + str);
            tmoUserStatus.setTypeLetter(str);
            tmoUserStatus.setStatusText("ACTIVE");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static /* synthetic */ void m6590h(FeatureState featureState) throws Exception {
        try {
            Realm G0 = Realm.m3064G0();
            if (ApiUtils.m6894E(featureState, TmoApiWrapper.m6626n0((TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G()))) {
                MainApplication.m7555A(featureState.getActualNapFeatures(), null);
                Realm G02 = Realm.m3064G0();
                try {
                    final TmoUserStatus tmoUserStatus = (TmoUserStatus) G02.m3053Q0(TmoUserStatus.class).m2916G();
                    G02.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.l3
                        @Override // io.realm.Realm.Transaction
                        /* renamed from: a */
                        public final void mo3037a(Realm realm) {
                            TmoSubscriptionCheck.m6593e(TmoUserStatus.this, realm);
                        }
                    });
                    if (G02 != null) {
                        G02.close();
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        if (G02 != null) {
                            try {
                                G02.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                        }
                        throw th2;
                    }
                }
            }
            if (G0 != null) {
                G0.close();
            }
        } catch (Exception e) {
            LogUtil.m5641f("TmoSubscriptionCheck", "Error updating pending sate in Realm:", e);
        }
    }

    /* renamed from: a */
    public void m6597a(final Context context, final SubscriptionHelper.State state, final boolean z, final boolean z2, final boolean z3) {
        if (BuildUtils.m5850d()) {
            LogUtil.m5643d("TmoSubscriptionCheck#checkSubscription", "We should never check TMO subscription status on Metro; Something went wrong");
            return;
        }
        ApiWrapper.m6760q(new Consumer() { // from class: com.tmobile.services.nameid.api.m3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                TmoSubscriptionCheck.this.m6595c(r5, state, context, z3, z2, z, (FeatureState) obj);
            }
        }, new Consumer() { // from class: com.tmobile.services.nameid.api.k3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                TmoSubscriptionCheck.this.m6594d(r5, context, state, z3, (Throwable) obj);
            }
        });
    }

    /* renamed from: c */
    public /* synthetic */ void m6595c(String str, SubscriptionHelper.State state, Context context, boolean z, boolean z2, boolean z3, FeatureState featureState) throws Exception {
        LogUtil.m5632o("TmoSubscriptionCheck" + str, "got feature state");
        if (!ApiUtils.m6894E(featureState, state)) {
            LogUtil.m5632o("TmoSubscriptionCheck" + str, "/featurestate does not match Subscription. Starting check service.");
            m6588j(context, state, z);
            Activity m = MainApplication.m7527m();
            if (z2 && m != null && (m instanceof AppCompatActivity)) {
                WidgetUtils.m5227j0(((AppCompatActivity) m).getSupportFragmentManager());
            }
        } else if (z3) {
            LogUtil.m5632o("TmoSubscriptionCheck" + str, "/featurestate matches Subscription. Setting pending=false in realm and notifying user.");
            try {
                Realm G0 = Realm.m3064G0();
                G0.m3067D0(C1756o3.f13393a);
                if (G0 != null) {
                    G0.close();
                }
            } catch (Exception e) {
                LogUtil.m5641f("TmoSubscriptionCheck", "Error updating TmoUserStatus in Realm:", e);
            }
            ApiUtils.m6841p0();
            PendingStateHelper.m5429a();
            MainApplication.m7555A(featureState.getActualNapFeatures(), null);
            SubscriptionUpgradeReceiver.m5301a(context);
        }
        LogUtil.m5643d("TmoSubscriptionCheckrestartSubscriptionChecks", "checking if we can do a migration");
        if (MigrationHelper.m5531a()) {
            LogUtil.m5643d("TmoSubscriptionCheckrestartSubscriptionChecks", "Can do migration, attempting migration now.");
            MigrationHelper.m5517o(MainApplication.m7527m(), PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false));
        }
    }

    /* renamed from: d */
    public /* synthetic */ void m6594d(String str, Context context, SubscriptionHelper.State state, boolean z, Throwable th) throws Exception {
        LogUtil.m5641f("TmoSubscriptionCheck" + str, "Error occurred getting /featurestate. Starting check service.", th);
        m6588j(context, state, z);
    }

    /* renamed from: i */
    public void m6589i(Context context) {
        Realm G0 = Realm.m3064G0();
        try {
            TmoUserStatus tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            if (tmoUserStatus != null && !DateUtils.m5788g(tmoUserStatus.getUpdatedAt()) && tmoUserStatus.isPending()) {
                SubscriptionHelper.State n0 = TmoApiWrapper.m6626n0(tmoUserStatus);
                if (n0 == SubscriptionHelper.State.NONE) {
                    LogUtil.m5632o("TmoSubscriptionCheck", "attempted to check subscription, but state is " + n0.name());
                    if (G0 != null) {
                        G0.close();
                        return;
                    }
                    return;
                }
                m6597a(context, n0, tmoUserStatus.isPending(), false, PreferenceUtils.m5395b("PREF_NOTIFY_WHEN_SYNCED", true));
                if (G0 != null) {
                    G0.close();
                    return;
                }
                return;
            }
            if (G0 != null) {
                G0.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: j */
    void m6588j(Context context, SubscriptionHelper.State state, boolean z) {
        final String b = m6596b(state);
        final boolean z2 = b != null && !b.isEmpty();
        Realm G0 = Realm.m3064G0();
        try {
            final TmoUserStatus tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
            if (tmoUserStatus != null) {
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.n3
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        TmoSubscriptionCheck.m6591g(TmoUserStatus.this, z2, b, realm);
                    }
                });
            }
            if (G0 != null) {
                G0.close();
            }
            PreferenceUtils.m5386k("PREF_NOTIFY_WHEN_SYNCED", z);
            Intent intent = new Intent(context, SubscriptionUpgradeService.class);
            LogUtil.m5643d("TmoSubscriptionCheckstartCheckingForNonPendingState", "desired subscription intent extra: " + state.name());
            intent.putExtra("KEY_DESIRED_SUBSCRIPTION_STATE", state);
            context.startService(intent);
        } finally {
            try {
                throw th;
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: k */
    public void m6587k(Context context, SubscriptionHelper.State state) {
        Intent intent = new Intent(context, SubscriptionUpgradeService.class);
        LogUtil.m5643d("TmoSubscriptionCheckstartCheckingForNonPendingState", "desired subscription intent extra: " + state.name());
        intent.putExtra("KEY_DESIRED_SUBSCRIPTION_STATE", state);
        context.startService(intent);
    }

    /* renamed from: l */
    public void m6586l() {
        ApiWrapper.m6760q(C1761p3.f13403f, null);
    }
}
