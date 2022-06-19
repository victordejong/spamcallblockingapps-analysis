package com.callerid.block.util;

import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import androidx.core.app.C0253i;
import com.callerid.block.R$color;
import com.callerid.block.R$drawable;
import com.callerid.block.R$mipmap;
import com.callerid.block.R$string;
import com.callerid.block.bean.EZSearchContacts;
import com.callerid.block.bean.WhatsAppBean;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.main.MainActivity;
import com.callerid.block.p036d.C0947d;
import com.callerid.block.p036d.C0948e;
import com.callerid.block.search.CallLogBean;
import java.util.List;
import java.util.regex.Pattern;
/* renamed from: com.callerid.block.util.u0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/u0.class */
public class C1219u0 {

    /* renamed from: a */
    public static int f5078a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.callerid.block.util.u0$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/u0$a.class */
    public static class AsyncTaskC1220a extends AsyncTask<String, Void, String> {

        /* renamed from: a */
        private String f5079a;

        /* renamed from: b */
        private int f5080b;

        AsyncTaskC1220a(String str, int i) {
            this.f5079a = str;
            this.f5080b = i;
        }

        /* renamed from: a */
        public String doInBackground(String... strArr) {
            EZSearchContacts m10468d;
            try {
                String str = this.f5079a;
                if (str == null || "".equals(str) || (m10468d = C0947d.m10470b().m10468d(this.f5079a)) == null) {
                    return "";
                }
                if (C1227w.f5084a) {
                    C1227w.m9527a("wbb", "whatsapp_contacts:" + m10468d.toString());
                }
                WhatsAppBean m10464b = C0948e.m10465a().m10464b(this.f5079a);
                if (m10464b == null) {
                    WhatsAppBean whatsAppBean = new WhatsAppBean();
                    whatsAppBean.setLastcalltime(System.currentTimeMillis());
                    whatsAppBean.setType(this.f5080b);
                    whatsAppBean.setNumber(this.f5079a);
                    whatsAppBean.setName(m10468d.getName());
                    C0948e.m10465a().m10462d(whatsAppBean);
                    return "";
                }
                if (C1227w.f5084a) {
                    C1227w.m9527a("wbb", "whatsAppBean:" + m10464b.toString());
                }
                m10464b.setLastcalltime(System.currentTimeMillis());
                m10464b.setType(this.f5080b);
                C0948e.m10465a().m10461e(m10464b, "lastcalltime", "type");
                return "";
            } catch (Exception e) {
                e.printStackTrace();
                return "";
            }
        }

        /* renamed from: b */
        public void onPostExecute(String str) {
            super.onPostExecute(str);
            C1216t0.m9570h0(EZCallApplication.m10163c());
        }
    }

    /* renamed from: a */
    public static void m9548a(Context context, String str) {
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            Intent intent = new Intent(context, MainActivity.class);
            intent.putExtra("whatsapp", true);
            PendingIntent activity = PendingIntent.getActivity(context, 1, intent, 134217728);
            C0253i.C0256e c0256e = new C0253i.C0256e(context, "com.callerid.block_notfication_N");
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                NotificationChannel notificationChannel = new NotificationChannel("com.callerid.block_notfication_N", context.getResources().getString(2131755055), 3);
                if (notificationManager != null) {
                    notificationManager.createNotificationChannel(notificationChannel);
                    c0256e.m13619f("com.callerid.block_notfication_N");
                }
            }
            c0256e.m13615j(str);
            c0256e.m13616i(context.getResources().getString(R$string.whatsapp_notifi_content));
            c0256e.m13617h(activity);
            c0256e.m13601x(context.getResources().getString(2131755055));
            c0256e.m13625A(System.currentTimeMillis());
            c0256e.m13606s(0);
            c0256e.m13607r(false);
            c0256e.m13620e(true);
            try {
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
                    c0256e.m13604u(R$mipmap.ic_launcher);
                    c0256e.m13611n(BitmapFactory.decodeResource(context.getResources(), R$mipmap.ic_launcher));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (notificationManager == null) {
                return;
            }
            notificationManager.notify(666, c0256e.m13624a());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: b */
    public static void m9547b(List<CallLogBean> list) {
        new CallLogBean();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size() - 1) {
                int i3 = i2 + 1;
                for (int i4 = i3; i4 < list.size(); i4++) {
                    if (list.get(i2).m10095G() < list.get(i4).m10095G()) {
                        list.set(i2, list.get(i4));
                        list.set(i4, list.get(i2));
                    }
                }
                i = i3;
            } else {
                return;
            }
        }
    }

    /* renamed from: c */
    public static boolean m9546c(String str) {
        boolean z;
        try {
            String str2 = str;
            if (str.startsWith("+")) {
                str2 = str.replace("+", "");
            }
            z = Pattern.compile("[0-9]*").matcher(str2.replaceAll(" ", "")).matches();
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public static void m9545d(Activity activity, String str) {
        try {
            Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + str));
            intent.setPackage("com.whatsapp");
            intent.putExtra("chat", true);
            activity.startActivity(intent);
        } catch (Exception e) {
            if (C1227w.f5084a) {
                C1227w.m9527a("wbb", "Exception:" + e.getMessage());
            }
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    public static void m9544e(String str, int i) {
        new AsyncTaskC1220a(str, i).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
    }

    /* renamed from: f */
    public static boolean m9543f() {
        return Build.VERSION.SDK_INT >= 21 && C1216t0.m9597O(EZCallApplication.m10163c(), "com.whatsapp");
    }
}
