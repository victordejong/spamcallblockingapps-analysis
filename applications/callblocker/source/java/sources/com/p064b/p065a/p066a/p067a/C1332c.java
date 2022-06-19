package com.p064b.p065a.p066a.p067a;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.android.vending.billing.IInAppBillingService;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
/* renamed from: com.b.a.a.a.c */
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/c.class */
public class C1332c extends C1330a {

    /* renamed from: a */
    private static final Date f4399a;

    /* renamed from: b */
    private static final Date f4400b;

    /* renamed from: c */
    private IInAppBillingService f4401c;

    /* renamed from: e */
    private String f4403e;

    /* renamed from: h */
    private AbstractC1335b f4406h;

    /* renamed from: i */
    private String f4407i;

    /* renamed from: j */
    private boolean f4408j;

    /* renamed from: k */
    private ServiceConnection f4409k = new ServiceConnection() { // from class: com.b.a.a.a.c.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            C1332c.this.f4401c = IInAppBillingService.Stub.asInterface(iBinder);
            new AsyncTaskC1334a().execute(new Void[0]);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            C1332c.this.f4401c = null;
        }
    };

    /* renamed from: d */
    private String f4402d = m17486a().getPackageName();

    /* renamed from: f */
    private C1331b f4404f = new C1331b(m17486a(), ".products.cache.v2_6");

    /* renamed from: g */
    private C1331b f4405g = new C1331b(m17486a(), ".subscriptions.cache.v2_6");

    /* renamed from: com.b.a.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/a/c$a.class */
    private class AsyncTaskC1334a extends AsyncTask<Void, Void, Boolean> {
        private AsyncTaskC1334a() {
            C1332c.this = r4;
        }

        /* renamed from: a */
        public Boolean doInBackground(Void... voidArr) {
            Boolean bool;
            if (!C1332c.this.m17440j()) {
                C1332c.this.m17444f();
                bool = true;
            } else {
                bool = false;
            }
            return bool;
        }

        /* renamed from: a */
        public void onPostExecute(Boolean bool) {
            if (bool.booleanValue()) {
                C1332c.this.m17439k();
                if (C1332c.this.f4406h != null) {
                    C1332c.this.f4406h.mo844a();
                }
            }
            if (C1332c.this.f4406h != null) {
                C1332c.this.f4406h.mo845B_();
            }
        }
    }

    /* renamed from: com.b.a.a.a.c$b */
    /* loaded from: classes-dex2jar.jar:com/b/a/a/a/c$b.class */
    public interface AbstractC1335b {
        /* renamed from: B_ */
        void mo845B_();

        /* renamed from: a */
        void mo844a();

        /* renamed from: a */
        void mo843a(int i, Throwable th);

        /* renamed from: a */
        void mo842a(String str, C1342h c1342h);
    }

    static {
        Calendar calendar = Calendar.getInstance();
        calendar.set(2012, 11, 5);
        f4399a = calendar.getTime();
        calendar.set(2015, 6, 21);
        f4400b = calendar.getTime();
    }

    private C1332c(Context context, String str, String str2, AbstractC1335b abstractC1335b, boolean z) {
        super(context.getApplicationContext());
        this.f4403e = str;
        this.f4406h = abstractC1335b;
        this.f4407i = str2;
        if (z) {
            m17441i();
        }
    }

    /* renamed from: a */
    public static C1332c m17463a(Context context, String str, AbstractC1335b abstractC1335b) {
        return m17462a(context, str, null, abstractC1335b);
    }

    /* renamed from: a */
    public static C1332c m17462a(Context context, String str, String str2, AbstractC1335b abstractC1335b) {
        return new C1332c(context, str, str2, abstractC1335b, false);
    }

    /* renamed from: a */
    private String m17455a(JSONObject jSONObject) {
        String m17438l = m17438l();
        return (TextUtils.isEmpty(m17438l) || !m17438l.startsWith("subs")) ? (jSONObject == null || !jSONObject.has("autoRenewing")) ? "inapp" : "subs" : "subs";
    }

    /* renamed from: a */
    private void m17468a(int i, Throwable th) {
        if (this.f4406h != null) {
            this.f4406h.mo843a(i, th);
        }
    }

    /* renamed from: a */
    private boolean m17466a(Activity activity, List<String> list, String str, String str2, String str3) {
        return m17465a(activity, list, str, str2, str3, null);
    }

    /* renamed from: a */
    private boolean m17465a(Activity activity, List<String> list, String str, String str2, String str3, Bundle bundle) {
        boolean z;
        Bundle buyIntent;
        if (!m17446e() || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            z = false;
        } else {
            try {
                String str4 = str2 + ":" + str;
                String str5 = str4;
                if (!str2.equals("subs")) {
                    str5 = str4 + ":" + UUID.randomUUID().toString();
                }
                String str6 = str5;
                if (str3 != null) {
                    str6 = str5 + ":" + str3;
                }
                m17445e(str6);
                if (list == null || !str2.equals("subs")) {
                    buyIntent = bundle == null ? this.f4401c.getBuyIntent(3, this.f4402d, str, str2, str6) : this.f4401c.getBuyIntentExtraParams(7, this.f4402d, str, str2, str6, bundle);
                } else if (bundle == null) {
                    buyIntent = this.f4401c.getBuyIntentToReplaceSkus(5, this.f4402d, list, str, str2, str6);
                } else {
                    if (!bundle.containsKey("skusToReplace")) {
                        bundle.putStringArrayList("skusToReplace", new ArrayList<>(list));
                    }
                    buyIntent = this.f4401c.getBuyIntentExtraParams(7, this.f4402d, str, str2, str6, bundle);
                }
                if (buyIntent != null) {
                    int i = buyIntent.getInt("RESPONSE_CODE");
                    if (i == 0) {
                        PendingIntent pendingIntent = (PendingIntent) buyIntent.getParcelable("BUY_INTENT");
                        if (activity == null || pendingIntent == null) {
                            m17468a(103, (Throwable) null);
                        } else {
                            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), 32459, new Intent(), 0, 0, 0);
                        }
                    } else if (i == 7) {
                        if (!m17458a(str) && !m17453b(str)) {
                            m17444f();
                        }
                        C1342h m17449c = m17449c(str);
                        if (!m17459a(m17449c)) {
                            Log.i("iabv3", "Invalid or tampered merchant id!");
                            m17468a(104, (Throwable) null);
                            z = false;
                        } else if (this.f4406h != null) {
                            C1342h c1342h = m17449c;
                            if (m17449c == null) {
                                c1342h = m17447d(str);
                            }
                            this.f4406h.mo842a(str, c1342h);
                        }
                    } else {
                        m17468a(101, (Throwable) null);
                    }
                }
                z = true;
            } catch (Exception e) {
                Log.e("iabv3", "Error in purchase", e);
                m17468a(110, e);
                z = false;
            }
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m17464a(Context context) {
        List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(m17442h(), 0);
        boolean z = false;
        if (queryIntentServices != null) {
            z = false;
            if (queryIntentServices.size() > 0) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: a */
    private boolean m17459a(C1342h c1342h) {
        boolean z;
        if (this.f4407i == null) {
            z = true;
        } else {
            z = true;
            if (!c1342h.f4432e.f4422c.f4415d.before(f4399a)) {
                z = true;
                if (!c1342h.f4432e.f4422c.f4415d.after(f4400b)) {
                    if (c1342h.f4432e.f4422c.f4412a == null || c1342h.f4432e.f4422c.f4412a.trim().length() == 0) {
                        z = false;
                    } else {
                        int indexOf = c1342h.f4432e.f4422c.f4412a.indexOf(46);
                        if (indexOf <= 0) {
                            z = false;
                        } else {
                            z = true;
                            if (c1342h.f4432e.f4422c.f4412a.substring(0, indexOf).compareTo(this.f4407i) != 0) {
                                z = false;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    private boolean m17457a(String str, C1331b c1331b) {
        boolean z;
        if (!m17446e()) {
            z = false;
        } else {
            try {
                Bundle purchases = this.f4401c.getPurchases(3, this.f4402d, str, null);
                if (purchases.getInt("RESPONSE_CODE") == 0) {
                    c1331b.m17476c();
                    ArrayList<String> stringArrayList = purchases.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                    ArrayList<String> stringArrayList2 = purchases.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                    if (stringArrayList != null) {
                        int i = 0;
                        while (i < stringArrayList.size()) {
                            String str2 = stringArrayList.get(i);
                            if (!TextUtils.isEmpty(str2)) {
                                c1331b.m17478a(new JSONObject(str2).getString("productId"), str2, (stringArrayList2 == null || stringArrayList2.size() <= i) ? null : stringArrayList2.get(i));
                            }
                            i++;
                        }
                    }
                    z = true;
                }
            } catch (Exception e) {
                m17468a(100, e);
                Log.e("iabv3", "Error in loadPurchasesByType", e);
            }
            z = false;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
        if (com.p064b.p065a.p066a.p067a.C1341g.m17429a(r6, r5.f4403e, r7, r8) != false) goto L7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m17456a(java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            r5 = this;
            r0 = 0
            r9 = r0
            r0 = r5
            java.lang.String r0 = r0.f4403e     // Catch: java.lang.Exception -> L24
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L24
            if (r0 != 0) goto L1e
            r0 = r6
            r1 = r5
            java.lang.String r1 = r1.f4403e     // Catch: java.lang.Exception -> L24
            r2 = r7
            r3 = r8
            boolean r0 = com.p064b.p065a.p066a.p067a.C1341g.m17429a(r0, r1, r2, r3)     // Catch: java.lang.Exception -> L24
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L21
        L1e:
            r0 = 1
            r9 = r0
        L21:
            r0 = r9
            return r0
        L24:
            r6 = move-exception
            goto L21
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p064b.p065a.p066a.p067a.C1332c.m17456a(java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    /* renamed from: b */
    private C1342h m17452b(String str, C1331b c1331b) {
        C1338e m17477b = c1331b.m17477b(str);
        return (m17477b == null || TextUtils.isEmpty(m17477b.f4420a)) ? null : new C1342h(m17477b);
    }

    /* renamed from: e */
    private void m17445e(String str) {
        m17484a(m17482b() + ".purchase.last.v2_6", str);
    }

    /* renamed from: h */
    private static Intent m17442h() {
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage("com.android.vending");
        return intent;
    }

    /* renamed from: i */
    private void m17441i() {
        try {
            m17486a().bindService(m17442h(), this.f4409k, 1);
        } catch (Exception e) {
            Log.e("iabv3", "error in bindPlayServices", e);
            m17468a(113, e);
        }
    }

    /* renamed from: j */
    public boolean m17440j() {
        return m17483a(m17482b() + ".products.restored.v2_6", false);
    }

    /* renamed from: k */
    public void m17439k() {
        m17485a(m17482b() + ".products.restored.v2_6", (Boolean) true);
    }

    /* renamed from: l */
    private String m17438l() {
        return m17481b(m17482b() + ".purchase.last.v2_6", (String) null);
    }

    /* renamed from: a */
    public boolean m17469a(int i, int i2, Intent intent) {
        boolean z = false;
        if (i == 32459) {
            if (intent == null) {
                Log.e("iabv3", "handleActivityResult: data is null!");
            } else {
                int intExtra = intent.getIntExtra("RESPONSE_CODE", 0);
                Log.d("iabv3", String.format("resultCode = %d, responseCode = %d", Integer.valueOf(i2), Integer.valueOf(intExtra)));
                if (i2 == -1 && intExtra == 0) {
                    String stringExtra = intent.getStringExtra("INAPP_PURCHASE_DATA");
                    String stringExtra2 = intent.getStringExtra("INAPP_DATA_SIGNATURE");
                    try {
                        JSONObject jSONObject = new JSONObject(stringExtra);
                        String string = jSONObject.getString("productId");
                        if (m17456a(string, stringExtra, stringExtra2)) {
                            (m17455a(jSONObject).equals("subs") ? this.f4405g : this.f4404f).m17478a(string, stringExtra, stringExtra2);
                            if (this.f4406h != null) {
                                this.f4406h.mo842a(string, new C1342h(new C1338e(stringExtra, stringExtra2)));
                            }
                        } else {
                            Log.e("iabv3", "Public key signature doesn't match!");
                            m17468a(102, (Throwable) null);
                        }
                    } catch (Exception e) {
                        Log.e("iabv3", "Error in handleActivityResult", e);
                        m17468a(110, e);
                    }
                    m17445e(null);
                } else {
                    m17468a(intExtra, (Throwable) null);
                }
                z = true;
            }
        }
        return z;
    }

    /* renamed from: a */
    public boolean m17467a(Activity activity, String str) {
        return m17466a(activity, null, str, "subs", null);
    }

    /* renamed from: a */
    public boolean m17458a(String str) {
        return this.f4404f.m17479a(str);
    }

    /* renamed from: b */
    public boolean m17453b(String str) {
        return this.f4405g.m17479a(str);
    }

    /* renamed from: c */
    public C1342h m17449c(String str) {
        return m17452b(str, this.f4404f);
    }

    /* renamed from: c */
    public void m17451c() {
        m17441i();
    }

    /* renamed from: d */
    public C1342h m17447d(String str) {
        return m17452b(str, this.f4405g);
    }

    /* renamed from: d */
    public void m17448d() {
        if (!m17446e() || this.f4409k == null) {
            return;
        }
        try {
            m17486a().unbindService(this.f4409k);
        } catch (Exception e) {
            Log.e("iabv3", "Error in release", e);
        }
        this.f4401c = null;
    }

    /* renamed from: e */
    public boolean m17446e() {
        return this.f4401c != null;
    }

    /* renamed from: f */
    public boolean m17444f() {
        return m17457a("inapp", this.f4404f) && m17457a("subs", this.f4405g);
    }

    /* renamed from: g */
    public boolean m17443g() {
        boolean z = true;
        if (!this.f4408j) {
            try {
                this.f4408j = this.f4401c.isBillingSupported(5, this.f4402d, "subs") == 0;
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            z = this.f4408j;
        }
        return z;
    }
}
