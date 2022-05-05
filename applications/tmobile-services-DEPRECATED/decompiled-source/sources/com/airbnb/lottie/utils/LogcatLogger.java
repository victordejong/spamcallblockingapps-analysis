package com.airbnb.lottie.utils;

import android.util.Log;
import com.airbnb.lottie.C0611L;
import com.airbnb.lottie.LottieLogger;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/utils/LogcatLogger.class */
public class LogcatLogger implements LottieLogger {

    /* renamed from: a */
    private static final Set<String> f6386a = new HashSet();

    @Override // com.airbnb.lottie.LottieLogger
    /* renamed from: a */
    public void mo15743a(String str, Throwable th) {
        if (C0611L.f5670a) {
            Log.d("LOTTIE", str, th);
        }
    }

    @Override // com.airbnb.lottie.LottieLogger
    /* renamed from: b */
    public void mo15742b(String str) {
        m15739e(str, null);
    }

    @Override // com.airbnb.lottie.LottieLogger
    /* renamed from: c */
    public void mo15741c(String str, Throwable th) {
        if (!f6386a.contains(str)) {
            Log.w("LOTTIE", str, th);
            f6386a.add(str);
        }
    }

    @Override // com.airbnb.lottie.LottieLogger
    /* renamed from: d */
    public void mo15740d(String str) {
        mo15741c(str, null);
    }

    /* renamed from: e */
    public void m15739e(String str, Throwable th) {
        if (C0611L.f5670a) {
            Log.d("LOTTIE", str, th);
        }
    }
}
