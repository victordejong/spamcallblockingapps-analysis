package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import com.google.android.gms.internal.base.zao;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zabe.class */
public final class zabe {

    /* renamed from: a */
    public static final ExecutorService f5848a = zao.zaa().zab(2, new NumberedThreadFactory("GAC_Executor"), 2);
}
