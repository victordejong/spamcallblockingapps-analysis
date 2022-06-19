package p000;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.android.vending.billing.IInAppBillingService;
import com.kedlin.cca.core.util.billing.Purchase;
import com.kedlin.cca.core.util.billing.SkuDetails;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
/* renamed from: na1 */
/* loaded from: classes3-dex2jar.jar:na1.class */
public class na1 {

    /* renamed from: a */
    public boolean f7090a = false;

    /* renamed from: b */
    public String f7091b = "IabHelper";

    /* renamed from: c */
    public boolean f7092c = false;

    /* renamed from: d */
    public boolean f7093d = false;

    /* renamed from: e */
    public boolean f7094e = false;

    /* renamed from: f */
    public volatile boolean f7095f = false;

    /* renamed from: g */
    public volatile boolean f7096g = false;

    /* renamed from: h */
    public String f7097h = "";

    /* renamed from: i */
    public Context f7098i;

    /* renamed from: j */
    public IInAppBillingService f7099j;

    /* renamed from: k */
    public ServiceConnection f7100k;

    /* renamed from: l */
    public int f7101l;

    /* renamed from: m */
    public String f7102m;

    /* renamed from: n */
    public String f7103n;

    /* renamed from: o */
    public AbstractC1494f f7104o;

    /* renamed from: na1$a */
    /* loaded from: classes3-dex2jar.jar:na1$a.class */
    public class ServiceConnectionC1486a implements ServiceConnection {

        /* renamed from: a */
        public final /* synthetic */ AbstractC1495g f7105a;

        public ServiceConnectionC1486a(AbstractC1495g abstractC1495g) {
            na1.this = r4;
            this.f7105a = abstractC1495g;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            na1 na1Var = na1.this;
            if (na1Var.f7093d) {
                return;
            }
            na1Var.m1198n("Billing service connected.");
            na1.this.f7099j = IInAppBillingService.Stub.asInterface(iBinder);
            String packageName = na1.this.f7098i.getPackageName();
            try {
                na1.this.m1198n("Checking for in-app billing 3 support.");
                int isBillingSupported = na1.this.f7099j.isBillingSupported(3, packageName, "inapp");
                if (isBillingSupported != 0) {
                    AbstractC1495g abstractC1495g = this.f7105a;
                    if (abstractC1495g != null) {
                        abstractC1495g.mo1186a(new oa1(isBillingSupported, "Error checking for billing v3 support."));
                    }
                    na1.this.f7094e = false;
                    return;
                }
                na1 na1Var2 = na1.this;
                na1Var2.m1198n("In-app billing version 3 supported for " + packageName);
                int isBillingSupported2 = na1.this.f7099j.isBillingSupported(3, packageName, "subs");
                if (isBillingSupported2 == 0) {
                    na1.this.m1198n("Subscriptions AVAILABLE.");
                    na1.this.f7094e = true;
                } else {
                    na1 na1Var3 = na1.this;
                    na1Var3.m1198n("Subscriptions NOT AVAILABLE. Response: " + isBillingSupported2);
                }
                na1.this.f7092c = true;
                AbstractC1495g abstractC1495g2 = this.f7105a;
                if (abstractC1495g2 == null) {
                    return;
                }
                abstractC1495g2.mo1186a(new oa1(0, "Setup successful."));
            } catch (RemoteException e) {
                AbstractC1495g abstractC1495g3 = this.f7105a;
                if (abstractC1495g3 != null) {
                    abstractC1495g3.mo1186a(new oa1(-1001, "RemoteException while setting up in-app billing."));
                }
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            na1.this.m1198n("Billing service disconnected.");
            na1.this.f7099j = null;
        }
    }

    /* renamed from: na1$b */
    /* loaded from: classes3-dex2jar.jar:na1$b.class */
    public class RunnableC1487b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ boolean f7107a;

        /* renamed from: b */
        public final /* synthetic */ List f7108b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC1496h f7109c;

        /* renamed from: d */
        public final /* synthetic */ Handler f7110d;

