package com.privacystar.core.service.googleplay.p010v3;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.design.widget.Snackbar;
import android.view.View;
import com.android.vending.billing.IInAppBillingService;
import com.privacystar.core.C1566R;
import com.privacystar.core.application.AppManagerImpl;
import com.privacystar.core.data.model.PlayStoreReceipt;
import com.privacystar.core.data.model.helper.PlayStoreReceiptRealm;
import com.privacystar.core.p011ui.PSActivity;
import com.privacystar.core.p011ui.SplashActivity;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.analytics.apptentive.ApptentiveConstants;
import com.privacystar.core.service.googleplay.IABConstants;
import com.privacystar.core.service.googleplay.p010v3.IABV3Helper;
import com.privacystar.core.service.network.handler.RegistrationHandler;
import com.privacystar.core.util.PermissionUtils;
import com.privacystar.core.util.Text;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
import timber.log.Timber;
/* renamed from: com.privacystar.core.service.googleplay.v3.IABV3Activity */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/googleplay/v3/IABV3Activity.class */
public class IABV3Activity extends PSActivity {
    public static final String type = "subs";
    public static final int version = 3;
    IInAppBillingService billingService;
    public boolean errorReturned = false;
    public String lastKnownPayload = "";
    private boolean boundToService = false;
    ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.privacystar.core.service.googleplay.v3.IABV3Activity.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            IABV3Activity.this.errorReturned = false;
            IABV3Activity.this.billingService = IInAppBillingService.Stub.asInterface(iBinder);
            IABV3Activity.this.verifyLaunchIntent();
            IABV3Activity.this.processIntent();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Timber.m37d("Disconnecting!", new Object[0]);
            IABV3Activity.this.billingService = null;
            IABV3Activity.this.boundToService = false;
            if (!IABV3Activity.this.errorReturned) {
                Timber.m25w("EXITING WITHOUT PASSING RESULT TO UX!", new Object[0]);
                IABV3Activity.this.reportErrorCode(null, IABV3Helper.Result.SERVICE_DISCONNECTED);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void reportErrorCode(String str, IABV3Helper.Result... resultArr) {
        this.errorReturned = true;
        String str2 = str;
        if (Text.isBlank(str)) {
            str2 = this.lastKnownPayload;
            this.lastKnownPayload = "";
        }
        if (resultArr != null) {
            for (int i = 0; i < resultArr.length; i++) {
                Timber.m37d("Error result [#%d]: %s", Integer.valueOf(i), resultArr[i].description());
                Timber.m37d("Error code value [#%d]: %d", Integer.valueOf(i), Integer.valueOf(resultArr[i].value()));
            }
        }
        if (!Text.isBlank(str2)) {
            Timber.m37d("Error payload: %s", str2);
        }
        finish();
    }

    private void reportPurchaseStateChanged(PlayStoreReceipt playStoreReceipt, String str) {
        Timber.m37d("Purchase State Changed: %s -- %s", playStoreReceipt, str);
        PlayStoreReceiptRealm.addReceipt(getRealm(), playStoreReceipt);
        RegistrationHandler.getInstance().checkRegistration(this, true);
    }

    private void trackPaymentAnalytics(boolean z) {
        AnalyticsManager.INSTANCE.fire(new Event.PaymentResultEvent(z));
    }

    public void buyItem(String str, String str2, Serializable serializable) {
        if (serializable instanceof IABV3Helper.SkuType) {
            IABV3Helper.SkuType skuType = (IABV3Helper.SkuType) serializable;
            if (skuType == IABV3Helper.SkuType.INVALID) {
                Timber.m31i("Tried to purchase item with invalid SkuType.", new Object[0]);
                return;
            }
            this.lastKnownPayload = str2;
            try {
                Bundle buyIntent = this.billingService.getBuyIntent(3, getPackageName(), str, skuType.getValue(), str2);
                IABV3Helper.Result result = IABV3Helper.Result.get(buyIntent.getInt("RESPONSE_CODE"));
                if (result == IABV3Helper.Result.OK) {
                    Timber.m31i("Initial response OK: 0", new Object[0]);
                    PendingIntent pendingIntent = (PendingIntent) buyIntent.getParcelable(IABV3Helper.BUY_INTENT);
                    if (pendingIntent != null) {
                        startIntentSenderForResult(pendingIntent.getIntentSender(), 12340, new Intent(), 0, 0, 0);
                    }
                } else {
                    Timber.m25w("Initial response not OK: %s", this);
                    reportErrorCode(str2, result);
                }
            } catch (Exception e) {
                Timber.m32e(e, "Exception occurred during purchase attempt.", new Object[0]);
                reportErrorCode(str2, IABV3Helper.Result.ERROR);
            }
        } else {
            Timber.m31i("Tried to purchase item without supplying a SkuType.", new Object[0]);
        }
    }

    public List<PlayStoreReceipt> checkOwnedItems() {
        ArrayList arrayList = new ArrayList();
        if (!this.boundToService) {
            return arrayList;
        }
        try {
            Bundle purchases = this.billingService.getPurchases(3, getPackageName(), IABConstants.ITEM_TYPE_INAPP, null);
            Bundle purchases2 = this.billingService.getPurchases(3, getPackageName(), "subs", null);
            IABV3Helper.Result result = IABV3Helper.Result.get(purchases.getInt("RESPONSE_CODE"));
            IABV3Helper.Result result2 = IABV3Helper.Result.get(purchases2.getInt("RESPONSE_CODE"));
            if (result == IABV3Helper.Result.OK && result2 == IABV3Helper.Result.OK) {
                ArrayList arrayList2 = new ArrayList();
                ArrayList<String> stringArrayList = purchases.getStringArrayList(IABV3Helper.INAPP_PURCHASE_ITEM_LIST);
                ArrayList<String> stringArrayList2 = purchases2.getStringArrayList(IABV3Helper.INAPP_PURCHASE_ITEM_LIST);
                if (stringArrayList != null) {
                    arrayList2.addAll(stringArrayList);
                }
                if (stringArrayList2 != null) {
                    arrayList2.addAll(stringArrayList2);
                }
                ArrayList arrayList3 = new ArrayList();
                ArrayList<String> stringArrayList3 = purchases.getStringArrayList(IABV3Helper.INAPP_PURCHASE_DATA_LIST);
                ArrayList<String> stringArrayList4 = purchases2.getStringArrayList(IABV3Helper.INAPP_PURCHASE_DATA_LIST);
                if (stringArrayList3 != null) {
                    arrayList3.addAll(stringArrayList3);
                }
                if (stringArrayList4 != null) {
                    arrayList3.addAll(stringArrayList4);
                }
                ArrayList arrayList4 = new ArrayList();
                ArrayList<String> stringArrayList5 = purchases.getStringArrayList(IABV3Helper.INAPP_DATA_SIGNATURE_LIST);
                ArrayList<String> stringArrayList6 = purchases2.getStringArrayList(IABV3Helper.INAPP_DATA_SIGNATURE_LIST);
                if (stringArrayList5 != null) {
                    arrayList4.addAll(stringArrayList5);
                }
                if (stringArrayList6 != null) {
                    arrayList4.addAll(stringArrayList6);
                }
                if (arrayList3.isEmpty()) {
                    Timber.m31i("No owned products were found.", new Object[0]);
                } else if (arrayList4.size() >= arrayList3.size()) {
                    for (int i = 0; i < arrayList3.size(); i++) {
                        Timber.m37d("Purchase info for %s: %s --- %s", arrayList2.get(i), arrayList3.get(i), arrayList4.get(i));
                        PlayStoreReceipt playStoreReceipt = new PlayStoreReceipt();
                        playStoreReceipt.setProductId((String) arrayList2.get(i));
                        playStoreReceipt.setData((String) arrayList3.get(i));
                        playStoreReceipt.setSignature((String) arrayList4.get(i));
                        arrayList.add(playStoreReceipt);
                    }
                } else {
                    Timber.m25w("data/signature size mismatch.", new Object[0]);
                }
            }
            reportErrorCode(null, result, result2);
        } catch (RemoteException e) {
            reportErrorCode(null, IABV3Helper.Result.ERROR);
            Timber.m23w(e, "", new Object[0]);
        }
        return arrayList;
    }

    public void consume() {
        try {
            int consumePurchase = this.billingService.consumePurchase(3, getPackageName(), "inapp:com.privacystar.android:android.test.purchased");
            Timber.m37d("Consumption response: %s", Integer.valueOf(consumePurchase));
            reportErrorCode(null, IABV3Helper.Result.get(consumePurchase));
        } catch (RemoteException e) {
            Timber.m23w(e, "Exception occurred during consume attempt.", new Object[0]);
            reportErrorCode(null, IABV3Helper.Result.ERROR);
        }
    }

    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        IABV3Helper.Result result = IABV3Helper.Result.ERROR;
        IABV3Helper.Result result2 = result;
        if (i == 12340) {
            result2 = result;
            if (intent != null) {
                int intExtra = intent.getIntExtra("RESPONSE_CODE", 6);
                String stringExtra = intent.getStringExtra(IABV3Helper.INAPP_PURCHASE_DATA);
                String stringExtra2 = intent.getStringExtra(IABV3Helper.INAPP_DATA_SIGNATURE);
                result2 = IABV3Helper.Result.get(intExtra);
                if (i2 == -1) {
                    try {
                        PlayStoreReceipt playStoreReceipt = new PlayStoreReceipt();
                        playStoreReceipt.setSignature(stringExtra2);
                        playStoreReceipt.setData(stringExtra);
                        playStoreReceipt.setProductId(new JSONObject(stringExtra).getString("productId"));
                        Timber.m28v("Setting purchase succeeded: true.", new Object[0]);
                        PreferenceUtil.putLastPurchaseSucceeded(true);
                        reportPurchaseStateChanged(playStoreReceipt, stringExtra2);
                        trackPaymentAnalytics(true);
                        if (!PreferenceUtil.getHasFinishedOnboarding() && getResources().getBoolean(C1566R.bool.variant_has_local_notifications)) {
                            PreferenceUtil.putShouldScheduleWelcomeSubscriberMessage(true);
                        }
                    } catch (Exception e) {
                        Timber.m32e(e, "Failed to parse purchase data.", new Object[0]);
                        result2 = IABV3Helper.Result.ERROR;
                    }
                } else {
                    Timber.m25w("Bad response code from activity result: %d. Accompanied by response from GP: %d", Integer.valueOf(i2), Integer.valueOf(intExtra));
                    trackPaymentAnalytics(false);
                    Timber.m28v("Setting purchase succeeded: false.", new Object[0]);
                    PreferenceUtil.putLastPurchaseFailed(true);
                    if (result2 == IABV3Helper.Result.ITEM_UNAVAILABLE || result2 == IABV3Helper.Result.BILLING_UNAVAILABLE) {
                        Snackbar.make(findViewById(C1566R.C1569id.iabV3view), "Item cannot be found to purchase. Is your account enrolled as an Alpha tester?", 0).setAction(ApptentiveConstants.ONBOARDING_SUBSCRIPTION_KEY, (View.OnClickListener) null).show();
                    }
                }
            }
        }
        reportErrorCode(null, result2);
    }

    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!restartAppIfPermissionsMissing() || !AppManagerImpl.INSTANCE.permissionsReqForIAB()) {
            setContentView(C1566R.C1571layout.activity_iab_v3);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            boolean bindService = bindService(intent, this.serviceConnection, 1);
            this.boundToService = bindService;
            if (!bindService) {
                reportErrorCode(null, IABV3Helper.Result.ERROR);
                return;
            }
            return;
        }
        Timber.m37d("returning - missing permissions", new Object[0]);
        finishAffinity();
    }

    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        if (this.boundToService && this.serviceConnection != null) {
            unbindService(this.serviceConnection);
            this.boundToService = false;
        }
        super.onDestroy();
    }

    public void processIntent() {
        Intent intent = getIntent();
        if (intent == null || !intent.hasExtra(IABConstants.EXTRA_ACTION)) {
            Timber.m37d("IAB launched without action extra in intent.", new Object[0]);
            finish();
            return;
        }
        String stringExtra = intent.getStringExtra(IABConstants.EXTRA_ACTION);
        if (Text.equals(stringExtra, IABConstants.ACTION_PURCHASE)) {
            Timber.m37d("Activity launched to make a purchase.", new Object[0]);
            buyItem(intent.getStringExtra(IABConstants.EXTRA_SKU), intent.getStringExtra("payload"), intent.getSerializableExtra("type"));
        } else if (Text.equals(stringExtra, IABConstants.ACTION_CHECK)) {
            Timber.m37d("Activity launched to check owned items.", new Object[0]);
            PlayStoreReceiptRealm.setPurchaseHistory(getRealm(), checkOwnedItems());
        } else if (Text.equals(stringExtra, IABConstants.ACTION_CONSUME)) {
            Timber.m37d("Activity launched to consume purchases.", new Object[0]);
            consume();
        } else {
            Timber.m37d("Activity launched with an undefined or missing action code.", new Object[0]);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.PSActivity
    public boolean restartAppIfPermissionsMissing() {
        if (PermissionUtils.hasGeneralPermissions(this)) {
            return false;
        }
        Timber.m37d("Received PermissionResult without calling it - permissions must have changed by user.", new Object[0]);
        return true;
    }

    protected void verifyLaunchIntent() {
        if (BillingHelper.consumeIntent()) {
            Timber.m28v("Consumed billing launch intent.", new Object[0]);
            return;
        }
        Timber.m31i("Did not find a launch intent to consume - activity probably restarted by system.", new Object[0]);
        Timber.m37d("Navigating to app start.", new Object[0]);
        Intent intent = new Intent(this, SplashActivity.class);
        intent.setFlags(268435456);
        intent.addFlags(134217728);
        intent.addFlags(4);
        startActivity(intent);
    }
}
