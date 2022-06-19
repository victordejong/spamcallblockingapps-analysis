package androidx.core.app;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.core.content.C0586a;
import java.util.Arrays;
/* renamed from: androidx.core.app.a */
/* loaded from: classes-dex2jar.jar:androidx/core/app/a.class */
public class C0548a extends C0586a {

    /* renamed from: d */
    private static AbstractC0552d f2824d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$a.class */
    public class RunnableC0549a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ String[] f2825d;

        /* renamed from: e */
        final /* synthetic */ Activity f2826e;

        /* renamed from: f */
        final /* synthetic */ int f2827f;

        RunnableC0549a(String[] strArr, Activity activity, int i) {
            this.f2825d = strArr;
            this.f2826e = activity;
            this.f2827f = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.f2825d.length];
            PackageManager packageManager = this.f2826e.getPackageManager();
            String packageName = this.f2826e.getPackageName();
            int length = this.f2825d.length;
            for (int i = 0; i < length; i++) {
                iArr[i] = packageManager.checkPermission(this.f2825d[i], packageName);
            }
            ((AbstractC0551c) this.f2826e).onRequestPermissionsResult(this.f2827f, this.f2825d, iArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$b.class */
    public class RunnableC0550b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Activity f2828d;

        RunnableC0550b(Activity activity) {
            this.f2828d = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2828d.isFinishing() || C0555c.m33464i(this.f2828d)) {
                return;
            }
            this.f2828d.recreate();
        }
    }

    /* renamed from: androidx.core.app.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$c.class */
    public interface AbstractC0551c {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    /* renamed from: androidx.core.app.a$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$d.class */
    public interface AbstractC0552d {
        /* renamed from: a */
        boolean m33473a(Activity activity, String[] strArr, int i);
    }

    /* renamed from: androidx.core.app.a$e */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$e.class */
    public interface AbstractC0553e {
        /* renamed from: b */
        void mo32868b(int i);
    }

    /* renamed from: m */
    public static void m33478m(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    /* renamed from: n */
    public static void m33477n(Activity activity) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            activity.recreate();
        } else if (i <= 23) {
            new Handler(activity.getMainLooper()).post(new RunnableC0550b(activity));
        } else if (C0555c.m33464i(activity)) {
        } else {
            activity.recreate();
        }
    }

    /* renamed from: o */
    public static void m33476o(Activity activity, String[] strArr, int i) {
        AbstractC0552d abstractC0552d = f2824d;
        if (abstractC0552d == null || !abstractC0552d.m33473a(activity, strArr, i)) {
            for (String str : strArr) {
                if (TextUtils.isEmpty(str)) {
                    throw new IllegalArgumentException("Permission request for permissions " + Arrays.toString(strArr) + " must not contain null or empty values");
                }
            }
            if (Build.VERSION.SDK_INT >= 23) {
                if (activity instanceof AbstractC0553e) {
                    ((AbstractC0553e) activity).mo32868b(i);
                }
                activity.requestPermissions(strArr, i);
            } else if (activity instanceof AbstractC0551c) {
                new Handler(Looper.getMainLooper()).post(new RunnableC0549a(strArr, activity, i));
            }
        }
    }

    /* renamed from: p */
    public static void m33475p(Activity activity, Intent intent, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    /* renamed from: q */
    public static void m33474q(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
        }
    }
}