        /* renamed from: na1$b$a */
        /* loaded from: classes3-dex2jar.jar:na1$b$a.class */
        public class RunnableC1488a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ oa1 f7112a;

            /* renamed from: b */
            public final /* synthetic */ pa1 f7113b;

            public RunnableC1488a(oa1 oa1Var, pa1 pa1Var) {
                RunnableC1487b.this = r4;
                this.f7112a = oa1Var;
                this.f7113b = pa1Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                RunnableC1487b.this.f7109c.m1185a(this.f7112a, this.f7113b);
            }
        }

        public RunnableC1487b(boolean z, List list, AbstractC1496h abstractC1496h, Handler handler) {
            na1.this = r4;
            this.f7107a = z;
            this.f7108b = list;
            this.f7109c = abstractC1496h;
            this.f7110d = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            pa1 pa1Var;
            oa1 oa1Var = new oa1(0, "Inventory refresh successful.");
            try {
                pa1Var = na1.this.m1195q(this.f7107a, this.f7108b);
            } catch (ma1 e) {
                oa1Var = e.m1276a();
                pa1Var = null;
            }
            na1.this.m1205g();
            if (na1.this.f7093d || this.f7109c == null) {
                return;
            }
            this.f7110d.post(new RunnableC1488a(oa1Var, pa1Var));
        }
    }

    /* renamed from: na1$c */
    /* loaded from: classes3-dex2jar.jar:na1$c.class */
    public class RunnableC1489c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f7115a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC1492d f7116b;

        /* renamed from: c */
        public final /* synthetic */ Handler f7117c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC1493e f7118d;

        /* renamed from: na1$c$a */
        /* loaded from: classes3-dex2jar.jar:na1$c$a.class */
        public class RunnableC1490a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ List f7120a;

            public RunnableC1490a(List list) {
                RunnableC1489c.this = r4;
                this.f7120a = list;
            }

            @Override // java.lang.Runnable
            public void run() {
                RunnableC1489c runnableC1489c = RunnableC1489c.this;
                runnableC1489c.f7116b.m1189a((Purchase) runnableC1489c.f7115a.get(0), (oa1) this.f7120a.get(0));
            }
        }

        /* renamed from: na1$c$b */
        /* loaded from: classes3-dex2jar.jar:na1$c$b.class */
        public class RunnableC1491b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ List f7122a;

            public RunnableC1491b(List list) {
                RunnableC1489c.this = r4;
                this.f7122a = list;
            }

            @Override // java.lang.Runnable
            public void run() {
                RunnableC1489c runnableC1489c = RunnableC1489c.this;
                runnableC1489c.f7118d.m1188a(runnableC1489c.f7115a, this.f7122a);
            }
        }

        public RunnableC1489c(List list, AbstractC1492d abstractC1492d, Handler handler, AbstractC1493e abstractC1493e) {
            na1.this = r4;
            this.f7115a = list;
            this.f7116b = abstractC1492d;
            this.f7117c = handler;
            this.f7118d = abstractC1493e;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = new ArrayList();
            for (Purchase purchase : this.f7115a) {
                try {
                    na1.this.m1209c(purchase);
                    arrayList.add(new oa1(0, "Successful consume of sku " + purchase.m4348e()));
                } catch (ma1 e) {
                    arrayList.add(e.m1276a());
                }
            }
            na1.this.m1205g();
            if (!na1.this.f7093d && this.f7116b != null) {
                this.f7117c.post(new RunnableC1490a(arrayList));
            }
            if (na1.this.f7093d || this.f7118d == null) {
                return;
            }
            this.f7117c.post(new RunnableC1491b(arrayList));
        }
    }

    /* renamed from: na1$d */
    /* loaded from: classes3-dex2jar.jar:na1$d.class */
    public interface AbstractC1492d {
        /* renamed from: a */
        void m1189a(Purchase purchase, oa1 oa1Var);
    }

    /* renamed from: na1$e */
    /* loaded from: classes3-dex2jar.jar:na1$e.class */
    public interface AbstractC1493e {
        /* renamed from: a */
        void m1188a(List<Purchase> list, List<oa1> list2);
    }

    /* renamed from: na1$f */
    /* loaded from: classes3-dex2jar.jar:na1$f.class */
    public interface AbstractC1494f {
        /* renamed from: a */
        void m1187a(oa1 oa1Var, Purchase purchase);
    }

    /* renamed from: na1$g */
    /* loaded from: classes3-dex2jar.jar:na1$g.class */
    public interface AbstractC1495g {
        /* renamed from: a */
        void mo1186a(oa1 oa1Var);
    }

    /* renamed from: na1$h */
    /* loaded from: classes3-dex2jar.jar:na1$h.class */
    public interface AbstractC1496h {
        /* renamed from: a */
        void m1185a(oa1 oa1Var, pa1 pa1Var);
    }

    public na1(Context context, String str) {
        this.f7103n = null;
        this.f7098i = context.getApplicationContext();
        this.f7103n = str;
        m1198n("IAB helper created.");
    }

    /* renamed from: k */
    public static String m1201k(int i) {
        StringBuilder sb;
        String str;
        String[] split = "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned".split("/");
        String[] split2 = "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt".split("/");
        if (i <= -1000) {
            int i2 = (-1000) - i;
            if (i2 >= 0 && i2 < split2.length) {
                return split2[i2];
            }
            sb = new StringBuilder();
            sb.append(i);
            str = ":Unknown IAB Helper Error";
        } else if (i >= 0 && i < split.length) {
            return split[i];
        } else {
            sb = new StringBuilder();
            sb.append(i);
            str = ":Unknown";
        }
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: a */
    public final void m1211a() {
        if (!this.f7093d) {
            return;
        }
        throw new IllegalStateException("IabHelper was disposed of, so it cannot be used.");
    }

    /* renamed from: b */
    public void m1210b(String str) {
        if (this.f7092c) {
            return;
        }
        m1197o("Illegal state for operation (" + str + "): IAB helper is not set up.");
        throw new IllegalStateException("IAB helper is not set up. Can't perform operation: " + str);
    }

    /* renamed from: c */
    public void m1209c(Purchase purchase) {
        m1211a();
        m1210b("consume");
        if (!purchase.f3729a.equals("inapp")) {
            throw new ma1(-1010, "Items of type '" + purchase.f3729a + "' can't be consumed.");
        }
        try {
            String m4347f = purchase.m4347f();
            String m4348e = purchase.m4348e();
            if (m4348e == null || m4348e.equals("")) {
                m1197o("Can't consume sku");
                throw new ma1(-1010, "PurchaseInfo is missing sku: " + purchase);
            } else if (m4347f == null || m4347f.equals("")) {
                m1197o("Can't consume " + m4348e + ". No token.");
                throw new ma1(-1007, "PurchaseInfo is missing token for sku: " + m4348e + " " + purchase);
            } else {
                m1198n("Consuming sku: " + m4348e + ", token: " + m4347f);
                int consumePurchase = this.f7099j.consumePurchase(3, this.f7098i.getPackageName(), m4347f);
                if (consumePurchase == 0) {
                    m1198n("Successfully consumed sku: " + m4348e);
                    return;
                }
                m1198n("Error consuming consuming sku " + m4348e + ". " + m1201k(consumePurchase));
                throw new ma1(consumePurchase, "Error consuming sku " + m4348e);
            }
        } catch (RemoteException e) {
            throw new ma1(-1001, "Remote exception while consuming. PurchaseInfo: " + purchase, e);
        }
    }

    /* renamed from: d */
    public void m1208d(List<Purchase> list, AbstractC1493e abstractC1493e) {
        m1211a();
        m1210b("consume");
        m1207e(list, null, abstractC1493e);
    }

    /* renamed from: e */
    public void m1207e(List<Purchase> list, AbstractC1492d abstractC1492d, AbstractC1493e abstractC1493e) {
        Handler handler = new Handler();
        m1204h("consume");
        new Thread(new RunnableC1489c(list, abstractC1492d, handler, abstractC1493e)).start();
    }

    /* renamed from: f */
    public void m1206f() {
        if (this.f7095f) {
            this.f7096g = true;
            return;
        }
        m1198n("Disposing.");
        this.f7092c = false;
        if (this.f7100k != null) {
            m1198n("Unbinding from service.");
            Context context = this.f7098i;
            if (context != null) {
                context.unbindService(this.f7100k);
            }
        }
        this.f7093d = true;
        this.f7098i = null;
        this.f7100k = null;
        this.f7099j = null;
        this.f7104o = null;
    }

    /* renamed from: g */
    public void m1205g() {
        m1198n("Ending async operation: " + this.f7097h);
        this.f7097h = "";
        this.f7095f = false;
        if (this.f7096g) {
            m1206f();
        }
    }

    /* renamed from: h */
    public void m1204h(String str) {
        if (!this.f7095f) {
            this.f7097h = str;
            this.f7095f = true;
            m1198n("Starting async operation: " + str);
            return;
        }
        throw new IllegalStateException("Can't start async operation (" + str + ") because another async operation(" + this.f7097h + ") is in progress.");
    }

    /* renamed from: i */
    public int m1203i(Bundle bundle) {
        Object obj = bundle.get("RESPONSE_CODE");
        if (obj == null) {
            m1198n("Bundle with null response code, assuming OK (known issue)");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            if (obj instanceof Long) {
                return (int) ((Long) obj).longValue();
            }
            m1197o("Unexpected type for bundle response code.");
            m1197o(obj.getClass().getName());
            throw new RuntimeException("Unexpected type for bundle response code: " + obj.getClass().getName());
        }
    }

    /* renamed from: j */
    public int m1202j(Intent intent) {
        Object obj = intent.getExtras().get("RESPONSE_CODE");
        if (obj == null) {
            m1197o("Intent with no response code, assuming OK (known issue)");
            return 0;
        } else if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        } else {
            if (obj instanceof Long) {
                return (int) ((Long) obj).longValue();
            }
            m1197o("Unexpected type for intent response code.");
            m1197o(obj.getClass().getName());
            throw new RuntimeException("Unexpected type for intent response code: " + obj.getClass().getName());
        }
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.StringBuilder, int] */
    /* JADX WARN: Type inference failed for: r0v15, types: [na1$f, int] */
    /* JADX WARN: Type inference failed for: r0v19, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v20, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v22, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v25, types: [na1$f, oa1] */
    /* JADX WARN: Type inference failed for: r0v29, types: [na1$f, oa1] */
    /* JADX WARN: Type inference failed for: r0v36, types: [na1$f, com.kedlin.cca.core.util.billing.Purchase] */
    /* JADX WARN: Type inference failed for: r0v39, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.StringBuilder, int] */
    /* JADX WARN: Type inference failed for: r0v40, types: [java.lang.StringBuilder, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v42, types: [na1$f, com.kedlin.cca.core.util.billing.Purchase, oa1] */
    /* JADX WARN: Type inference failed for: r0v46, types: [na1$f, oa1] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.StringBuilder, int] */
    /* renamed from: l */
    public boolean m1200l(int i, int i2, Intent intent) {
        oa1 oa1Var;
        AbstractC1494f abstractC1494f;
        if (i != this.f7101l) {
            return false;
        }
        m1211a();
        m1210b("handleActivityResult");
        m1205g();
        if (intent == null) {
            m1197o("Null data in IAB activity result.");
            new oa1(-1002, "Null data in IAB result");
            ?? r0 = this.f7104o;
            if (r0 == 0) {
                return true;
            }
            r0.m1187a(r0, null);
            return true;
        }
        m1202j(intent);
        intent.getStringExtra("INAPP_PURCHASE_DATA");
        String stringExtra = intent.getStringExtra("INAPP_DATA_SIGNATURE");
        if (i2 != -1 || stringExtra != null) {
            if (i2 == -1) {
                ?? sb = new StringBuilder();
                sb.append("Result code was OK but in-app billing response was not OK: ");
                sb.append(m1201k(sb));
                m1198n(sb.toString());
                ?? r02 = this.f7104o;
                if (r02 == 0) {
                    return true;
                }
                oa1Var = new oa1(r02, "Problem purchashing item.");
                abstractC1494f = this.f7104o;
            } else if (i2 == 0) {
                ?? sb2 = new StringBuilder();
                sb2.append("Purchase canceled - Response: ");
                sb2.append(m1201k(sb2));
                m1198n(sb2.toString());
                oa1Var = new oa1(-1005, "User canceled.");
                abstractC1494f = this.f7104o;
                if (abstractC1494f == null) {
                    return true;
                }
            } else {
                ?? sb3 = new StringBuilder();
                sb3.append("Purchase failed. Result code: ");
                sb3.append(i2);
                sb3.append(". Response: ");
                sb3.append(m1201k(sb3));
                m1197o(sb3.toString());
                oa1Var = new oa1(-1006, "Unknown purchase response.");
                abstractC1494f = this.f7104o;
                if (abstractC1494f == null) {
                    return true;
                }
            }
            abstractC1494f.m1187a(oa1Var, null);
            return true;
        }
        m1198n("Successful resultcode from purchase activity.");
        ?? sb4 = new StringBuilder();
        sb4.append("Purchase data: ");
        sb4.append(sb4);
        m1198n(sb4.toString());
        ?? sb5 = new StringBuilder();
        sb5.append("Data signature: ");
        sb5.append(sb5);
        m1198n(sb5.toString());
        m1198n("Extras: " + intent.getExtras());
        ?? sb6 = new StringBuilder();
        sb6.append("Expected item type: ");
        sb6.append(this.f7102m);
        m1198n(sb6.toString());
        if (sb6 == 0 || sb6 == 0) {
            m1197o("BUG: either purchaseData or dataSignature is null.");
            m1198n("Extras: " + intent.getExtras().toString());
            new oa1(-1008, "IAB returned null purchaseData or dataSignature");
            ?? r03 = this.f7104o;
            if (r03 == 0) {
                return true;
            }
            r03.m1187a(r03, null);
            return true;
        }
        try {
            new Purchase(this.f7102m, sb6, sb6).m4348e();
            String str = this.f7103n;
            if (qa1.m843c(str, str, str)) {
                m1198n("Purchase signature successfully verified.");
                ?? r04 = this.f7104o;
                if (r04 == 0) {
                    return true;
                }
                r04.m1187a(new oa1(0, "Success"), r04);
                return true;
            }
            ?? sb7 = new StringBuilder();
            sb7.append("Purchase signature verification FAILED for sku ");
            sb7.append(sb7);
            m1197o(sb7.toString());
            ?? sb8 = new StringBuilder();
            sb8.append("Signature verification failed for sku ");
            sb8.append(sb8);
            new oa1(-1003, sb8.toString());
            ?? r05 = this.f7104o;
            if (r05 == 0) {
                return true;
            }
            r05.m1187a(r05, r05);
            return true;
        } catch (JSONException e) {
            m1197o("Failed to parse purchase data.");
            e.printStackTrace();
            new oa1(-1002, "Failed to parse purchase data.");
            ?? r06 = this.f7104o;
            if (r06 == 0) {
                return true;
            }
            r06.m1187a(r06, null);
            return true;
        }
    }

    /* renamed from: m */
    public void m1199m(Activity activity, String str, String str2, int i, AbstractC1494f abstractC1494f, String str3) {
        oa1 oa1Var;
        m1211a();
        m1210b("launchPurchaseFlow");
        m1204h("launchPurchaseFlow");
        if (str2.equals("subs") && !this.f7094e) {
            oa1 oa1Var2 = new oa1(-1009, "Subscriptions are not available.");
            m1205g();
            if (abstractC1494f == null) {
                return;
            }
            abstractC1494f.m1187a(oa1Var2, null);
            return;
        }
        try {
            m1198n("Constructing buy intent for " + str + ", item type: " + str2);
            Bundle buyIntent = this.f7099j.getBuyIntent(3, this.f7098i.getPackageName(), str, str2, str3);
            int m1203i = m1203i(buyIntent);
            if (m1203i != 0) {
                m1197o("Unable to buy item, Error response: " + m1201k(m1203i));
                m1205g();
                oa1 oa1Var3 = new oa1(m1203i, "Unable to buy item");
                if (abstractC1494f == null) {
                    return;
                }
                abstractC1494f.m1187a(oa1Var3, null);
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) buyIntent.getParcelable("BUY_INTENT");
            m1198n("Launching buy intent for " + str + ". Request code: " + i);
            this.f7101l = i;
            this.f7104o = abstractC1494f;
            this.f7102m = str2;
            Integer num = 0;
            Integer num2 = 0;
            Integer num3 = 0;
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i, new Intent(), num.intValue(), num2.intValue(), num3.intValue());
        } catch (IntentSender.SendIntentException e) {
            m1197o("SendIntentException while launching purchase flow for sku " + str);
            e.printStackTrace();
            m1205g();
            oa1Var = new oa1(-1004, "Failed to send intent.");
            if (abstractC1494f == null) {
                return;
            }
            abstractC1494f.m1187a(oa1Var, null);
        } catch (RemoteException e2) {
            m1197o("RemoteException while launching purchase flow for sku " + str);
            e2.printStackTrace();
            m1205g();
            oa1Var = new oa1(-1001, "Remote exception while starting purchase flow");
            if (abstractC1494f == null) {
                return;
            }
            abstractC1494f.m1187a(oa1Var, null);
        }
    }

    /* renamed from: n */
    public void m1198n(String str) {
        boolean z = this.f7090a;
    }

    /* renamed from: o */
    public void m1197o(String str) {
        String str2 = this.f7091b;
        j91.m1505k(str2, "In-app billing error: " + str);
    }

    /* renamed from: p */
    public void m1196p(String str) {
        String str2 = this.f7091b;
        j91.m1517G(str2, "In-app billing warning: " + str);
    }

    /* renamed from: q */
    public pa1 m1195q(boolean z, List<String> list) {
        return m1194r(z, list, null);
    }

    /* renamed from: r */
    public pa1 m1194r(boolean z, List<String> list, List<String> list2) {
        int m1191u;
        int m1191u2;
        m1211a();
        m1210b("queryInventory");
        try {
            pa1 pa1Var = new pa1();
            int m1192t = m1192t(pa1Var, "inapp");
            if (m1192t != 0) {
                throw new ma1(m1192t, "Error refreshing inventory (querying owned items).");
            }
            if (z && (m1191u2 = m1191u("inapp", pa1Var, list)) != 0) {
                throw new ma1(m1191u2, "Error refreshing inventory (querying prices of items).");
            }
            if (this.f7094e) {
                int m1192t2 = m1192t(pa1Var, "subs");
                if (m1192t2 != 0) {
                    throw new ma1(m1192t2, "Error refreshing inventory (querying owned subscriptions).");
                }
                if (z && (m1191u = m1191u("subs", pa1Var, list)) != 0) {
                    throw new ma1(m1191u, "Error refreshing inventory (querying prices of subscriptions).");
                }
            }
            return pa1Var;
        } catch (RemoteException e) {
            throw new ma1(-1001, "Remote exception while refreshing inventory.", e);
        } catch (JSONException e2) {
            throw new ma1(-1002, "Error parsing JSON response while refreshing inventory.", e2);
        }
    }

    /* renamed from: s */
    public void m1193s(boolean z, List<String> list, AbstractC1496h abstractC1496h) {
        Handler handler = new Handler();
        m1211a();
        m1210b("queryInventory");
        m1204h("refresh inventory");
        new Thread(new RunnableC1487b(z, list, abstractC1496h, handler)).start();
    }

    /* renamed from: t */
    public int m1192t(pa1 pa1Var, String str) {
        Bundle purchases;
        boolean z;
        String string;
        m1198n("Querying owned items, item type: " + str);
        m1198n("Package name: " + this.f7098i.getPackageName());
        String str2 = null;
        boolean z2 = false;
        do {
            m1198n("Calling getPurchases with continuation token: " + str2);
            IInAppBillingService iInAppBillingService = this.f7099j;
            if (iInAppBillingService == null || (purchases = iInAppBillingService.getPurchases(3, this.f7098i.getPackageName(), str, str2)) == null) {
                return -1000;
            }
            int m1203i = m1203i(purchases);
            m1198n("Owned items response: " + m1203i);
            if (m1203i != 0) {
                m1198n("getPurchases() failed: " + m1201k(m1203i));
                return m1203i;
            } else if (!purchases.containsKey("INAPP_PURCHASE_ITEM_LIST") || !purchases.containsKey("INAPP_PURCHASE_DATA_LIST") || !purchases.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
                m1197o("Bundle returned from getPurchases() doesn't contain required fields.");
                return -1002;
            } else {
                ArrayList<String> stringArrayList = purchases.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList<String> stringArrayList2 = purchases.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList<String> stringArrayList3 = purchases.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                z = z2;
                for (int i = 0; i < stringArrayList2.size(); i++) {
                    String str3 = stringArrayList2.get(i);
                    String str4 = stringArrayList3.get(i);
                    String str5 = stringArrayList.get(i);
                    if (qa1.m843c(this.f7103n, str3, str4)) {
                        m1198n("Sku is owned: " + str5);
                        Purchase purchase = new Purchase(str, str3, str4);
                        if (TextUtils.isEmpty(purchase.m4347f())) {
                            m1196p("BUG: empty/null token!");
                            m1198n("Purchase data: " + str3);
                        }
                        pa1Var.m935a(purchase);
                    } else {
                        m1196p("Purchase signature verification **FAILED**. Not adding item.");
                        m1198n("   Purchase data: " + str3);
                        m1198n("   Signature: " + str4);
                        z = true;
                    }
                }
                string = purchases.getString("INAPP_CONTINUATION_TOKEN");
                m1198n("Continuation token: " + string);
                str2 = string;
                z2 = z;
            }
        } while (!TextUtils.isEmpty(string));
        int i2 = 0;
        if (z) {
            i2 = -1003;
        }
        return i2;
    }

    /* renamed from: u */
    public int m1191u(String str, pa1 pa1Var, List<String> list) {
        m1198n("Querying SKU details.");
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.addAll(pa1Var.m933c(str));
        if (list != null) {
            for (String str2 : list) {
                if (!arrayList.contains(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        if (arrayList.size() == 0) {
            m1198n("queryPrices: nothing to do because there are no SKUs.");
            return 0;
        }
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("ITEM_ID_LIST", arrayList);
        Bundle skuDetails = this.f7099j.getSkuDetails(3, this.f7098i.getPackageName(), str, bundle);
        if (!skuDetails.containsKey("DETAILS_LIST")) {
            int m1203i = m1203i(skuDetails);
            if (m1203i == 0) {
                m1197o("getSkuDetails() returned a bundle with neither an error nor a detail list.");
                return -1002;
            }
            m1198n("getSkuDetails() failed: " + m1201k(m1203i));
            return m1203i;
        }
        Iterator<String> it = skuDetails.getStringArrayList("DETAILS_LIST").iterator();
        while (it.hasNext()) {
            SkuDetails skuDetails2 = new SkuDetails(str, it.next());
            m1198n("Got sku details: " + skuDetails2);
            pa1Var.m934b(skuDetails2);
        }
        return 0;
    }

    /* renamed from: v */
    public void m1190v(AbstractC1495g abstractC1495g) {
        m1211a();
        if (!this.f7092c) {
            m1198n("Starting in-app billing setup.");
            this.f7100k = new ServiceConnectionC1486a(abstractC1495g);
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            if (this.f7098i.getPackageManager().queryIntentServices(intent, 0) != null && !this.f7098i.getPackageManager().queryIntentServices(intent, 0).isEmpty()) {
                this.f7098i.bindService(intent, this.f7100k, 1);
                return;
            } else if (abstractC1495g == null) {
                return;
            } else {
                abstractC1495g.mo1186a(new oa1(3, "Billing service unavailable on device."));
                return;
            }
        }
        throw new IllegalStateException("IAB helper is already set up.");
    }
}
