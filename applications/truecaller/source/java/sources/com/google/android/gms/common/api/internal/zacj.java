package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import com.google.android.gms.internal.base.zao;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/zacj.class */
public final class zacj {

    /* renamed from: a */
    public static final ExecutorService f5871a = zao.zaa().zac(new NumberedThreadFactory("GAC_Transform"), 1);
}
