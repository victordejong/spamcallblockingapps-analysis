package com.tmobile.services.nameid.Startup;

import android.content.Intent;
import androidx.appcompat.app.AppCompatActivity;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.api.MetroApiWrapper;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.api.TmoSubscriptionCheck;
import com.tmobile.services.nameid.model.CategorySettingList;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.utility.DeviceInfoUtils;
import com.tmobile.services.nameid.utility.FoRegistrationHelper;
import com.tmobile.services.nameid.utility.IamWrapper;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.MetroDowngradeService;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.SubscriptionUpgradeService;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.realm.Realm;
import io.realm.RealmQuery;
import io.realm.exceptions.RealmError;
import io.realm.exceptions.RealmFileException;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Startup/IdentifyingNumbersActivity.class */
public class IdentifyingNumbersActivity extends AppCompatActivity {

    /* renamed from: f */
    private FlowController f12974f = new FlowController(this);

    /* renamed from: j */
    private void m7220j() {
        TmoApiWrapper.m6621s(this, null).retry().subscribe(new Consumer() { // from class: com.tmobile.services.nameid.Startup.d0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                IdentifyingNumbersActivity.this.m7218l((TmoUserStatus) obj);
            }
        }, new Consumer() { // from class: com.tmobile.services.nameid.Startup.y
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                IdentifyingNumbersActivity.this.m7217m((Throwable) obj);
            }
        });
    }

    /* renamed from: k */
    private void m7219k() {
        LogUtil.m5632o("IdentifyingNumbersActivity#", "Going to next screen");
        startActivity(new Intent(this, MainActivity.class));
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public static /* synthetic */ void m7212r(List list) throws Exception {
        LogUtil.m5632o("IdentifyingNumbersActivity#", "Got settings for caller");
        PreferenceUtils.m5386k("PREF_USER_PREFERENCES_SYNCED", true);
    }

    /* renamed from: w */
    private void m7207w() {
        try {
            SubscriptionHelper.State c = SubscriptionHelper.m5325c();
            if (SubscriptionHelper.m5315m(c) && !SubscriptionHelper.m5310r(c) && !SubscriptionHelper.m5312p(c)) {
                Observable<List<ApiUtils.SettingForCaller>> m = ApiWrapper.m6765m(false);
                if (m != null) {
                    m.subscribe(C1615v.f13038f, C1616w.f13039f);
                }
                Observable<CategorySettingList> n = ApiWrapper.m6763n();
                if (n != null) {
                    n.subscribe(C1583a0.f12993f, C1614u.f13037f);
                }
            }
        } catch (RealmError | RealmFileException e) {
            if (e.getMessage().contains("No space")) {
                LogUtil.m5643d("IdentifyingNumbersActivity#", "About to show Disk Full Dialog. Full error: " + e);
                WidgetUtils.m5250W(this);
                return;
            }
        }
        if (!SubscriptionUpgradeService.m5299b(this)) {
            try {
                new TmoSubscriptionCheck().m6589i(this);
            } catch (RealmError | RealmFileException e2) {
                if (e2.getMessage().contains("No space")) {
                    LogUtil.m5643d("IdentifyingNumbersActivity#", "About to show Disk Full Dialog. Full error: " + e2);
                    WidgetUtils.m5250W(this);
                    return;
                }
            }
        }
        m7219k();
    }

    /* renamed from: i */
    void m7221i() {
        boolean z = true;
        if ("".equals(PreferenceUtils.m5390g("PREF_PSTAR_USER_TOKEN"))) {
            LogUtil.m5643d("IdentifyingNumbersActivity#checkRegistrationData", "Registering with FO backend - FO Token is empty");
            z = true;
        } else {
            z = false;
        }
        if (!PreferenceUtils.m5390g("PREF_DEVICE_ID").isEmpty() && !DeviceInfoUtils.m5762b(this).equals(PreferenceUtils.m5390g("PREF_DEVICE_ID"))) {
            String b = DeviceInfoUtils.m5762b(this);
            if (!b.isEmpty()) {
                LogUtil.m5643d("IdentifyingNumbersActivity#checkRegistrationData", "Registering with FO backend - Device ID changed");
                PreferenceUtils.m5383n("PREF_DEVICE_ID", b);
            }
        }
        FoRegistrationHelper.m5705a(this);
        if (z) {
            FoRegistrationHelper.m5693m(this);
        }
    }

    /* renamed from: l */
    public /* synthetic */ void m7218l(TmoUserStatus tmoUserStatus) throws Exception {
        LogUtil.m5632o("IdentifyingNumbersActivity#", "Successfully got new tmobile user status");
        m7207w();
    }

    /* renamed from: m */
    public /* synthetic */ void m7217m(Throwable th) throws Exception {
        LogUtil.m5632o("IdentifyingNumbersActivity#", "Failed to get new tmobile user status");
        m7207w();
    }

    /* renamed from: n */
    public /* synthetic */ void m7216n(IamWrapper.IamResponse iamResponse) throws Exception {
        LogUtil.m5632o("IdentifyingNumbersActivity#", "got SIT token");
        m7220j();
    }

    /* renamed from: o */
    public /* synthetic */ void m7215o(Throwable th) throws Exception {
        LogUtil.m5641f("IdentifyingNumbersActivity#", "exception getting SIT token", th);
        m7207w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:57:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x02a7  */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(@javax.annotation.Nullable android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 1077
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.Startup.IdentifyingNumbersActivity.onCreate(android.os.Bundle):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (MetroApiWrapper.m6725j() && !MetroDowngradeService.m5537b(this)) {
            LogUtil.m5643d("IdentifyingNumbersActivity#", "(Re)starting license check for recent downgrade");
            MetroApiWrapper.m6736K(this);
        }
    }

    /* renamed from: p */
    public /* synthetic */ void m7214p(IamWrapper.IamResponse iamResponse) throws Exception {
        LogUtil.m5632o("IdentifyingNumbersActivity#", "got SIT token");
        m7219k();
    }

    /* renamed from: q */
    public /* synthetic */ void m7213q(Throwable th) throws Exception {
        LogUtil.m5641f("IdentifyingNumbersActivity#", "exception getting SIT token", th);
        m7219k();
    }

    /* renamed from: v */
    void m7208v() {
        try {
            Realm G0 = Realm.m3064G0();
            try {
                RealmQuery Q0 = G0.m3053Q0(ActivityItem.class);
                Q0.m2888n("unread", Boolean.TRUE);
                Iterator<E> it = Q0.m2918E().iterator();
                while (it.hasNext()) {
                    ((ActivityItem) it.next()).setUnread(true);
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
        } catch (RealmError | RealmFileException e) {
            if (e.getMessage().contains("No space")) {
                LogUtil.m5643d("IdentifyingNumbersActivity#", "About to show Disk Full Dialog. Full error: " + e);
                WidgetUtils.m5250W(this);
            }
        }
    }
}
