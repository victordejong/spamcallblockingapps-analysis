package p026c0;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import java.util.Arrays;
import p066d0.C2134a;
/* renamed from: c0.a */
/* loaded from: classes-dex2jar.jar:c0/a.class */
public class C0774a extends C2134a {

    /* renamed from: b */
    public static final /* synthetic */ int f2893b = 0;

    /* renamed from: c0.a$a */
    /* loaded from: classes-dex2jar.jar:c0/a$a.class */
    public class RunnableC0775a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String[] f2894a;

        /* renamed from: b */
        public final /* synthetic */ Activity f2895b;

        /* renamed from: c */
        public final /* synthetic */ int f2896c;

        public RunnableC0775a(String[] strArr, Activity activity, int i) {
            this.f2894a = strArr;
            this.f2895b = activity;
            this.f2896c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            int[] iArr = new int[this.f2894a.length];
            PackageManager packageManager = this.f2895b.getPackageManager();
            String packageName = this.f2895b.getPackageName();
            int length = this.f2894a.length;
            for (int i = 0; i < length; i++) {
                iArr[i] = packageManager.checkPermission(this.f2894a[i], packageName);
            }
            ((AbstractC0776b) this.f2895b).onRequestPermissionsResult(this.f2896c, this.f2894a, iArr);
        }
    }

    /* renamed from: c0.a$b */
    /* loaded from: classes-dex2jar.jar:c0/a$b.class */
    public interface AbstractC0776b {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    /* renamed from: c0.a$c */
    /* loaded from: classes-dex2jar.jar:c0/a$c.class */
    public interface AbstractC0777c {
        /* renamed from: a */
        void mo7382a(int i);
    }

    /* renamed from: c */
    public static void m7383c(Activity activity, String[] strArr, int i) {
        for (String str : strArr) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException(C0082b.m8754h(C0082b.m8752j("Permission request for permissions "), Arrays.toString(strArr), " must not contain null or empty values"));
            }
        }
        if (Build.VERSION.SDK_INT >= 23) {
            if (activity instanceof AbstractC0777c) {
                ((AbstractC0777c) activity).mo7382a(i);
            }
            activity.requestPermissions(strArr, i);
        } else if (activity instanceof AbstractC0776b) {
            new Handler(Looper.getMainLooper()).post(new RunnableC0775a(strArr, activity, i));
        }
    }
}
