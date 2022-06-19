package com.android.boom;

import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
/* renamed from: com.android.boom.c */
/* loaded from: classes-dex2jar.jar:com/android/boom/c.class */
public class C3949c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.boom.c$a */
    /* loaded from: classes-dex2jar.jar:com/android/boom/c$a.class */
    public class View$OnClickListenerC3950a implements View.OnClickListener {

        /* renamed from: d */
        final /* synthetic */ Context f12414d;

        View$OnClickListenerC3950a(Context context) {
            this.f12414d = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = this.f12414d;
            C3949c.m23739e(context, context.getPackageName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.boom.c$b */
    /* loaded from: classes-dex2jar.jar:com/android/boom/c$b.class */
    public class RunnableC3951b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f12415d;

        /* renamed from: e */
        final /* synthetic */ String f12416e;

        /* renamed from: f */
        final /* synthetic */ String f12417f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.android.boom.c$b$a */
        /* loaded from: classes-dex2jar.jar:com/android/boom/c$b$a.class */
        public class View$OnClickListenerC3952a implements View.OnClickListener {

            /* renamed from: com.android.boom.c$b$a$a */
            /* loaded from: classes-dex2jar.jar:com/android/boom/c$b$a$a.class */
            class RunnableC3953a implements Runnable {
                RunnableC3953a() {
                    View$OnClickListenerC3952a.this = r4;
                }

                @Override // java.lang.Runnable
                public void run() {
                    System.exit(0);
                }
            }

            View$OnClickListenerC3952a() {
                RunnableC3951b.this = r4;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Context context = RunnableC3951b.this.f12415d;
                C3949c.m23739e(context, context.getPackageName());
                view.postDelayed(new RunnableC3953a(), 2000L);
            }
        }

        RunnableC3951b(Context context, String str, String str2) {
            this.f12415d = context;
            this.f12416e = str;
            this.f12417f = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C3949c.m23743a(this.f12415d)) {
                System.exit(0);
                return;
            }
            TextView textView = (TextView) LayoutInflater.from(this.f12415d).inflate(C3948b.dialog_signature_track, (ViewGroup) null);
            textView.setText(this.f12416e);
            AlertDialog create = new AlertDialog.Builder(this.f12415d).setTitle(this.f12417f).setView(textView).setPositiveButton("OK", (DialogInterface.OnClickListener) null).setCancelable(false).create();
            if (create == null) {
                return;
            }
            if (create.getWindow() != null) {
                if (Build.VERSION.SDK_INT >= 26) {
                    create.getWindow().setType(2038);
                } else {
                    create.getWindow().setType(2003);
                }
                create.show();
            }
            create.getButton(-1).setOnClickListener(new View$OnClickListenerC3952a());
        }
    }

    /* renamed from: a */
    public static boolean m23743a(Context context) {
        return Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(context);
    }

    /* renamed from: b */
    public static boolean m23742b(Context context) {
        boolean z = false;
        try {
            if ((context.getApplicationInfo().flags & 2) != 0) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: c */
    public static String m23741c(Context context) {
        try {
            StringBuilder sb = new StringBuilder("");
            FileInputStream fileInputStream = new FileInputStream(new File(context.getFilesDir(), "dtyz.txt"));
            byte[] bArr = new byte[1024];
            for (int read = fileInputStream.read(bArr); read > 0; read = fileInputStream.read(bArr)) {
                sb.append(new String(bArr, 0, read));
            }
            fileInputStream.close();
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: d */
    public static void m23740d(Context context, String str, String str2) {
        if (context != null) {
            try {
                TextView textView = (TextView) LayoutInflater.from(context).inflate(C3948b.dialog_signature_track, (ViewGroup) null);
                textView.setText(str2);
                AlertDialog show = new AlertDialog.Builder(context).setTitle(str).setView(textView).setPositiveButton("OK", (DialogInterface.OnClickListener) null).setCancelable(false).show();
                if (show == null) {
                    return;
                }
                show.getButton(-1).setOnClickListener(new View$OnClickListenerC3950a(context));
            } catch (Exception e) {
                e.printStackTrace();
                System.exit(0);
            }
        }
    }

    /* renamed from: e */
    public static void m23739e(Context context, String str) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage("com.android.vending");
            launchIntentForPackage.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.activities.LaunchUrlHandlerActivity"));
            launchIntentForPackage.setData(Uri.parse("market://details?id=" + str));
            launchIntentForPackage.setFlags(268435456);
            context.startActivity(launchIntentForPackage);
        } catch (Exception e) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + str));
                intent.setFlags(268435456);
                context.startActivity(intent);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: f */
    public static void m23738f(Context context, String str, String str2) {
        if (context != null) {
            try {
                new Handler(Looper.getMainLooper()).post(new RunnableC3951b(context, str2, str));
            } catch (Exception e) {
                e.printStackTrace();
                System.exit(0);
            }
        }
    }

    /* renamed from: g */
    public static void m23737g(Context context, String str) {
        try {
            File file = new File(context.getFilesDir(), "dtyz.txt");
            if (file.exists()) {
                file.delete();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(str.getBytes());
            fileOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
