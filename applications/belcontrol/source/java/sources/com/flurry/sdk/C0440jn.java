package com.flurry.sdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.flurry.sdk.AbstractC0402a;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.flurry.sdk.jn */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/jn.class */
public class C0440jn {

    /* renamed from: a */
    private static final String f3379a = "jn";

    /* renamed from: b */
    private static Object f3380b = new Object();

    /* renamed from: c */
    private static List<AbstractC0443b> f3381c = new ArrayList();

    /* renamed from: d */
    private static AbstractC0402a f3382d;

    /* renamed from: e */
    private static ServiceConnection f3383e;

    /* renamed from: com.flurry.sdk.jn$a */
    /* loaded from: classes-dex2jar.jar:com/flurry/sdk/jn$a.class */
    public static abstract class AbstractC0442a {
        /* renamed from: a */
        public abstract void m4693a(int i, C0445c c0445c);
    }

    /* renamed from: com.flurry.sdk.jn$b */
    /* loaded from: classes-dex2jar.jar:com/flurry/sdk/jn$b.class */
    public static abstract class AbstractC0443b {
        /* renamed from: a */
        public abstract void m4692a(int i, AbstractC0402a abstractC0402a);

        /* renamed from: b */
        public final void m4691b(final int i, final AbstractC0402a abstractC0402a) {
            new Thread(new Runnable() { // from class: com.flurry.sdk.jn.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC0443b.this.m4692a(i, abstractC0402a);
                }
            }).start();
        }
    }

    /* renamed from: com.flurry.sdk.jn$c */
    /* loaded from: classes-dex2jar.jar:com/flurry/sdk/jn$c.class */
    public static final class C0445c {

        /* renamed from: a */
        public final String f3387a;

        /* renamed from: b */
        public final long f3388b;

        /* renamed from: c */
        public final String f3389c;

        /* renamed from: d */
        public final String f3390d;

        /* renamed from: e */
        private final String f3391e;

        /* renamed from: f */
        private final String f3392f;

        /* renamed from: g */
        private final String f3393g;

        /* renamed from: h */
        private final String f3394h;

        /* renamed from: i */
        private final String f3395i;

        public C0445c(String str, String str2) {
            this.f3391e = str;
            this.f3395i = str2;
            JSONObject jSONObject = new JSONObject(str2);
            this.f3392f = jSONObject.optString("productId");
            this.f3387a = jSONObject.optString("type");
            this.f3393g = jSONObject.optString("price");
            this.f3388b = jSONObject.optLong("price_amount_micros");
            this.f3389c = jSONObject.optString("price_currency_code");
            this.f3390d = jSONObject.optString("title");
            this.f3394h = jSONObject.optString("description");
        }

        public final String toString() {
            return "SkuDetails:" + this.f3395i;
        }
    }

    /* renamed from: a */
    public static void m4700a(Context context, String str, AbstractC0442a abstractC0442a) {
        AbstractC0443b abstractC0443b = new 1(context, str, abstractC0442a);
        Boolean bool = Boolean.FALSE;
        synchronized (f3380b) {
            if (f3383e == null) {
                f3383e = new ServiceConnection() { // from class: com.flurry.sdk.jn.2
                    @Override // android.content.ServiceConnection
                    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                        synchronized (C0440jn.f3380b) {
                            AbstractC0402a unused = C0440jn.f3382d = AbstractC0402a.a.a(iBinder);
                            for (AbstractC0443b abstractC0443b2 : C0440jn.f3381c) {
                                abstractC0443b2.m4691b(0, C0440jn.f3382d);
                            }
                            C0440jn.f3381c.clear();
                        }
                    }

                    @Override // android.content.ServiceConnection
                    public final void onServiceDisconnected(ComponentName componentName) {
                        synchronized (C0440jn.f3380b) {
                            ServiceConnection unused = C0440jn.f3383e = null;
                            AbstractC0402a unused2 = C0440jn.f3382d = null;
                            for (AbstractC0443b abstractC0443b2 : C0440jn.f3381c) {
                                abstractC0443b2.m4691b(1, null);
                            }
                            C0440jn.f3381c.clear();
                        }
                    }
                };
                bool = Boolean.TRUE;
            }
            AbstractC0402a abstractC0402a = f3382d;
            if (abstractC0402a == null) {
                f3381c.add(abstractC0443b);
            } else {
                abstractC0443b.m4691b(0, abstractC0402a);
            }
            if (bool.booleanValue()) {
                Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                intent.setPackage("com.android.vending");
                List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
                if (queryIntentServices == null || queryIntentServices.isEmpty()) {
                    abstractC0443b.m4691b(1, null);
                    f3383e = null;
                } else {
                    context.bindService(intent, f3383e, 1);
                }
            }
        }
    }

    /* renamed from: b */
    public static C0445c m4696b(AbstractC0402a abstractC0402a, Context context, String str, String str2) {
        String str3;
        String str4;
        Bundle bundle = new Bundle();
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(str2);
        bundle.putStringArrayList("ITEM_ID_LIST", arrayList);
        try {
            Bundle m4774a = abstractC0402a.m4774a(3, context.getPackageName(), str, bundle);
            if (!m4774a.containsKey("DETAILS_LIST")) {
                return null;
            }
            ArrayList<String> stringArrayList = m4774a.getStringArrayList("DETAILS_LIST");
            if (stringArrayList.size() <= 0) {
                return null;
            }
            return new C0445c(str, stringArrayList.get(0));
        } catch (RemoteException e) {
            e = e;
            str3 = f3379a;
            str4 = "RemoteException getting SKU Details";
            C0478ku.m4593a(str3, str4, e);
            return null;
        } catch (JSONException e2) {
            e = e2;
            str3 = f3379a;
            str4 = "JSONException parsing SKU Details";
            C0478ku.m4593a(str3, str4, e);
            return null;
        }
    }
}
