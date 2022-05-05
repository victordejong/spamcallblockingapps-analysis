package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import com.google.android.gms.internal.base.zan;
import com.google.android.gms.internal.base.zao;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabf.class */
public final class zabf {

    /* renamed from: a */
    private static final ExecutorService f7231a = zan.m14103a().mo14102a(2, new NumberedThreadFactory("GAC_Executor"), zao.f7839a);

    /* renamed from: a */
    public static ExecutorService m14786a() {
        return f7231a;
    }
}
