package com.callerid.block.util;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.core.content.C0265a;
import com.callerid.block.R$layout;
import com.callerid.block.R$string;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.p034b.C0916m;
import java.util.List;
/* renamed from: com.callerid.block.util.o0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/o0.class */
public class C1202o0 {

    /* renamed from: a */
    public static int f5045a;

    /* renamed from: b */
    private static List<PhoneAccountHandle> f5046b;

    /* renamed from: c */
    private static TelecomManager f5047c;

    /* renamed from: com.callerid.block.util.o0$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/o0$a.class */
    static final class DialogInterface$OnClickListenerC1203a implements DialogInterface.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ Context f5048b;

        /* renamed from: c */
        final /* synthetic */ String f5049c;

        DialogInterface$OnClickListenerC1203a(Context context, String str) {
            this.f5048b = context;
            this.f5049c = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C1202o0.m9642a(this.f5048b, i, this.f5049c);
        }
    }

    /* renamed from: a */
    public static void m9642a(Context context, int i, String str) {
        Intent intent;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23 && C0265a.m13556a(EZCallApplication.m10163c(), "android.permission.READ_PHONE_STATE") == 0) {
            TelecomManager telecomManager = (TelecomManager) context.getSystemService("telecom");
            f5047c = telecomManager;
            f5046b = telecomManager.getCallCapablePhoneAccounts();
        }
        try {
            if (i2 >= 21) {
                Intent intent2 = new Intent("android.intent.action.CALL", Uri.parse("tel:" + Uri.encode(str)));
                intent2.setFlags(268435456);
                intent = intent2;
                if (i2 >= 23) {
                    intent2.putExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE", f5046b.get(i));
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

    /* renamed from: b */
    public static boolean m9641b(Context context) {
        if (Build.VERSION.SDK_INT < 22 || C0265a.m13556a(context, "android.permission.READ_PHONE_STATE") != 0) {
            return false;
        }
        int activeSubscriptionInfoCount = SubscriptionManager.from(context).getActiveSubscriptionInfoCount();
        f5045a = activeSubscriptionInfoCount;
        return activeSubscriptionInfoCount == 2;
    }

    /* renamed from: c */
    public static void m9640c(Context context, String str) {
        if (C0265a.m13556a(context, "android.permission.READ_PHONE_STATE") == 0) {
            List<SubscriptionInfo> activeSubscriptionInfoList = SubscriptionManager.from(context).getActiveSubscriptionInfoList();
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setCancelable(true);
            String string = context.getResources().getString(R$string.call_from);
            builder.setTitle(string.replace("X", "'" + str + "'"));
            builder.setView(LayoutInflater.from(context).inflate(R$layout.sim_layout, (ViewGroup) null, false));
            builder.setAdapter(new C0916m(context, activeSubscriptionInfoList), new DialogInterface$OnClickListenerC1203a(context, str));
            builder.show();
        }
    }
}
