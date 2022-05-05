package com.google.android.gms.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/bc.class */
public abstract class bc {

    /* renamed from: a  reason: collision with root package name */
    private static final ExecutorService f4146a = new ThreadPoolExecutor(0, 4, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new bi("GAC_Transform"));

    public static ExecutorService a() {
        return f4146a;
    }
}
