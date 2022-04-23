package com.google.android.play.core.missingsplits;

import android.content.Context;
import java.util.concurrent.atomic.AtomicReference;
@Deprecated
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/missingsplits/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference<Boolean> f31401a = new AtomicReference<>(null);

    @Deprecated
    public static a a(Context context) {
        return new d(context, Runtime.getRuntime(), new c(context, context.getPackageManager()), f31401a);
    }
}
