package com.android.boom;

import android.app.Activity;
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
import android.view.Window;
import android.widget.TextView;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
/* renamed from: com.android.boom.c */
/* loaded from: classes-dex2jar.jar:com/android/boom/c.class */
public class C0677c {

    /* renamed from: com.android.boom.c$a */
    /* loaded from: classes-dex2jar.jar:com/android/boom/c$a.class */
    static final class View$OnClickListenerC0678a implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ Context f3289b;

        View$OnClickListenerC0678a(Context context) {
            this.f3289b = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = this.f3289b;
            C0677c.m11448e(context, context.getPackageName());
        }
    }

    /* renamed from: com.android.boom.c$b */
    /* loaded from: classes-dex2jar.jar:com/android/boom/c$b.class */
    static final class RunnableC0679b implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Context f3290b;

        /* renamed from: c */
        final /* synthetic */ String f3291c;

        /* renamed from: d */
        final /* synthetic */ String f3292d;

        /* renamed from: com.android.boom.c$b$a */
        /* loaded from: classes-dex2jar.jar:com/android/boom/c$b$a.class */
        class View$OnClickListenerC0680a implements View.OnClickListener {

            /* renamed from: com.android.boom.c$b$a$a */
            /* loaded from: classes-dex2jar.jar:com/android/boom/c$b$a$a.class */
            class RunnableC0681a implements Runnable {
                RunnableC0681a(View$OnClickListenerC0680a aVar) {
                }

                @Override // java.lang.Runnable
                public void run() {
                    System.exit(0);
                }
            }

            View$OnClickListenerC0680a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Context context = RunnableC0679b.this.f3290b;
                C0677c.m11448e(context, context.getPackageName());
                view.postDelayed(new RunnableC0681a(this), 2000L);
            }
        }

        RunnableC0679b(Context context, String str, String str2) {
            this.f3290b = context;
            this.f3291c = str;
            this.f3292d = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            Window window;
            if (C0677c.m11452a(this.f3290b)) {
                TextView textView = (TextView) LayoutInflater.from(this.f3290b).inflate(C0676b.dialog_signature_track, (ViewGroup) null);
                textView.setText(this.f3291c);
                AlertDialog create = new AlertDialog.Builder(this.f3290b).setTitle(this.f3292d).setView(textView).setPositiveButton("OK", (DialogInterface.OnClickListener) null).setCancelable(false).create();
                if (create != null) {
                    if (create.getWindow() != null) {
                        if (Build.VERSION.SDK_INT >= 26) {
                            window = create.getWindow();
                            i = 2038;
                        } else {
                            window = create.getWindow();
                            i = 2003;
                        }
                        window.setType(i);
                        create.show();
                    }
                    create.getButton(-1).setOnClickListener(new View$OnClickListenerC0680a());
                    return;
                }
                return;
            }
            System.exit(0);
        }
    }

    /* renamed from: a */
    public static boolean m11452a(Context context) {
        return Build.VERSION.SDK_INT < 23 || Settings.canDrawOverlays(context);
    }

    /* renamed from: b */
    public static boolean m11451b(Context context) {
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
    public static String m11450c(Context context) {
        try {
            StringBuilder sb = new StringBuilder("");
            FileInputStream fileInputStream = new FileInputStream(new File(context.getFilesDir(), "dtyz.txt"));
            byte[] bArr = new byte[1024];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    sb.append(new String(bArr, 0, read));
                } else {
                    fileInputStream.close();
                    return sb.toString();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: d */
    public static void m11449d(Context context, String str, String str2) {
        if (context != null) {
            try {
                TextView textView = (TextView) LayoutInflater.from(context).inflate(C0676b.dialog_signature_track, (ViewGroup) null);
                textView.setText(str2);
                AlertDialog show = new AlertDialog.Builder(context).setTitle(str).setView(textView).setPositiveButton("OK", (DialogInterface.OnClickListener) null).setCancelable(false).show();
                if (show != null) {
                    show.getButton(-1).setOnClickListener(new View$OnClickListenerC0678a(context));
                }
            } catch (Exception e) {
                e.printStackTrace();
                System.exit(0);
            }
        }
    }

    /* renamed from: e */
    public static void m11448e(Context context, String str) {
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
    public static void m11447f(Context context, String str, String str2) {
        if (context != null) {
            try {
                new Handler(Looper.getMainLooper()).post(new RunnableC0679b(context, str2, str));
            } catch (Exception e) {
                e.printStackTrace();
                System.exit(0);
            }
        }
    }

    /* renamed from: g */
    public static void m11446g(Activity activity) {
        if (!m11451b(activity)) {
            C0683w.m11437a(activity);
        }
    }

    /* renamed from: h */
    public static void m11445h(Context context, String str) {
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
