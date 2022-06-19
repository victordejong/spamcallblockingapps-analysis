package p193e.p1485h.p1486a.p1493c.p1507w0;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import com.clevertap.android.sdk.pushnotification.CTNotificationIntentService;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONObject;
import p1727n3.p1807k.p1808a.C26450q;
import p193e.p1485h.p1486a.p1493c.C22737h0;
import p193e.p1485h.p1486a.p1493c.C22741j0;
/* renamed from: e.h.a.c.w0.d */
/* loaded from: classes-dex2jar.jar:e/h/a/c/w0/d.class */
public final /* synthetic */ class C22862d {
    /* renamed from: a */
    public static C26450q m7668a(AbstractC22863e abstractC22863e, Context context, Bundle bundle, int i, C26450q c26450q, JSONArray jSONArray) {
        Class<?> cls;
        Throwable th;
        Intent intent;
        Objects.requireNonNull(C22737h0.m7853b(context));
        String str = C22737h0.f62967p;
        try {
            if (str != null) {
                try {
                    cls = Class.forName(str);
                } catch (ClassNotFoundException e) {
                    cls = Class.forName("com.clevertap.android.sdk.pushnotification.CTNotificationIntentService");
                }
            } else {
                cls = Class.forName("com.clevertap.android.sdk.pushnotification.CTNotificationIntentService");
            }
        } catch (ClassNotFoundException e2) {
            cls = null;
        }
        boolean m7838l = C22741j0.m7838l(context, cls);
        if (jSONArray != null && jSONArray.length() > 0) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i2);
                    String optString = jSONObject.optString("l");
                    String optString2 = jSONObject.optString("dl");
                    String optString3 = jSONObject.optString(abstractC22863e.mo7665c());
                    String optString4 = jSONObject.optString("id");
                    boolean optBoolean = jSONObject.optBoolean("ac", true);
                    if (!optString.isEmpty() && !optString4.isEmpty()) {
                        int identifier = !optString3.isEmpty() ? context.getResources().getIdentifier(optString3, "drawable", context.getPackageName()) : 0;
                        boolean z = Build.VERSION.SDK_INT < 31 && optBoolean && m7838l;
                        String string = bundle.getString("pt_dismiss_on_click");
                        boolean z2 = z;
                        if (!z) {
                            z2 = z;
                            if (h.c(bundle)) {
                                z2 = z;
                                if (optString4.contains("remind")) {
                                    z2 = z;
                                    if (string != null) {
                                        z2 = z;
                                        if (string.equalsIgnoreCase("true")) {
                                            z2 = z;
                                            if (optBoolean) {
                                                z2 = z;
                                                if (m7838l) {
                                                    z2 = true;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (!z2 && h.c(bundle) && string != null && string.equalsIgnoreCase("true") && optBoolean && m7838l) {
                            z2 = true;
                        }
                        if (z2) {
                            Intent intent2 = new Intent(CTNotificationIntentService.MAIN_ACTION);
                            intent2.setPackage(context.getPackageName());
                            intent2.putExtra("ct_type", CTNotificationIntentService.TYPE_BUTTON_CLICK);
                            intent = intent2;
                            if (!optString2.isEmpty()) {
                                intent2.putExtra("dl", optString2);
                                intent = intent2;
                            }
                        } else {
                            intent = !optString2.isEmpty() ? new Intent("android.intent.action.VIEW", Uri.parse(optString2)) : context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
                        }
                        if (intent != null) {
                            intent.putExtras(bundle);
                            intent.removeExtra("wzrk_acts");
                            intent.putExtra("actionId", optString4);
                            intent.putExtra(RemoteMessageConst.Notification.AUTO_CANCEL, optBoolean);
                            intent.putExtra("wzrk_c2a", optString4);
                            try {
                                intent.putExtra("notificationId", i);
                                intent.setFlags(603979776);
                            } catch (Throwable th2) {
                                th = th2;
                                th.getLocalizedMessage();
                            }
                        }
                        int currentTimeMillis = ((int) System.currentTimeMillis()) + i2;
                        c26450q.m1868a(identifier, optString, z2 ? PendingIntent.getService(context, currentTimeMillis, intent, 201326592) : PendingIntent.getActivity(context, currentTimeMillis, intent, 201326592));
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        }
        return c26450q;
    }
}
