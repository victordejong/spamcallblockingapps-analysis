package com.kedlin.cca.core.service;

import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.Arrays;
import p000.k61;
import p000.m91;
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/service/BackgroundWorker.class */
public class BackgroundWorker extends IntentService {

    /* renamed from: b */
    public static final String f3711b;

    /* renamed from: c */
    public static final String f3712c;

    /* renamed from: d */
    public static final String f3713d;

    /* renamed from: f */
    public static final String f3714f;

    /* renamed from: g */
    public static final String f3715g;

    /* renamed from: h */
    public static final String f3716h;

    /* renamed from: j */
    public static final String f3717j;

    /* renamed from: k */
    public static final String f3718k;

    /* renamed from: l */
    public static final String f3719l;

    /* renamed from: a */
    public static final String f3710a = BackgroundWorker.class.getSimpleName();

    /* renamed from: m */
    public static int f3720m = 10000;

    static {
        String name = BackgroundWorker.class.getName();
        f3711b = name;
        f3712c = name + ".REQUEST_ARGS_METHOD";
        f3713d = name + ".REQUEST_ARGS_CHECK_INTERNET";
        f3714f = name + ".REQUEST_ARGS_RUNNABLE";
        f3715g = name + ".REQUEST_ARGS_FRAGMENT";
        f3716h = name + ".REQUEST_ARGS";
        f3717j = name + ".REQUEST_CALL_ARGS";
        f3718k = name + ".RESPONSE_STATUS_OK";
        String str = name + ".RESPONSE_STATUS_CODE";
        f3719l = name + ".PENDING_RESULT";
    }

    public BackgroundWorker() {
        super(f3711b);
    }

    /* renamed from: a */
    public static void m4375a(FragmentActivity fragmentActivity, int i, int i2, Intent intent) {
        int intExtra;
        if (intent != null) {
            try {
                intExtra = intent.getIntExtra(f3715g, -1);
            } catch (Exception e) {
                j91.m1504l(f3710a, "data is null\n", e);
                return;
            }
        } else {
            intExtra = -1;
        }
        if (intExtra == -1) {
            m4374b(fragmentActivity, i, i2, intent);
            m91.m1281a(null, m91.EnumC1470c.ACTIVITY_RESULT_RECEIVED, new m91.C1468a(i, i2, intent));
            return;
        }
        Fragment Y = fragmentActivity.getSupportFragmentManager().Y(intExtra);
        if (Y == null) {
            return;
        }
        Y.onActivityResult(i, i2, intent);
    }

    /* renamed from: b */
    public static void m4374b(FragmentActivity fragmentActivity, int i, int i2, Intent intent) {
        if (intent == null) {
            return;
        }
        int intExtra = intent.getIntExtra(f3715g, -1);
        FragmentActivity Y = intExtra == -1 ? fragmentActivity : fragmentActivity.getSupportFragmentManager().Y(intExtra);
        if (Y == null) {
            String str = f3710a;
            j91.m1517G(str, "Neither fragment ID=" + intExtra + " not activity " + fragmentActivity.getClass().getName() + " can be reached. Ignoring");
            return;
        }
        Object[] objArr = (Object[]) intent.getSerializableExtra(f3716h);
        Object[] objArr2 = objArr;
        if (objArr == null) {
            objArr2 = new Object[0];
        }
        String stringExtra = intent.getStringExtra(f3712c);
        StringBuilder sb = new StringBuilder();
        sb.append("on_");
        sb.append(stringExtra);
        sb.append("_");
        sb.append(intent.getBooleanExtra(f3718k, false) ? "success" : "failure");
        m4373c(Y, sb.toString(), objArr2);
    }

