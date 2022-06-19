package com.razorpay;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.LinearLayout;
import com.huawei.hms.framework.common.ContainerUtils;
import com.razorpay.CheckoutUtils;
import com.razorpay.Y_;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/razorpay/CheckoutUtils.class */
public final class CheckoutUtils {

    /* renamed from: a */
    private static Dialog f9358a;

    /* loaded from: classes3-dex2jar.jar:com/razorpay/CheckoutUtils$BackButtonDialogCallback.class */
    public interface BackButtonDialogCallback {
        void onNegativeButtonClick();

        void onPositiveButtonClick();
    }

    /* renamed from: a */
    public static String m36145a(Context context) {
        return C2735h.m36079a(context).getString("rzp_user_email", null);
    }

    /* renamed from: a */
    public static String m36139a(String str, String str2, String str3) {
        if (str == null) {
            return null;
        }
        if (str2 == null) {
            return str;
        }
        StringBuilder m8728C = C22128a.m8728C(str);
        String str4 = "?";
        if (str.contains("?")) {
            str4 = ContainerUtils.FIELD_DELIMITER;
        }
        String m8618h = C22128a.m8618h(m8728C, str4, str2);
        return str3 == null ? m8618h : C22128a.m8725C2(m8618h, ContainerUtils.KEY_VALUE_DELIMITER, str3);
    }

    /* renamed from: a */
    private static JSONObject m36144a(Context context, ResolveInfo resolveInfo) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("package_name", resolveInfo.activityInfo.packageName);
            jSONObject.put("app_name", BaseUtils.getAppNameOfResolveInfo(resolveInfo, context));
            jSONObject.put("app_icon", BaseUtils.getBase64FromOtherAppsResource(context, resolveInfo.activityInfo.packageName));
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.WARNING, e.getMessage());
            e.printStackTrace();
        }
        return jSONObject;
    }

    /* renamed from: a */
    private static JSONObject m36140a(ResolveInfo resolveInfo) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!resolveInfo.activityInfo.packageName.contains("com.dreamplug.androidapp")) {
                return null;
            }
            jSONObject.put("package_name", "com.dreamplug.androidapp");
            jSONObject.put("shortcode", "cred");
            jSONObject.put("uri", BaseConstants.CRED_URL_SCHEMA);
            return jSONObject;
        } catch (Exception e) {
            e.printStackTrace();
            AnalyticsUtil.reportError(e, "error", e.getMessage());
            return null;
        }
    }

    /* renamed from: a */
    public static void m36147a() {
        Dialog dialog = f9358a;
        if (dialog == null) {
            return;
        }
        if (dialog.isShowing()) {
            try {
                f9358a.dismiss();
            } catch (Exception e) {
                d__1_.m36087a("Error dismissing loader", e);
            }
        }
        f9358a = null;
    }

    /* renamed from: a */
    public static void m36146a(Activity activity) {
        activity.getWindow().addFlags(2048);
        activity.getWindow().clearFlags(1024);
    }

    /* renamed from: a */
    public static void m36143a(Context context, String str) {
        SharedPreferences.Editor m36076b = C2735h.m36076b(context);
        m36076b.putString("rzp_user_email", str);
        m36076b.commit();
    }

    /* renamed from: a */
    public static void m36142a(Context context, String str, String str2) {
        SharedPreferences.Editor m36076b = C2735h.m36076b(context);
        if (str2 == null) {
            m36076b.remove("pref_merchant_options_" + str);
        } else {
            m36076b.putString("pref_merchant_options_" + str, str2);
        }
        m36076b.apply();
    }

    /* renamed from: a */
    public static void m36141a(Context context, String str, String str2, String str3, final BackButtonDialogCallback backButtonDialogCallback) {
        new AlertDialog.Builder(context).setMessage(str).setPositiveButton(str2, new E__a_(backButtonDialogCallback)).setNegativeButton(str3, new DialogInterface.OnClickListener() { // from class: com.razorpay.K_$q$
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                CheckoutUtils.BackButtonDialogCallback.this.onNegativeButtonClick();
            }
        }).show();
    }

    /* renamed from: b */
    public static String m36138b(Context context) {
        return C2735h.m36079a(context).getString("rzp_user_contact", null);
    }

    /* renamed from: b */
    public static void m36137b(Context context, String str) {
        SharedPreferences.Editor m36076b = C2735h.m36076b(context);
        m36076b.putString("rzp_user_contact", str);
        m36076b.commit();
    }

    /* renamed from: c */
    public static JSONArray m36136c(Context context) {
        List<ResolveInfo> listOfAppsWhichHandleDeepLink = BaseUtils.getListOfAppsWhichHandleDeepLink(context, BaseConstants.UPI_URL_SCHEMA);
        if (listOfAppsWhichHandleDeepLink == null || listOfAppsWhichHandleDeepLink.size() <= 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (ResolveInfo resolveInfo : listOfAppsWhichHandleDeepLink) {
            jSONArray.put(m36144a(context, resolveInfo));
        }
        return jSONArray;
    }

    /* renamed from: d */
    public static JSONArray m36135d(Context context) {
        List<ResolveInfo> listOfAppsWhichHandleDeepLink = BaseUtils.getListOfAppsWhichHandleDeepLink(context, "credpay://checkout");
        if (listOfAppsWhichHandleDeepLink == null || listOfAppsWhichHandleDeepLink.size() <= 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (ResolveInfo resolveInfo : listOfAppsWhichHandleDeepLink) {
            jSONArray.put(m36140a(resolveInfo));
        }
        return jSONArray;
    }

    /* renamed from: e */
    public static void m36134e(Context context) {
        if (Y_.H_.a().d() && context != null && !((Activity) context).isFinishing()) {
            Dialog dialog = f9358a;
            if (dialog != null && dialog.isShowing()) {
                return;
            }
            Dialog dialog2 = new Dialog(context);
            f9358a = dialog2;
            dialog2.requestWindowFeature(1);
            f9358a.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            f9358a.setContentView(C2728R.layout.rzp_loader);
            ((CircularProgressView) f9358a.findViewById(C2728R.C2730id.progressBar)).setColor(Color.parseColor(Y_.H_.a().c()));
            ((LinearLayout) f9358a.findViewById(C2728R.C2730id.ll_loader)).setOnClickListener(new View.OnClickListener() { // from class: com.razorpay.t$$1$
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CheckoutUtils.m36147a();
                }
            });
            try {
                f9358a.show();
            } catch (Exception e) {
                d__1_.m36087a("Error showing loader", e);
            }
        }
    }
}
