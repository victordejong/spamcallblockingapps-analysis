package com.asus.blocklist;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.asuscallerid.c;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.blocklist.b;
import com.asus.snapcall.a;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2514a = e.class.getSimpleName();
    private static String d = null;

    /* renamed from: b  reason: collision with root package name */
    public static int f2515b = 0;
    public static int c = 0;
    private static boolean e = false;
    private static boolean f = false;
    private static int g = -1;
    private static Boolean h = false;

    public static void a(Context context, int i, String str) {
        if (g != i) {
            switch (i) {
                case 0:
                    e = false;
                    if (g == 1) {
                        Log.d(f2514a, "onCallStateChanged: End of Missing Call");
                        if (!PhoneCapabilityTester.IsAsusDevice()) {
                            b a2 = b.a();
                            String str2 = d;
                            int i2 = f2515b;
                            int i3 = c;
                            Log.d(b.f2457a, "handleIncomingCallEnd");
                            new b.AsyncTaskC0065b(a2, context, str2, a2.d, a2.e, i2, i3).execute(new Void[0]);
                        } else {
                            c.a().c();
                            if (c == 1) {
                                b a3 = b.a();
                                String str3 = d;
                                int i4 = f2515b;
                                int i5 = c;
                                Log.d(b.f2457a, "handleIncomingCallEndForAsus");
                                new b.c(a3, context, str3, a3.d, a3.e, i4, i5).execute(new Void[0]);
                            }
                        }
                    } else if (h.booleanValue()) {
                        Log.d(f2514a, "onCallStateChanged: End of Incoming Call");
                        if (c == 1) {
                            c.a().c();
                        } else if (c == -1) {
                        }
                    } else {
                        Log.d(f2514a, "onCallStateChanged: End of Outgoing Call");
                        if (!PhoneCapabilityTester.IsAsusDevice()) {
                            b a4 = b.a();
                            String str4 = d;
                            if (a4.c) {
                                new b.e(context, str4).execute(new Void[0]);
                            }
                        } else {
                            c.a().c();
                            new b.f(context, d, c).execute(new Void[0]);
                        }
                    }
                    if (c == 1) {
                        c.a().a(context);
                    }
                    new a(context, com.asus.snapcall.c.a(), d).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                    com.asus.snapcall.c.a(false);
                    d = null;
                    f = false;
                    break;
                case 1:
                    Log.d(f2514a, "onCallStateChanged: Start of Incoming Call");
                    d = str;
                    h = true;
                    e = true;
                    c.e = 1;
                    if (!f || PhoneCapabilityTester.IsAsusDevice() || PhoneCapabilityTester.IsUnbundled() || !CompatUtils.isMarshmallowCompatible()) {
                        new b.d(context, d, f2515b, c).execute(new String[0]);
                    }
                    new com.asus.snapcall.b(context, com.asus.snapcall.c.a(), d).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                    break;
                case 2:
                    if (g == 1) {
                        Log.d(f2514a, "onCallStateChanged: Pickup of Incoming Call");
                        if (c == 1) {
                            c.a().a(context);
                        }
                    } else {
                        Log.d(f2514a, "onCallStateChanged: Start of Outgoing Call");
                        if (!TextUtils.isEmpty(str)) {
                            Log.w(f2514a, "onCallStateChanged: Outgoing_call number exist in INTENT:PHONE_STATE");
                            if (d == null) {
                                Log.w(f2514a, "onCallStateChanged: Get outgoing_call number by INTENT:PHONE_STATE");
                                d = str;
                            }
                            e = true;
                            c.e = 2;
                            h = false;
                            new b.g(context, d, c, f2515b).execute(new String[0]);
                            c.a().a(context, d, c, 2);
                            com.asus.snapcall.c.a(true);
                            new com.asus.snapcall.b(context, com.asus.snapcall.c.a(), d).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                        } else {
                            Log.w(f2514a, "onCallStateChanged: Outgoing_call number not exist in INTENT:PHONE_STATE");
                            return;
                        }
                    }
                    f = true;
                    break;
                default:
                    Log.e(f2514a, "onCallStateChanged: State not defined:" + i);
                    break;
            }
            g = i;
            Log.d(f2514a, "onCallStateChanged: number:" + com.asus.a.a.c(str) + ", saved number: " + com.asus.a.a.c(d));
        }
    }

    public static void a(String str) {
        d = str;
    }

    public static boolean a() {
        return e;
    }
}
