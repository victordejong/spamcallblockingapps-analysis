package com.google.android.play.core.missingsplits;

import android.content.Context;
import java.util.concurrent.atomic.AtomicReference;
@Deprecated
/* renamed from: com.google.android.play.core.missingsplits.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/missingsplits/b.class */
public class C8531b {

    /* renamed from: a */
    private static final AtomicReference<Boolean> f38094a = new AtomicReference<>(null);

    @Deprecated
    /* renamed from: a */
    public static AbstractC8530a m3406a(Context context) {
        return new C8533d(context, Runtime.getRuntime(), new C8532c(context, context.getPackageManager()), f38094a);
    }
}
