package androidx.core.app;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.core.p017a.C0438a;
/* renamed from: androidx.core.app.a */
/* loaded from: classes-dex2jar.jar:androidx/core/app/a.class */
public class C0456a extends C0438a {

    /* renamed from: a */
    private static AbstractC0459b f1756a;

    /* renamed from: androidx.core.app.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$a.class */
    public interface AbstractC0458a {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    /* renamed from: androidx.core.app.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$b.class */
    public interface AbstractC0459b {
        /* renamed from: a */
        boolean m20818a(Activity activity, int i, int i2, Intent intent);

        /* renamed from: a */
        boolean m20817a(Activity activity, String[] strArr, int i);
    }

    /* renamed from: androidx.core.app.a$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/a$c.class */
    public interface AbstractC0460c {
        /* renamed from: a_ */
        void mo19880a_(int i);
    }

    /* renamed from: a */
    public static AbstractC0459b m20824a() {
        return f1756a;
    }

    /* renamed from: a */
    public static void m20823a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    /* renamed from: a */
    public static void m20822a(Activity activity, Intent intent, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    /* renamed from: a */
    public static void m20820a(final Activity activity, final String[] strArr, final int i) {
        if (f1756a == null || !f1756a.m20817a(activity, strArr, i)) {
            if (Build.VERSION.SDK_INT >= 23) {
                if (activity instanceof AbstractC0460c) {
                    ((AbstractC0460c) activity).mo19880a_(i);
                }
                activity.requestPermissions(strArr, i);
            } else if (!(activity instanceof AbstractC0458a)) {
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
                        ((AbstractC0458a) activity).onRequestPermissionsResult(i, strArr, iArr);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public static boolean m20821a(Activity activity, String str) {
        return Build.VERSION.SDK_INT >= 23 ? activity.shouldShowRequestPermissionRationale(str) : false;
    }

    /* renamed from: b */
    public static void m20819b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else if (C0461b.m20815a(activity)) {
        } else {
            activity.recreate();
        }
    }
}
