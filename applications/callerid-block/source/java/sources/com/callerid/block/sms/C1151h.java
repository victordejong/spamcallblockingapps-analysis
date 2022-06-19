package com.callerid.block.sms;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.provider.Telephony;
import android.telephony.SmsManager;
import androidx.core.app.C0253i;
import com.callerid.block.R$color;
import com.callerid.block.R$drawable;
import com.callerid.block.R$mipmap;
import com.callerid.block.R$string;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.bean.SMSBean;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import java.util.ArrayList;
/* renamed from: com.callerid.block.sms.h */
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/h.class */
public class C1151h {

    /* renamed from: a */
    public static String f4892a = "SMS_SEND_ACTIOIN";

    /* renamed from: b */
    public static String f4893b = "SMS_DELIVERED_ACTION";

    /* renamed from: a */
    public static void m9945a(Context context, String str, String str2) {
        ArrayList<PendingIntent> arrayList = new ArrayList<>();
        ArrayList<PendingIntent> arrayList2 = new ArrayList<>();
        SmsManager smsManager = SmsManager.getDefault();
        try {
            Intent intent = new Intent(f4892a);
            Intent intent2 = new Intent(f4893b);
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 0);
            PendingIntent broadcast2 = PendingIntent.getBroadcast(context, 0, intent2, 0);
            ArrayList<String> divideMessage = smsManager.divideMessage(str2);
            for (int i = 0; i < divideMessage.size(); i++) {
                arrayList.add(i, broadcast);
                arrayList2.add(i, broadcast2);
            }
            smsManager.sendMultipartTextMessage(str, null, divideMessage, arrayList, arrayList2);
        } catch (Exception e) {
            e.printStackTrace();
            if (!C1227w.f5084a) {
                return;
            }
            C1227w.m9527a("wbb", "Exception: " + e.getMessage());
        }
    }

    /* renamed from: b */
    public static void m9944b(Context context, String str, String str2, int i) {
        ArrayList<PendingIntent> arrayList = new ArrayList<>();
        ArrayList<PendingIntent> arrayList2 = new ArrayList<>();
        SmsManager smsManagerForSubscriptionId = SmsManager.getSmsManagerForSubscriptionId(i);
        try {
            Intent intent = new Intent(f4892a);
            Intent intent2 = new Intent(f4893b);
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 0);
            PendingIntent broadcast2 = PendingIntent.getBroadcast(context, 0, intent2, 0);
            ArrayList<String> divideMessage = smsManagerForSubscriptionId.divideMessage(str2);
            for (int i2 = 0; i2 < divideMessage.size(); i2++) {
                arrayList.add(i2, broadcast);
                arrayList2.add(i2, broadcast2);
            }
            smsManagerForSubscriptionId.sendMultipartTextMessage(str, null, divideMessage, arrayList, arrayList2);
        } catch (Exception e) {
            e.printStackTrace();
            if (!C1227w.f5084a) {
                return;
            }
            C1227w.m9527a("wbb", "Exception: " + e.getMessage());
        }
    }

    /* renamed from: c */
    public static void m9943c(Context context, String str, String str2, String str3, String str4, long j, String str5, String str6) {
        if (!C1216t0.m9591U()) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            Intent intent = new Intent(context, MessageBoxListActivity.class);
            SMSBean sMSBean = new SMSBean();
            sMSBean.setAddress(str);
            sMSBean.setType_label(str5);
            sMSBean.setThread_id(str6);
            sMSBean.setName(str2);
            sMSBean.setRead("0");
            sMSBean.setSearch_name(str3);
            Bundle bundle = new Bundle();
            bundle.putBoolean("push_click", true);
            bundle.putParcelable("message", sMSBean);
            intent.putExtras(bundle);
            PendingIntent activity = PendingIntent.getActivity(context, 110, intent, 134217728);
            C0253i.C0256e c0256e = new C0253i.C0256e(context, context.getResources().getString(2131755055));
            if (str4 == null || "".equals(str4)) {
                str4 = context.getResources().getString(R$string.nosubject);
            }
            if (str == null || str.equals("")) {
                return;
            }
            if (str2 == null || "".equals(str2)) {
                str2 = str;
                if (str3 != null) {
                    str2 = str;
                    if (!"".equals(str3)) {
                        str2 = str3;
                    }
                }
            }
            c0256e.m13615j(str2);
            c0256e.m13616i(str4);
            c0256e.m13617h(activity);
            c0256e.m13601x(context.getResources().getString(R$string.missed_call));
            c0256e.m13625A(j);
            c0256e.m13607r(false);
            c0256e.m13620e(true);
            try {
                int i = Build.VERSION.SDK_INT;
                if (i >= 26) {
                    NotificationChannel notificationChannel = new NotificationChannel("com.callerid.block_notfication_N", context.getResources().getString(2131755055), 3);
                    if (notificationManager != null) {
                        notificationManager.createNotificationChannel(notificationChannel);
                        c0256e.m13619f("com.callerid.block_notfication_N");
                    }
                }
                if (i >= 16) {
                    c0256e.m13606s(0);
                }
                c0256e.m13611n(BitmapFactory.decodeResource(context.getResources(), R$mipmap.ic_launcher));
                if (i >= 21) {
                    try {
                        context.getDrawable(R$drawable.icon_small);
                        c0256e.m13604u(R$drawable.icon_small);
                        c0256e.m13618g(context.getResources().getColor(R$color.colorPrimary));
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                } else {
                    c0256e.m13604u(R$drawable.icon_small);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            notificationManager.notify(8, c0256e.m13624a());
        }
    }

    /* renamed from: d */
    public static void m9942d(Context context, String str, String str2, String str3, String str4, long j, String str5, String str6) {
        Intent intent = new Intent(context, SmsReceiveActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString(EZBlackList.NUMBER, str);
        bundle.putString("content", str4);
        bundle.putLong("date", j);
        bundle.putString("type_lable", str5);
        bundle.putString("thread_id", str6);
        bundle.putString(EZBlackList.NAME, str2);
        bundle.putString("searchName", str3);
        intent.putExtras(bundle);
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    /* renamed from: e */
    public static boolean m9941e(Context context) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Telephony.Sms.getDefaultSmsPackage(context).equals(C1216t0.m9552y(context));
        }
        return false;
    }
}
