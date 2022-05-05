package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabh.class */
public final class zabh {
    private static final ExecutorService zahv = Executors.newFixedThreadPool(2, new NumberedThreadFactory("GAC_Executor"));

    public static ExecutorService zabb() {
        return zahv;
    }
}
