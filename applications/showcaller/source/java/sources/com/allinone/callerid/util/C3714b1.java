package com.allinone.callerid.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.provider.CallLog;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p136b.C2242v;
import com.allinone.callerid.search.CallLogBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.allinone.callerid.util.b1 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/b1.class */
public class C3714b1 {

    /* renamed from: a */
    public static int f11903a;

    /* renamed from: b */
    public static boolean f11904b;

    /* renamed from: c */
    public static Uri f11905c;

    /* renamed from: d */
    public static String f11906d;

    /* renamed from: e */
    private static Cursor f11907e;

    /* renamed from: f */
    private static List<PhoneAccountHandle> f11908f;

    /* renamed from: g */
    private static TelecomManager f11909g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.b1$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/b1$a.class */
    public class View$OnClickListenerC3715a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ CheckBox f11910d;

        View$OnClickListenerC3715a(CheckBox checkBox) {
            this.f11910d = checkBox;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!this.f11910d.isChecked()) {
                this.f11910d.setChecked(false);
                C3711a1.m24522k1(false);
                return;
            }
            this.f11910d.setChecked(true);
            C3711a1.m24522k1(true);
            C3810q.m24071b().m24070c(C3744g1.f11939m);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.b1$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/b1$b.class */
    public class DialogInterface$OnClickListenerC3716b implements DialogInterface.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ Context f11911d;

        /* renamed from: e */
        final /* synthetic */ String f11912e;

