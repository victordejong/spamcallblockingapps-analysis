package com.tmobile.services.nameid.Startup;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.rxkotlin.ObservablesKt;
import io.reactivex.schedulers.Schedulers;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\r\u0010\bR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/tmobile/services/nameid/Startup/ScamShieldUpgradeActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "", FirebaseAnalytics.Param.SUCCESS, "", "done", "(Z)V", "getCallActivity", "()V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "", "LOG_TAG", "Ljava/lang/String;", "Lio/reactivex/disposables/CompositeDisposable;", "disposables", "Lio/reactivex/disposables/CompositeDisposable;", "Lcom/tmobile/services/nameid/Startup/FlowController;", "flowController", "Lcom/tmobile/services/nameid/Startup/FlowController;", "<init>", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Startup/ScamShieldUpgradeActivity.class */
public final class ScamShieldUpgradeActivity extends AppCompatActivity {

    /* renamed from: f */
    private final String f12985f = "AppUpgActivity#";

    /* renamed from: g */
    private CompositeDisposable f12986g = new CompositeDisposable();

    /* renamed from: h */
    private final FlowController f12987h = new FlowController(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public final void m7198k(boolean z) {
        String str = this.f12985f;
        LogUtil.m5639h(str, "done - success? " + z);
        PreferenceUtils.m5386k("PREF_HAS_FETCHED_NEW_USER_STATUS", true);
        finish();
        this.f12987h.m7223e();
    }

    /* renamed from: l */
    private final void m7197l() {
        LogUtil.m5632o(this.f12985f, "Get at least 30 days worth of call log.");
        long d = PreferenceUtils.m5393d("PREF_CALL_LOG_LAST_RETRIEVED_DATE");
        boolean z = new Date(d).after(new Date(System.currentTimeMillis() - 2678400000L)) || d == 0;
        String str = this.f12985f;
        LogUtil.m5643d(str, "Fetch call log based on date? " + z);
        if (z) {
            Observable<List<ApiUtils.ActivityFromCaller>> k = ApiWrapper.m6769k(1, Caller.shouldSuppressCategory(), Caller.shouldSuppressName());
            if (k != null) {
                k.subscribeOn(Schedulers.m3239b()).subscribe(ScamShieldUpgradeActivity$getCallActivity$d$1.f12988f, new Consumer<Throwable>() { // from class: com.tmobile.services.nameid.Startup.ScamShieldUpgradeActivity$getCallActivity$d$2
                    /* renamed from: a */
                    public final void accept(Throwable th) {
                        String str2;
                        str2 = ScamShieldUpgradeActivity.this.f12985f;
                        LogUtil.m5631p(str2, "Error loading initial call log: " + th.getMessage());
                    }
                });
            } else {
                LogUtil.m5631p(this.f12985f, "Call log observable was null. Cannot fetch call log.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.m5639h(this.f12985f, "onCreate");
        setContentView(C1517R.layout.activity_call_manager_upgrade);
        Observable<Long> minimumTimer = Observable.timer(1L, TimeUnit.SECONDS);
        Observable<TmoUserStatus> request = TmoApiWrapper.m6621s(this, null);
        Intrinsics.m1831d(request, "request");
        Intrinsics.m1831d(minimumTimer, "minimumTimer");
        this.f12986g.m4445d(ObservablesKt.m3258a(request, minimumTimer).observeOn(AndroidSchedulers.m4448c()).subscribe(new Consumer<Pair<? extends TmoUserStatus, ? extends Long>>() { // from class: com.tmobile.services.nameid.Startup.ScamShieldUpgradeActivity$onCreate$timerAndRequest$1
            /* renamed from: a */
            public final void accept(Pair<? extends TmoUserStatus, Long> pair) {
                ScamShieldUpgradeActivity.this.m7198k(true);
            }
        }, new Consumer<Throwable>() { // from class: com.tmobile.services.nameid.Startup.ScamShieldUpgradeActivity$onCreate$timerAndRequest$2
            /* renamed from: a */
            public final void accept(Throwable th) {
                ScamShieldUpgradeActivity.this.m7198k(false);
            }
        }));
        m7197l();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        LogUtil.m5639h(this.f12985f, "onDestroy");
        this.f12986g.dispose();
        super.onDestroy();
    }
}
