package androidx.core.app;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.core.p015a.C0409a;
/* renamed from: androidx.core.app.a */
/* loaded from: classes-dex2jar.jar:androidx/core/app/a.class */
public class C0427a extends C0409a {

    /* renamed from: a */
    private static AbstractC0430b f1576a;

    /* renamed from: androidx.core.app.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$a.class */
    public interface AbstractC0429a {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    /* renamed from: androidx.core.app.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$b.class */
    public interface AbstractC0430b {
        /* renamed from: a */
        boolean m6672a(Activity activity, int i, int i2, Intent intent);

        /* renamed from: a */
        boolean m6671a(Activity activity, String[] strArr, int i);
    }

    /* renamed from: androidx.core.app.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$c.class */
    public interface AbstractC0431c {
        /* renamed from: c */
        void mo5669c(int i);
    }

    /* renamed from: a */
    public static AbstractC0430b m6679a() {
        return f1576a;
    }

    /* renamed from: a */
    public static void m6678a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    /* renamed from: a */
    public static void m6677a(Activity activity, Intent intent, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    /* renamed from: a */
    public static void m6676a(Activity activity, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            activity.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
        }
    }

    /* renamed from: a */
    public static void m6674a(final Activity activity, final String[] strArr, final int i) {
        AbstractC0430b abstractC0430b = f1576a;
        if (abstractC0430b == null || !abstractC0430b.m6671a(activity, strArr, i)) {
            if (Build.VERSION.SDK_INT >= 23) {
                if (activity instanceof AbstractC0431c) {
                    ((AbstractC0431c) activity).mo5669c(i);
                }
                activity.requestPermissions(strArr, i);
            } else if (!(activity instanceof AbstractC0429a)) {
            } else {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.core.app.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int[] iArr = new int[strArr.length];
                        PackageManager packageManager = activity.getPackageManager();
                        String packageName = activity.getPackageName();
                        int length = strArr.length;
                        for (int i2 = 0; i2 < length; i2++) {
                            iArr[i2] = packageManager.checkPermission(strArr[i2], packageName);
                        }
                        ((AbstractC0429a) activity).onRequestPermissionsResult(i, strArr, iArr);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public static boolean m6675a(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    /* renamed from: b */
    public static void m6673b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else if (C0432b.m6669a(activity)) {
        } else {
            activity.recreate();
        }
    }
}