        DialogInterface$OnClickListenerC3716b(Context context, String str) {
            this.f11911d = context;
            this.f11912e = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (C3711a1.m24639G()) {
                C3711a1.m24590S0(i);
            }
            C3714b1.m24454d(this.f11911d, i, this.f11912e);
            if (i == 0) {
                C3810q.m24071b().m24070c(C3744g1.f11937k);
            } else {
                C3810q.m24071b().m24070c(C3744g1.f11938l);
            }
        }
    }

    /* renamed from: a */
    public static void m24457a(Boolean bool, CallLogBean callLogBean, Context context) {
        try {
            int i = Build.VERSION.SDK_INT;
            if (i >= 23 && C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_PHONE_STATE") == 0) {
                TelecomManager telecomManager = (TelecomManager) context.getSystemService("telecom");
                f11909g = telecomManager;
                f11908f = telecomManager.getCallCapablePhoneAccounts();
            }
            if (!bool.booleanValue()) {
                C3809p0.m24078a(context, callLogBean.m24880o());
            } else if (C0586a.m33353a(context, "android.permission.CALL_PHONE") != 0) {
            } else {
                Intent intent = new Intent("android.intent.action.CALL", Uri.parse("tel:" + callLogBean.m24880o()));
                intent.setFlags(268435456);
                if (i < 23) {
                    return;
                }
                intent.putExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE", f11908f.get(0));
                context.startActivity(intent);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m24456b(Boolean bool, CallLogBean callLogBean, Context context) {
        List<PhoneAccountHandle> list;
        try {
            int i = Build.VERSION.SDK_INT;
            if (i >= 23 && C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_PHONE_STATE") == 0) {
                TelecomManager telecomManager = (TelecomManager) context.getSystemService("telecom");
                f11909g = telecomManager;
                f11908f = telecomManager.getCallCapablePhoneAccounts();
            }
            if (!bool.booleanValue()) {
                C3809p0.m24078a(context, callLogBean.m24880o());
            } else if (C0586a.m33353a(context, "android.permission.CALL_PHONE") != 0) {
            } else {
                Intent intent = new Intent("android.intent.action.CALL", Uri.parse("tel:" + callLogBean.m24880o()));
                intent.setFlags(268435456);
                if (i < 23 || (list = f11908f) == null || list.size() <= 1) {
                    return;
                }
                intent.putExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE", f11908f.get(1));
                context.startActivity(intent);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static Boolean m24455c(Activity activity) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            int m33353a = C0586a.m33353a(activity, "android.permission.READ_PHONE_STATE");
            int m33353a2 = i >= 16 ? C0586a.m33353a(activity, "android.permission.READ_CALL_LOG") : 0;
            int m33353a3 = C0586a.m33353a(activity, "android.permission.CALL_PHONE");
            int m33353a4 = C0586a.m33353a(activity, "android.permission.READ_CONTACTS");
            if (m33353a != 0 || m33353a2 != 0 || m33353a3 != 0 || m33353a4 != 0) {
                return Boolean.FALSE;
            }
            if (m24448j(EZCallApplication.m26146c())) {
                C3810q.m24071b().m24070c("is_doublesim");
                f11904b = true;
            } else if (!m24448j(EZCallApplication.m26146c())) {
                C3810q.m24071b().m24070c("no_doublesim");
                f11904b = false;
            }
            return Boolean.valueOf(f11904b);
        }
        return Boolean.FALSE;
    }

    /* renamed from: d */
    public static void m24454d(Context context, int i, String str) {
        Intent intent;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23 && C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_PHONE_STATE") == 0) {
            TelecomManager telecomManager = (TelecomManager) context.getSystemService("telecom");
            f11909g = telecomManager;
            f11908f = telecomManager.getCallCapablePhoneAccounts();
        }
        try {
            if (i2 >= 21) {
                Intent intent2 = new Intent("android.intent.action.CALL", Uri.parse("tel:" + Uri.encode(str)));
                intent2.setFlags(268435456);
                intent = intent2;
                if (i2 >= 23) {
                    intent2.putExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE", f11908f.get(i));
                    intent = intent2;
                }
            } else {
                Intent intent3 = new Intent("android.intent.action.CALL");
                intent3.setData(Uri.parse("tel:" + Uri.encode(str)));
                intent = intent3;
            }
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public static Map<String, Integer> m24453e(Context context) {
        List<SubscriptionInfo> activeSubscriptionInfoList;
        HashMap hashMap = new HashMap();
        try {
            if (m24448j(context) && Build.VERSION.SDK_INT >= 22 && C0586a.m33353a(context, "android.permission.READ_PHONE_STATE") == 0 && (activeSubscriptionInfoList = ((SubscriptionManager) context.getSystemService("telephony_subscription_service")).getActiveSubscriptionInfoList()) != null && activeSubscriptionInfoList.size() > 0) {
                for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("callLogs", "info:" + subscriptionInfo.toString());
                    }
                    hashMap.put(subscriptionInfo.getIccId(), Integer.valueOf(subscriptionInfo.getSimSlotIndex()));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hashMap;
    }

    /* renamed from: f */
    private static String m24452f() {
        return Build.MANUFACTURER;
    }

    /* renamed from: g */
    public static String m24451g(Cursor cursor) {
        f11907e = cursor;
        try {
            if (m24442p()) {
                int columnIndex = f11907e.getColumnIndex("sim_id");
                if (columnIndex != -1) {
                    f11906d = f11907e.getString(columnIndex);
                }
            } else if (m24445m()) {
                int columnIndex2 = f11907e.getColumnIndex("simid");
                if (columnIndex2 != -1) {
                    f11906d = f11907e.getString(columnIndex2);
                }
            } else if (m24447k()) {
                int columnIndex3 = f11907e.getColumnIndex("subscription_id");
                if (columnIndex3 != -1) {
                    f11906d = f11907e.getString(columnIndex3);
                }
            } else {
                f11906d = "4";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f11906d;
    }

    /* renamed from: h */
    public static Uri m24450h() {
        if (23 > Build.VERSION.SDK_INT || !m24442p()) {
            f11905c = CallLog.Calls.CONTENT_URI;
        } else {
            f11905c = Uri.parse("content://logs/call");
        }
        return f11905c;
    }

    /* renamed from: i */
    public static Map<Integer, Integer> m24449i(Context context) {
        List<SubscriptionInfo> activeSubscriptionInfoList;
        HashMap hashMap = new HashMap();
        try {
            if (m24448j(context) && Build.VERSION.SDK_INT >= 22 && C0586a.m33353a(context, "android.permission.READ_PHONE_STATE") == 0 && (activeSubscriptionInfoList = ((SubscriptionManager) context.getSystemService("telephony_subscription_service")).getActiveSubscriptionInfoList()) != null && activeSubscriptionInfoList.size() > 0) {
                for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                    hashMap.put(Integer.valueOf(subscriptionInfo.getSubscriptionId()), Integer.valueOf(subscriptionInfo.getSimSlotIndex()));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return hashMap;
    }

    /* renamed from: j */
    public static boolean m24448j(Context context) {
        if (Build.VERSION.SDK_INT < 22 || C0586a.m33353a(context, "android.permission.READ_PHONE_STATE") != 0) {
            return false;
        }
        int activeSubscriptionInfoCount = SubscriptionManager.from(context).getActiveSubscriptionInfoCount();
        f11903a = activeSubscriptionInfoCount;
        return activeSubscriptionInfoCount == 2;
    }

    /* renamed from: k */
    public static boolean m24447k() {
        return m24452f().equals("HUAWEI");
    }

    /* renamed from: l */
    public static boolean m24446l() {
        return "INFINIX MOBILITY LIMITED".equalsIgnoreCase(m24452f());
    }

    /* renamed from: m */
    public static boolean m24445m() {
        return m24452f().equals("Meizu");
    }

    /* renamed from: n */
    public static boolean m24444n() {
        return "HMD Global".equalsIgnoreCase(m24452f());
    }

    /* renamed from: o */
    public static boolean m24443o() {
        return "oppo".equalsIgnoreCase(m24452f());
    }

    /* renamed from: p */
    public static boolean m24442p() {
        return m24452f().equals("samsung");
    }

    /* renamed from: q */
    public static boolean m24441q() {
        return "vivo".equalsIgnoreCase(m24452f());
    }

    /* renamed from: r */
    public static boolean m24440r() {
        return m24452f().equals("Xiaomi");
    }

    /* renamed from: s */
    public static void m24439s(Context context, String str) {
        C3810q.m24071b().m24070c(C3744g1.f11936j);
        if (C0586a.m33353a(context, "android.permission.READ_PHONE_STATE") == 0) {
            List<SubscriptionInfo> activeSubscriptionInfoList = SubscriptionManager.from(context).getActiveSubscriptionInfoList();
            View inflate = LayoutInflater.from(context).inflate(R$layout.sim_layout, (ViewGroup) null, false);
            CheckBox checkBox = (CheckBox) inflate.findViewById(R$id.defalt_call);
            checkBox.setOnClickListener(new View$OnClickListenerC3715a(checkBox));
            String string = context.getResources().getString(R$string.call_from);
            String replace = string.replace("X", "'" + str + "'");
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setCancelable(true);
            builder.setTitle(replace);
            builder.setView(inflate);
            builder.setAdapter(new C2242v(context, activeSubscriptionInfoList), new DialogInterface$OnClickListenerC3716b(context, str));
            builder.show();
        }
    }
}
