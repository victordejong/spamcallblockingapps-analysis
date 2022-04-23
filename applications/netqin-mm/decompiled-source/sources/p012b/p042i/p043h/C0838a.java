package p012b.p042i.p043h;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import p012b.p042i.p044i.C0869a;
/* renamed from: b.i.h.a */
/* loaded from: classes-dex2jar.jar:b/i/h/a.class */
public class C0838a extends C0869a {

    /* renamed from: c */
    public static AbstractC0841c f3950c;

    /* renamed from: b.i.h.a$a */
    /* loaded from: classes-dex2jar.jar:b/i/h/a$a.class */
    public class RunnableC0839a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String[] f3951a;

        /* renamed from: b */
        public final /* synthetic */ Activity f3952b;

        /* renamed from: c */
        public final /* synthetic */ int f3953c;

        public RunnableC0839a(String[] strArr, Activity activity, int i) {
            this.f3951a = strArr;
            this.f3952b = activity;
            this.f3953c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.f3951a.length];
            PackageManager packageManager = this.f3952b.getPackageManager();
            String packageName = this.f3952b.getPackageName();
            int length = this.f3951a.length;
            for (int i = 0; i < length; i++) {
                iArr[i] = packageManager.checkPermission(this.f3951a[i], packageName);
            }
            ((AbstractC0840b) this.f3952b).onRequestPermissionsResult(this.f3953c, this.f3951a, iArr);
        }
    }

    /* renamed from: b.i.h.a$b */
    /* loaded from: classes-dex2jar.jar:b/i/h/a$b.class */
    public interface AbstractC0840b {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    /* renamed from: b.i.h.a$c */
    /* loaded from: classes-dex2jar.jar:b/i/h/a$c.class */
    public interface AbstractC0841c {
        /* renamed from: a */
        boolean m35797a(Activity activity, int i, int i2, Intent intent);

        /* renamed from: a */
        boolean m35796a(Activity activity, String[] strArr, int i);
    }

    /* renamed from: b.i.h.a$d */
    /* loaded from: classes-dex2jar.jar:b/i/h/a$d.class */
    public interface AbstractC0842d {
        /* renamed from: a */
        void mo35795a(int i);
    }

    /* renamed from: a */
    public static AbstractC0841c m35803a() {
        return f3950c;
    }

    /* renamed from: a */
    public static void m35802a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.finishAffinity();
        } else {
            activity.finish();
        }
    }

    /* renamed from: a */
    public static void m35801a(Activity activity, Intent intent, int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            activity.startActivityForResult(intent, i, bundle);
        } else {
            activity.startActivityForResult(intent, i);
        }
    }

    /* renamed from: a */
    public static void m35799a(Activity activity, String[] strArr, int i) {
        AbstractC0841c cVar = f3950c;
        if (cVar != null && cVar.m35796a(activity, strArr, i)) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (activity instanceof AbstractC0842d) {
                ((AbstractC0842d) activity).mo35795a(i);
            }
            activity.requestPermissions(strArr, i);
        } else if (activity instanceof AbstractC0840b) {
            new Handler(Looper.getMainLooper()).post(new RunnableC0839a(strArr, activity, i));
        }
    }

    /* renamed from: a */
    public static boolean m35800a(Activity activity, String str) {
        if (Build.VERSION.SDK_INT >= 23) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    /* renamed from: b */
    public static void m35798b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else if (!C0843b.m35793a(activity)) {
            activity.recreate();
        }
    }
}
