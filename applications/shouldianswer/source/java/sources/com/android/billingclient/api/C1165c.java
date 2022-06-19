package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.text.TextUtils;
import com.android.billingclient.api.C1173f;
import com.android.billingclient.api.C1176h;
import com.android.billingclient.p060a.C1158a;
import com.android.vending.billing.IInAppBillingService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
/* renamed from: com.android.billingclient.api.c */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/c.class */
public class C1165c extends AbstractC1162b {

    /* renamed from: d */
    private final C1159a f3716d;

    /* renamed from: e */
    private final Context f3717e;

    /* renamed from: f */
    private IInAppBillingService f3718f;

    /* renamed from: g */
    private ServiceConnection f3719g;

    /* renamed from: h */
    private boolean f3720h;

    /* renamed from: i */
    private boolean f3721i;

    /* renamed from: j */
    private boolean f3722j;

    /* renamed from: k */
    private boolean f3723k;

    /* renamed from: l */
    private ExecutorService f3724l;

    /* renamed from: a */
    private int f3713a = 0;

    /* renamed from: b */
    private int f3714b = 0;

    /* renamed from: c */
    private final Handler f3715c = new Handler();

    /* renamed from: m */
    private final ResultReceiver f3725m = new ResultReceiver(new Handler()) { // from class: com.android.billingclient.api.BillingClientImpl$1
        @Override // android.os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            C1159a c1159a;
            c1159a = C1165c.this.f3716d;
            AbstractC1175g m3921b = c1159a.m3921b();
            if (m3921b == null) {
                C1158a.m3925b("BillingClient", "PurchasesUpdatedListener is null - no way to return the response.");
            } else {
                m3921b.mo520a(i, C1158a.m3928a(bundle));
            }
        }
    };

    /* renamed from: com.android.billingclient.api.c$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/c$a.class */
    private final class ServiceConnectionC1168a implements ServiceConnection {

        /* renamed from: b */
        private final AbstractC1169d f3733b;

        private ServiceConnectionC1168a(AbstractC1169d abstractC1169d) {
            C1165c.this = r5;
            if (abstractC1169d != null) {
                this.f3733b = abstractC1169d;
                return;
            }
            throw new RuntimeException("Please specify a listener to know when init is done.");
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C1158a.m3926a("BillingClient", "Billing service connected.");
            C1165c.this.f3718f = IInAppBillingService.Stub.m3855a(iBinder);
            String packageName = C1165c.this.f3717e.getPackageName();
            int i = 8;
            int i2 = 3;
            while (true) {
                if (i < 3) {
                    i = 0;
                    break;
                }
                try {
                    i2 = C1165c.this.f3718f.mo3854a(i, packageName, "subs");
                    if (i2 == 0) {
                        break;
                    }
                    i--;
                } catch (RemoteException e) {
                    C1158a.m3925b("BillingClient", "RemoteException while setting up in-app billing" + e);
                    C1165c.this.f3713a = 0;
                    C1165c.this.f3718f = null;
                    this.f3733b.mo493a(-1);
                    return;
                }
            }
            C1165c.this.f3721i = i >= 5;
            C1165c.this.f3720h = i >= 3;
            if (i < 3) {
                C1158a.m3926a("BillingClient", "In-app billing API does not support subscription on this device.");
            }
            int i3 = 8;
            while (true) {
                if (i3 < 3) {
                    i3 = 0;
                    break;
                }
                i2 = C1165c.this.f3718f.mo3854a(i3, packageName, "inapp");
                if (i2 == 0) {
                    break;
                }
                i3--;
            }
            C1165c.this.f3723k = i3 >= 8;
            C1165c.this.f3722j = i3 >= 6;
            if (i3 < 3) {
                C1158a.m3925b("BillingClient", "In-app billing API version 3 is not supported on this device.");
            }
            if (i2 == 0) {
                C1165c.this.f3713a = 2;
            } else {
                C1165c.this.f3713a = 0;
                C1165c.this.f3718f = null;
            }
            this.f3733b.mo493a(i2);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C1158a.m3925b("BillingClient", "Billing service disconnected.");
            C1165c.this.f3718f = null;
            C1165c.this.f3713a = 0;
            this.f3733b.mo494a();
        }
    }

    public C1165c(Context context, AbstractC1175g abstractC1175g) {
        this.f3717e = context.getApplicationContext();
        this.f3716d = new C1159a(this.f3717e, abstractC1175g);
    }

    /* renamed from: a */
    private int m3914a(int i) {
        this.f3716d.m3921b().mo520a(i, null);
        return i;
    }

    /* renamed from: a */
    private Bundle m3906a(C1170e c1170e) {
        Bundle bundle = new Bundle();
        if (c1170e.m3881g() != 0) {
            bundle.putInt("prorationMode", c1170e.m3881g());
        }
        if (c1170e.m3883e() != null) {
            bundle.putString("accountId", c1170e.m3883e());
        }
        if (c1170e.m3882f()) {
            bundle.putBoolean("vr", true);
        }
        if (c1170e.m3885d() != null) {
            bundle.putStringArrayList("skusToReplace", new ArrayList<>(Arrays.asList(c1170e.m3885d())));
        }
        return bundle;
    }

    /* renamed from: a */
    private C1173f.C1174a m3901a(String str, boolean z) {
        Bundle mo3851a;
        String string;
        C1158a.m3926a("BillingClient", "Querying owned items, item type: " + str + "; history: " + z);
        ArrayList arrayList = new ArrayList();
        String str2 = null;
        do {
            if (z) {
                try {
                    if (!this.f3722j) {
                        C1158a.m3925b("BillingClient", "getPurchaseHistory is not supported on current device");
                        return new C1173f.C1174a(-2, null);
                    }
                    mo3851a = this.f3718f.mo3851a(6, this.f3717e.getPackageName(), str, str2, (Bundle) null);
                } catch (RemoteException e) {
                    C1158a.m3925b("BillingClient", "Got exception trying to get purchases: " + e + "; try to reconnect");
                    return new C1173f.C1174a(-1, null);
                }
            } else {
                mo3851a = this.f3718f.mo3852a(3, this.f3717e.getPackageName(), str, str2);
            }
            if (mo3851a == null) {
                C1158a.m3925b("BillingClient", "queryPurchases got null owned items list");
                return new C1173f.C1174a(6, null);
            }
            int m3927a = C1158a.m3927a(mo3851a, "BillingClient");
            if (m3927a != 0) {
                C1158a.m3925b("BillingClient", "getPurchases() failed. Response code: " + m3927a);
                return new C1173f.C1174a(m3927a, null);
            } else if (!mo3851a.containsKey("INAPP_PURCHASE_ITEM_LIST") || !mo3851a.containsKey("INAPP_PURCHASE_DATA_LIST") || !mo3851a.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                C1158a.m3925b("BillingClient", "Bundle returned from getPurchases() doesn't contain required fields.");
                return new C1173f.C1174a(6, null);
            } else {
                ArrayList<String> stringArrayList = mo3851a.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = mo3851a.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = mo3851a.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                if (stringArrayList == null) {
                    C1158a.m3925b("BillingClient", "Bundle returned from getPurchases() contains null SKUs list.");
                    return new C1173f.C1174a(6, null);
                } else if (stringArrayList2 == null) {
                    C1158a.m3925b("BillingClient", "Bundle returned from getPurchases() contains null purchases list.");
                    return new C1173f.C1174a(6, null);
                } else if (stringArrayList3 == null) {
                    C1158a.m3925b("BillingClient", "Bundle returned from getPurchases() contains null signatures list.");
                    return new C1173f.C1174a(6, null);
                } else {
                    for (int i = 0; i < stringArrayList2.size(); i++) {
                        String str3 = stringArrayList2.get(i);
                        String str4 = stringArrayList3.get(i);
                        C1158a.m3926a("BillingClient", "Sku is owned: " + stringArrayList.get(i));
                        try {
                            C1173f c1173f = new C1173f(str3, str4);
                            if (TextUtils.isEmpty(c1173f.m3874b())) {
                                C1158a.m3925b("BillingClient", "BUG: empty/null token!");
                            }
                            arrayList.add(c1173f);
                        } catch (JSONException e2) {
                            C1158a.m3925b("BillingClient", "Got an exception trying to decode the purchase: " + e2);
                            return new C1173f.C1174a(6, null);
                        }
                    }
                    string = mo3851a.getString("INAPP_CONTINUATION_TOKEN");
                    C1158a.m3926a("BillingClient", "Continuation token: " + string);
                    str2 = string;
                }
            }
        } while (!TextUtils.isEmpty(string));
        return new C1173f.C1174a(0, arrayList);
    }

    /* renamed from: a */
    private void m3904a(Runnable runnable) {
        if (this.f3724l == null) {
            this.f3724l = Executors.newFixedThreadPool(C1158a.f3703a);
        }
        this.f3724l.submit(runnable);
    }

    /* renamed from: b */
    public void m3898b(Runnable runnable) {
        this.f3715c.post(runnable);
    }

    @Override // com.android.billingclient.api.AbstractC1162b
    /* renamed from: a */
    public int mo3913a(Activity activity, C1170e c1170e) {
        String str;
        Bundle bundle;
        if (!m3915a()) {
            return m3914a(-1);
        }
        String m3889b = c1170e.m3889b();
        String m3894a = c1170e.m3894a();
        C1176h m3887c = c1170e.m3887c();
        boolean z = m3887c != null && m3887c.m3867d();
        if (m3894a == null) {
            C1158a.m3925b("BillingClient", "Please fix the input params. SKU can't be null.");
            return m3914a(5);
        } else if (m3889b == null) {
            C1158a.m3925b("BillingClient", "Please fix the input params. SkuType can't be null.");
            return m3914a(5);
        } else if (m3889b.equals("subs") && !this.f3720h) {
            C1158a.m3925b("BillingClient", "Current client doesn't support subscriptions.");
            return m3914a(-2);
        } else {
            boolean z2 = c1170e.m3885d() != null;
            if (z2 && !this.f3721i) {
                C1158a.m3925b("BillingClient", "Current client doesn't support subscriptions update.");
                return m3914a(-2);
            } else if (c1170e.m3880h() && !this.f3722j) {
                C1158a.m3925b("BillingClient", "Current client doesn't support extra params for buy intent.");
                return m3914a(-2);
            } else if (z && !this.f3722j) {
                C1158a.m3925b("BillingClient", "Current client doesn't support extra params for buy intent.");
                return m3914a(-2);
            } else {
                try {
                    C1158a.m3926a("BillingClient", "Constructing buy intent for " + m3894a + ", item type: " + m3889b);
                    if (this.f3722j) {
                        Bundle m3906a = m3906a(c1170e);
                        m3906a.putString("libraryVersion", "1.2");
                        if (z) {
                            m3906a.putString("rewardToken", m3887c.m3866e());
                            if (this.f3714b == 1 || this.f3714b == 2) {
                                m3906a.putInt("childDirected", this.f3714b);
                            }
                        }
                        bundle = this.f3718f.mo3849a(c1170e.m3882f() ? 7 : 6, this.f3717e.getPackageName(), m3894a, m3889b, (String) null, m3906a);
                    } else {
                        try {
                            if (z2) {
                                bundle = this.f3718f.mo3848a(5, this.f3717e.getPackageName(), Arrays.asList(c1170e.m3885d()), m3894a, "subs", (String) null);
                            } else {
                                try {
                                    bundle = this.f3718f.mo3850a(3, this.f3717e.getPackageName(), m3894a, m3889b, (String) null);
                                } catch (RemoteException unused) {
                                    str = "BillingClient";
                                    C1158a.m3925b(str, "RemoteException while launching launching replace subscriptions flow: ; for sku: " + m3894a + "; try to reconnect");
                                    return m3914a(-1);
                                }
                            }
                        } catch (RemoteException e) {
                            str = "BillingClient";
                        }
                    }
                    int m3927a = C1158a.m3927a(bundle, "BillingClient");
                    if (m3927a != 0) {
                        C1158a.m3925b("BillingClient", "Unable to buy item, Error response code: " + m3927a);
                        return m3914a(m3927a);
                    }
                    Intent intent = new Intent(activity, ProxyBillingActivity.class);
                    intent.putExtra("result_receiver", this.f3725m);
                    intent.putExtra("BUY_INTENT", (PendingIntent) bundle.getParcelable("BUY_INTENT"));
                    activity.startActivity(intent);
                    return 0;
                } catch (RemoteException e2) {
                    str = "BillingClient";
                }
            }
        }
    }

    @Override // com.android.billingclient.api.AbstractC1162b
    /* renamed from: a */
    public C1173f.C1174a mo3903a(String str) {
        if (!m3915a()) {
            return new C1173f.C1174a(-1, null);
        }
        if (!TextUtils.isEmpty(str)) {
            return m3901a(str, false);
        }
        C1158a.m3925b("BillingClient", "Please provide a valid SKU type.");
        return new C1173f.C1174a(5, null);
    }

    /* renamed from: a */
    C1176h.C1177a m3902a(String str, List<String> list) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < size) {
                int i3 = i2 + 20;
                ArrayList<String> arrayList2 = new ArrayList<>(list.subList(i2, i3 > size ? size : i3));
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("ITEM_ID_LIST", arrayList2);
                bundle.putString("libraryVersion", "1.2");
                try {
                    Bundle mo3853a = this.f3718f.mo3853a(3, this.f3717e.getPackageName(), str, bundle);
                    if (mo3853a == null) {
                        C1158a.m3925b("BillingClient", "querySkuDetailsAsync got null sku details list");
                        return new C1176h.C1177a(4, null);
                    } else if (!mo3853a.containsKey("DETAILS_LIST")) {
                        int m3927a = C1158a.m3927a(mo3853a, "BillingClient");
                        if (m3927a == 0) {
                            C1158a.m3925b("BillingClient", "getSkuDetails() returned a bundle with neither an error nor a detail list.");
                            return new C1176h.C1177a(6, arrayList);
                        }
                        C1158a.m3925b("BillingClient", "getSkuDetails() failed. Response code: " + m3927a);
                        return new C1176h.C1177a(m3927a, arrayList);
                    } else {
                        ArrayList<String> stringArrayList = mo3853a.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList == null) {
                            C1158a.m3925b("BillingClient", "querySkuDetailsAsync got null response list");
                            return new C1176h.C1177a(4, null);
                        }
                        for (int i4 = 0; i4 < stringArrayList.size(); i4++) {
                            try {
                                C1176h c1176h = new C1176h(stringArrayList.get(i4));
                                C1158a.m3926a("BillingClient", "Got sku details: " + c1176h);
                                arrayList.add(c1176h);
                            } catch (JSONException e) {
                                C1158a.m3925b("BillingClient", "Got a JSON exception trying to decode SkuDetails");
                                return new C1176h.C1177a(6, null);
                            }
                        }
                        i = i3;
                    }
                } catch (RemoteException e2) {
                    C1158a.m3925b("BillingClient", "querySkuDetailsAsync got a remote exception (try to reconnect): " + e2);
                    return new C1176h.C1177a(-1, null);
                }
            } else {
                return new C1176h.C1177a(0, arrayList);
            }
        }
    }

    @Override // com.android.billingclient.api.AbstractC1162b
    /* renamed from: a */
    public void mo3907a(AbstractC1169d abstractC1169d) {
        if (m3915a()) {
            C1158a.m3926a("BillingClient", "Service connection is valid. No need to re-initialize.");
            abstractC1169d.mo493a(0);
            return;
        }
        int i = this.f3713a;
        if (i == 1) {
            C1158a.m3925b("BillingClient", "Client is already in the process of connecting to billing service.");
            abstractC1169d.mo493a(5);
        } else if (i == 3) {
            C1158a.m3925b("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
            abstractC1169d.mo493a(5);
        } else {
            this.f3713a = 1;
            this.f3716d.m3923a();
            C1158a.m3926a("BillingClient", "Starting in-app billing setup.");
            this.f3719g = new ServiceConnectionC1168a(abstractC1169d);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            List<ResolveInfo> queryIntentServices = this.f3717e.getPackageManager().queryIntentServices(intent, 0);
            if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
                ResolveInfo resolveInfo = queryIntentServices.get(0);
                if (resolveInfo.serviceInfo != null) {
                    String str = resolveInfo.serviceInfo.packageName;
                    String str2 = resolveInfo.serviceInfo.name;
                    if (!"com.android.vending".equals(str) || str2 == null) {
                        C1158a.m3925b("BillingClient", "The device doesn't have valid Play Store.");
                    } else {
                        ComponentName componentName = new ComponentName(str, str2);
                        Intent intent2 = new Intent(intent);
                        intent2.setComponent(componentName);
                        intent2.putExtra("libraryVersion", "1.2");
                        if (this.f3717e.bindService(intent2, this.f3719g, 1)) {
                            C1158a.m3926a("BillingClient", "Service was bonded successfully.");
                            return;
                        }
                        C1158a.m3925b("BillingClient", "Connection to Billing service is blocked.");
                    }
                }
            }
            this.f3713a = 0;
            C1158a.m3926a("BillingClient", "Billing service unavailable on device.");
            abstractC1169d.mo493a(3);
        }
    }

    @Override // com.android.billingclient.api.AbstractC1162b
    /* renamed from: a */
    public void mo3905a(C1178i c1178i, final AbstractC1181j abstractC1181j) {
        if (!m3915a()) {
            abstractC1181j.mo492a(-1, null);
            return;
        }
        final String m3863a = c1178i.m3863a();
        final List<String> m3860b = c1178i.m3860b();
        if (TextUtils.isEmpty(m3863a)) {
            C1158a.m3925b("BillingClient", "Please fix the input params. SKU type can't be empty.");
            abstractC1181j.mo492a(5, null);
        } else if (m3860b != null) {
            m3904a(new Runnable() { // from class: com.android.billingclient.api.c.1
                @Override // java.lang.Runnable
                public void run() {
                    final C1176h.C1177a m3902a = C1165c.this.m3902a(m3863a, m3860b);
                    C1165c.this.m3898b(new Runnable() { // from class: com.android.billingclient.api.c.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            abstractC1181j.mo492a(m3902a.m3864b(), m3902a.m3865a());
                        }
                    });
                }
            });
        } else {
            C1158a.m3925b("BillingClient", "Please fix the input params. The list of SKUs can't be empty.");
            abstractC1181j.mo492a(5, null);
        }
    }

    /* renamed from: a */
    public boolean m3915a() {
        return (this.f3713a != 2 || this.f3718f == null || this.f3719g == null) ? false : true;
    }
}
