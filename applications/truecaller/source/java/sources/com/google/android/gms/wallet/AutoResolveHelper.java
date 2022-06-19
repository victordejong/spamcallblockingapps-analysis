package com.google.android.gms.wallet;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/AutoResolveHelper.class */
public class AutoResolveHelper {

    /* renamed from: a */
    public static long f6549a = SystemClock.elapsedRealtime();

    /* renamed from: b */
    public static final /* synthetic */ int f6550b = 0;

    static {
        TimeUnit.MINUTES.toMillis(10L);
    }

    private AutoResolveHelper() {
    }

    /* renamed from: a */
    public static <TResult> void m38478a(@RecentlyNonNull Status status, TResult tresult, @RecentlyNonNull TaskCompletionSource<TResult> taskCompletionSource) {
        if (status.m39042q2()) {
            taskCompletionSource.f6493a.w(tresult);
            return;
        }
        taskCompletionSource.f6493a.v(ApiExceptionUtil.m38920a(status));
    }

    /* renamed from: b */
    public static void m38477b(Activity activity, int i, int i2, Intent intent) {
        PendingIntent createPendingResult = activity.createPendingResult(i, intent, 1073741824);
        if (createPendingResult == null) {
            if (!Log.isLoggable("AutoResolveHelper", 5)) {
                return;
            }
            return;
        }
        try {
            createPendingResult.send(i2);
        } catch (PendingIntent.CanceledException e) {
            if (Log.isLoggable("AutoResolveHelper", 6)) {
            }
        }
    }
}