    /* renamed from: c */
    public static void m4373c(Object obj, String str, Object[] objArr) {
        Method[] methods;
        boolean z;
        try {
            for (Method method : obj.getClass().getMethods()) {
                if (method.getName().equals(str)) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (parameterTypes.length == objArr.length) {
                        int length = parameterTypes.length;
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                z = true;
                                break;
                            } else if (objArr[i] != null && !parameterTypes[i].isAssignableFrom(objArr[i].getClass())) {
                                z = false;
                                break;
                            } else {
                                i++;
                            }
                        }
                        if (z) {
                            method.invoke(obj, objArr);
                            return;
                        }
                    }
                }
            }
        } catch (Exception e) {
            j91.m1494v(e, "Error handling response");
        }
        String[] strArr = new String[objArr.length];
        int length2 = objArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i3 < length2) {
            Object obj2 = objArr[i3];
            strArr[i2] = obj2 == null ? "Object" : obj2.getClass().getSimpleName();
            i3++;
            i2++;
        }
        String arrays = Arrays.toString(strArr);
        String str2 = "Please create the following method in " + obj.getClass().getName() + ":";
        String str3 = "    public void " + str + "(" + arrays.substring(1, arrays.length() - 1) + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public static void m4370f(String str, Fragment fragment, BackgroundJob backgroundJob, Object... objArr) {
        FragmentActivity activity;
        if (fragment == null || (activity = fragment.getActivity()) == null) {
            return;
        }
        Intent intent = new Intent((Context) activity, (Class<?>) BackgroundWorker.class);
        intent.putExtra(f3712c, str);
        intent.putExtra(f3714f, backgroundJob);
        intent.putExtra(f3715g, fragment.getId());
        intent.putExtra(f3717j, (Serializable) objArr);
        Intent intent2 = new Intent();
        int i = f3720m;
        f3720m = i + 1;
        intent.putExtra(f3719l, activity.createPendingResult(i, intent2, 268435458));
        activity.startService(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public static void m4369g(String str, FragmentActivity fragmentActivity, BackgroundJob backgroundJob, Object... objArr) {
        Intent intent = new Intent((Context) fragmentActivity, (Class<?>) BackgroundWorker.class);
        intent.putExtra(f3712c, str);
        intent.putExtra(f3714f, backgroundJob);
        intent.putExtra(f3715g, -1);
        intent.putExtra(f3717j, (Serializable) objArr);
        Intent intent2 = new Intent();
        int i = f3720m;
        f3720m = i + 1;
        intent.putExtra(f3719l, fragmentActivity.createPendingResult(i, intent2, 268435458));
        fragmentActivity.startService(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    public static void m4368h(String str, FragmentActivity fragmentActivity, BackgroundJob backgroundJob, Object... objArr) {
        Intent intent = new Intent((Context) fragmentActivity, (Class<?>) BackgroundWorker.class);
        intent.putExtra(f3712c, str);
        intent.putExtra(f3713d, false);
        intent.putExtra(f3714f, backgroundJob);
        intent.putExtra(f3715g, -1);
        intent.putExtra(f3717j, (Serializable) objArr);
        Intent intent2 = new Intent();
        int i = f3720m;
        f3720m = i + 1;
        intent.putExtra(f3719l, fragmentActivity.createPendingResult(i, intent2, 268435458));
        fragmentActivity.startService(intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object[], java.io.Serializable] */
    /* renamed from: d */
    public void m4372d(Intent intent, k61.C1456a c1456a) {
        Intent intent2 = new Intent();
        intent2.putExtra(f3718k, false);
        String str = f3712c;
        intent2.putExtra(str, intent.getStringExtra(str));
        String str2 = f3715g;
        int intExtra = intent.getIntExtra(str2, -1);
        if (intExtra != -1) {
            intent2.putExtra(str2, intExtra);
        }
        String message = c1456a.getMessage();
        String str3 = message;
        if (message == null) {
            str3 = "";
        }
        intent2.putExtra(f3716h, (Serializable) new Object[]{Integer.valueOf(c1456a.m1434b()), str3, c1456a});
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra(f3719l);
        if (pendingIntent != null) {
            try {
                pendingIntent.send(this, c1456a.m1434b(), intent2);
                String str4 = "ReportFailure: Reported failure on " + intent.getAction();
            } catch (PendingIntent.CanceledException e) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public void m4371e(Intent intent, Object... objArr) {
        Intent intent2 = new Intent();
        intent2.putExtra(f3718k, true);
        String str = f3712c;
        intent2.putExtra(str, intent.getStringExtra(str));
        String str2 = f3715g;
        int intExtra = intent.getIntExtra(str2, -1);
        if (intExtra != -1) {
            intent2.putExtra(str2, intExtra);
        }
        intent2.putExtra(f3716h, (Serializable) objArr);
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra(f3719l);
        if (pendingIntent != null) {
            try {
                pendingIntent.send(this, -1, intent2);
                String str3 = "ReportSuccess: Success of request " + intent.getAction();
            } catch (PendingIntent.CanceledException e) {
                String str4 = "ReportSuccess: Success report canceled " + intent.getAction();
            }
        }
    }

    @Override // android.app.IntentService
    public void onHandleIntent(Intent intent) {
        if (intent == null) {
            j91.m1494v(new Throwable(), f3710a + ": No intent? how?");
            return;
        }
        String str = "on handle intent " + intent.toString();
        if (intent.getBooleanExtra(f3713d, true) && !fa1.m1827w()) {
            m4372d(intent, new k61.C1456a(getString(i61.error_nonetwork), -500));
            return;
        }
        try {
            BackgroundJob backgroundJob = (BackgroundJob) intent.getParcelableExtra(f3714f);
            Object[] objArr = (Object[]) intent.getSerializableExtra(f3717j);
            int i = 2;
            Object[] objArr2 = new Object[objArr.length + 2];
            int i2 = 0;
            objArr2[0] = this;
            objArr2[1] = intent;
            int length = objArr.length;
            while (i2 < length) {
                objArr2[i] = objArr[i2];
                i2++;
                i++;
            }
            m4373c(backgroundJob, "run", objArr2);
        } catch (Throwable th) {
            j91.m1494v(th, f3710a + ": Cannot execute protocol action.");
            m4372d(intent, new k61.C1456a("Sorry, cannot execute request. Please, try again later.", 500));
        }
    }
}
