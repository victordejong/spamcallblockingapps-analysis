package com.google.android.play.core.missingsplits;

import android.content.Context;
import java.util.concurrent.atomic.AtomicReference;
@Deprecated
/* renamed from: com.google.android.play.core.missingsplits.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/missingsplits/b.class */
public final class C15092b {

    /* renamed from: a */
    private static final AtomicReference<Boolean> f54815a = new AtomicReference<>(null);

    @Deprecated
    /* renamed from: a */
    public static AbstractC15091a m9475a(Context context) {
        return new C15094d(context, Runtime.getRuntime(), new C15093c(context, context.getPackageManager()), f54815a);
    }
}
