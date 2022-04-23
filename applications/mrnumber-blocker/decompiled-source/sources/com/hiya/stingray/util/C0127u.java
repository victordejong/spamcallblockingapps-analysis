package com.hiya.stingray.util;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.telephony.SmsManager;
import android.util.Base64;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.google.common.base.m;
import com.google.common.base.r;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.s.d0;
import com.hiya.stingray.s.n;
import com.hiya.stingray.s.n0;
import com.hiya.stingray.s.q0;
import com.hiya.stingray.ui.LauncherActivity;
import com.hiya.stingray.ui.common.SinglePanelFragmentActivity;
import com.hiya.stingray.ui.setting.WebViewLinkFragment;
import com.hiya.stingray.util.p003g0.AbstractC0101c;
import com.hiya.stingray.util.p005i0.C0111c;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileWriter;
import java.io.InputStream;
import java.util.Map;
import r.a.a;
/* renamed from: com.hiya.stingray.util.u */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/u.class */
public class C0127u {
    /* renamed from: a */
    public static void m921a(Context context, d0 d0Var, C0085a0 a0Var, String str) {
        if (q0.PREMIUM == d0Var.n().g().c()) {
            a0Var.m1061d(new C0111c());
        } else {
            m920b(context, str);
        }
    }

    /* renamed from: b */
    public static void m920b(Context context, String str) {
        Intent intent = new Intent("android.intent.action.CALL");
        intent.addFlags(268435456);
        intent.setData(Uri.parse("tel:" + str));
        m907o(context, intent, 2131821528);
    }

    /* renamed from: c */
    public static void m919c(Context context, String str, String str2) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.TEXT", str2);
        context.startActivity(Intent.createChooser(intent, context.getResources().getString(2131821552)));
    }

    /* renamed from: d */
    public static void m918d(String str, Context context) {
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setFlags(268435456);
        intent.setData(Uri.parse("smsto:" + Uri.encode(str)));
        m907o(context, intent, 2131821517);
    }

    /* renamed from: e */
    private static String m917e(Context context, String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        InputStream openInputStream = context.getContentResolver().openInputStream(Uri.parse(str));
        if (openInputStream != null) {
            BitmapFactory.decodeStream(openInputStream).compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
            openInputStream.close();
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArrayOutputStream.close();
        return Base64.encodeToString(byteArray, 0).replaceAll("\n", "");
    }

    /* renamed from: f */
    private static File m916f(Context context, n0 n0Var) {
        File file = new File(context.getExternalFilesDir(null), String.format("%s.vcf", n0Var.h()));
        FileWriter fileWriter = new FileWriter(file);
        fileWriter.write("BEGIN:VCARD\r\n");
        fileWriter.write("VERSION:3.0\r\n");
        fileWriter.write(String.format("FN:%s\r\n", n0Var.h()));
        if (!r.b(n0Var.j())) {
            fileWriter.write(String.format("PHOTO;TYPE=JPEG;ENCODING=B:,%s\r\n", m917e(context, n0Var.j())));
        }
        for (Map.Entry entry : n0Var.i().entrySet()) {
            fileWriter.write(String.format("TEL;TYPE=%s,VOICE:%s\r\n", entry.getValue().toString(), C0131y.m896b(entry.getKey().toString())));
        }
        for (n nVar : n0Var.c()) {
            if (!r.b(nVar.f())) {
                fileWriter.write(String.format("ADR;TYPE=WORK:;;%s;;\r\n", nVar.f()));
            } else {
                fileWriter.write(String.format("ADR;TYPE=WORK:;;%s;%s;%s;;\r\n", nVar.h(), nVar.d(), nVar.g()));
            }
        }
        fileWriter.write("END:VCARD\r\n");
        fileWriter.close();
        return file;
    }

    /* renamed from: g */
    public static void m915g(Context context, d0 d0Var, int i, String str, e1 e1Var) {
        AbstractC0101c.C0102a aVar = new AbstractC0101c.C0102a();
        aVar.m975l("notification");
        aVar.m974m("notification_open");
        Intent intent = new Intent(context, LauncherActivity.class);
        intent.putExtra("launch_action_by_user", "notification");
        if (i <= 1) {
            aVar.m979h("view_contact_details");
            intent.putExtra("CONTACT_DETAIL_FROM_NOTIFICATION", (Parcelable) d0Var);
        } else {
            aVar.m979h("view_call_log");
            intent.putExtra("SCROLL_TO_TOP", "");
        }
        e1Var.c("user_prompt_action", aVar.m986a());
        intent.addFlags(335544320);
        context.startActivity(intent);
    }

    /* renamed from: h */
    public static void m914h(String str, String str2, Context context) {
        Intent intent = new Intent("android.intent.action.INSERT");
        intent.setType("vnd.android.cursor.dir/contact");
        intent.setFlags(268435456);
        intent.putExtra("name", str);
        intent.putExtra("phone", str2);
        m907o(context, intent, 2131821526);
    }

    /* renamed from: i */
    public static void m913i(Context context, String str) {
        m.d(!r.b(str));
        context.startActivity(SinglePanelFragmentActivity.O(context, WebViewLinkFragment.f1(str), WebViewLinkFragment.class));
    }

    /* renamed from: j */
    public static void m912j(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=" + str));
        intent.setPackage("com.google.android.apps.maps");
        intent.addFlags(268435456);
        m907o(context, intent, 2131821527);
    }

    /* renamed from: k */
    public static void m911k(Context context) {
        Intent intent;
        if (Build.VERSION.SDK_INT >= 26) {
            intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS").addFlags(268435456).putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
        } else {
            intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS").addFlags(268435456);
            intent.setData(Uri.fromParts("package", context.getPackageName(), null));
        }
        context.startActivity(intent);
    }

    /* renamed from: l */
    public static void m910l(String str, String str2) {
        m.d(!r.b(str));
        m.d(!r.b(str2));
        SmsManager.getDefault().sendTextMessage(str, null, str2, null, null);
    }

    /* renamed from: m */
    public static void m909m(Context context, n0 n0Var) {
        Uri uri;
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/x-vcard");
        if (Build.VERSION.SDK_INT > 23) {
            uri = FileProvider.e(context, context.getApplicationContext().getPackageName() + ".fileprovider", m916f(context, n0Var));
        } else {
            uri = Uri.fromFile(m916f(context, n0Var));
        }
        intent.putExtra("android.intent.extra.STREAM", uri);
        m908n(context, intent);
    }

    /* renamed from: n */
    private static void m908n(Context context, Intent intent) {
        m907o(context, intent, -1);
    }

    /* renamed from: o */
    private static void m907o(Context context, Intent intent, int i) {
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            context.startActivity(intent);
        } else if (i == -1) {
            a.a("Error starting intent action: %s", new Object[]{intent.getAction()});
        } else {
            Toast.makeText(context, context.getString(i), 0).show();
        }
    }
}
