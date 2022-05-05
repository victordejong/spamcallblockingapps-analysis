package p459j.p460a.p521j0.p529x;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.facebook.ads.AdError;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.block.BlockManageActivity;
import gogolook.callgogolook2.block.blocklog.BlockLogActivity;
import gogolook.callgogolook2.messaging.p078ui.dialog.SmsDialogActivity;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14173t4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.DialogC14618f;
/* renamed from: j.a.j0.x.k */
/* loaded from: classes3-dex2jar.jar:j/a/j0/x/k.class */
public class C12778k {

    /* renamed from: j.a.j0.x.k$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/x/k$a.class */
    public static final class C12779a implements CompoundButton.OnCheckedChangeListener {
        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C13915b3.m3055b("isSmsUrlScanConfirmPopupCheckBox", z);
        }
    }

    /* renamed from: a */
    public static void m5340a(@NonNull Context context) {
        ((NotificationManager) context.getSystemService("notification")).cancel(1977);
    }

    /* renamed from: a */
    public static void m5339a(Context context, int i, boolean z, DialogInterface.OnClickListener onClickListener, DialogInterface.OnClickListener onClickListener2) {
        int i2;
        View inflate = LayoutInflater.from(context).inflate(R$layout.sms_scan_confirm, (ViewGroup) null);
        C13915b3.m3055b("isSmsUrlScanConfirmPopupCheckBox", false);
        CheckBox checkBox = (CheckBox) inflate.findViewById(R$id.cb_understand);
        checkBox.setChecked(false);
        TextView textView = (TextView) inflate.findViewById(R$id.tv_content1);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tv_content2);
        int i3 = R$string.urlscan_dialog_first_content2;
        int i4 = R$string.urlscan_dialog_first_content;
        if (i == 2) {
            i2 = 2131888559;
        } else if (i == 1) {
            checkBox.setVisibility(8);
            i2 = 2131888559;
        } else {
            checkBox.setVisibility(8);
            i2 = R$string.smsdialog_urlscan_first_title;
            i4 = R$string.smsdialog_urlscan_first_content;
            i3 = R$string.smsdialog_urlscan_first_content2;
        }
        textView.setText(C14206w4.m2225a(i4));
        textView2.setText(C14206w4.m2225a(i3));
        try {
            checkBox.setButtonDrawable(Resources.getSystem().getIdentifier("btn_check_holo_light", "drawable", IJSExecutor.JS_FUNCTION_GROUP));
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
        checkBox.setOnCheckedChangeListener(new C12779a());
        DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(new ContextThemeWrapper(context, 2131952205));
        fVar.m986a(inflate);
        fVar.m976c(C14206w4.m2225a(i2));
        fVar.m978b(C14206w4.m2225a((int) R$string.agree), onClickListener);
        fVar.m984a(C14206w4.m2225a((int) R$string.later), onClickListener2);
        DialogC14618f a = fVar.m989a();
        if (z) {
            a.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
            C13878a3.m3244a(a);
            return;
        }
        a.show();
    }

    /* renamed from: a */
    public static void m5338a(@NonNull Context context, @NonNull String str) {
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        Intent intent = new Intent(context, SmsDialogActivity.class);
        String a = C14206w4.m2225a((int) R$string.smsdialog_notification_title);
        String format = String.format(C14206w4.m2225a((int) R$string.smsdialog_notification_message), str);
        NotificationCompat.Builder priority = C14173t4.m2308a().setContentTitle(a).setContentText(format).setTicker(a).setStyle(new NotificationCompat.BigTextStyle().bigText(format)).setContentIntent(PendingIntent.getActivity(context, 1977, intent, 134217728)).setDefaults(0).setPriority(0);
        notificationManager.cancel(1977);
        notificationManager.notify(1977, priority.build());
    }

    /* renamed from: a */
    public static void m5337a(Context context, String str, C12942i iVar, String str2, int i) {
        m5336a(context, str, iVar, str2, i, true);
    }

    /* renamed from: a */
    public static void m5336a(Context context, String str, C12942i iVar, String str2, int i, boolean z) {
        if (C12810o.m5234k()) {
            m5334b(context, str, iVar, str2, i, z);
        }
    }

    /* renamed from: b */
    public static void m5335b(Context context, String str, C12942i iVar, String str2, int i) {
        m5336a(context, str, iVar, str2, i, false);
    }

    /* renamed from: b */
    public static void m5334b(Context context, String str, C12942i iVar, String str2, int i, boolean z) {
        String a = C14206w4.m2225a((int) R$string.unknown_number);
        int i2 = R$string.notification_mmsblock_head;
        String a2 = C14206w4.m2225a(z ? R$string.notification_mmsblock_head : R$string.notification_smsblock_ticker);
        String str3 = a2;
        if (!z) {
            str3 = String.format(a2, TextUtils.isEmpty(str) ? a : str);
        }
        Bundle bundle = new Bundle();
        bundle.putString("from", "block");
        Intent a3 = BlockLogActivity.m28632a(context, bundle, 1);
        a3.addFlags(335544320);
        PendingIntent a4 = C14217x3.m2188a(context, a3, 1976);
        if (!z) {
            i2 = R$string.notification_smsblock_head;
        }
        String a5 = C14206w4.m2225a(i2);
        StringBuilder sb = new StringBuilder(100);
        if (!TextUtils.isEmpty(str)) {
            a = str;
        }
        sb.append(a);
        String a6 = C12942i.m4964a(iVar.f29289a);
        Intent intent = new Intent(context, BlockManageActivity.class);
        intent.putExtra("unblock_number", str);
        intent.putExtra("unblock_keyword", iVar.f29290b);
        intent.putExtra("unblock_kind", 2);
        intent.putExtra("from", "block");
        intent.putExtra("goto", "blocklist");
        intent.addFlags(335544320);
        PendingIntent a7 = C14217x3.m2188a(context, intent, 2000);
        NotificationCompat.Builder subText = C14173t4.m2307a(context).setContentTitle(a5).setContentText(sb.toString()).setTicker(str3).setSubText(a6);
        NotificationCompat.BigTextStyle summaryText = new NotificationCompat.BigTextStyle().setSummaryText(null);
        NotificationManagerCompat.from(context).notify(1976, C14173t4.m2305a(subText.setStyle(summaryText.bigText(sb.toString() + "\n" + a6)).setContentIntent(a4).setDefaults(0).setPriority(0).addAction(R$drawable.notification_unblock, C14206w4.m2225a((int) R$string.title_unblock), a7)));
    }
}
