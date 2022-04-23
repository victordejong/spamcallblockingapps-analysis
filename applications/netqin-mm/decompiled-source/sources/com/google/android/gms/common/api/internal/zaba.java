package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import com.google.android.gms.internal.base.zal;
import com.google.android.gms.internal.base.zaq;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaba.class */
public final class zaba {

    /* renamed from: a */
    public static final ExecutorService f23245a = zal.m10878a().mo10877a(2, new NumberedThreadFactory("GAC_Executor"), zaq.f29196b);

    /* renamed from: a */
    public static ExecutorService m17525a() {
        return f23245a;
    }
}
