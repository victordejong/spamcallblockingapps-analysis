package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.google.android.gms.common.api.internal.bk */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bk.class */
public final class C11870bk {

    /* renamed from: a */
    public static final Status f39295a = new Status(8, "The connection to Google Play services was lost");

    /* renamed from: b */
    final Set<BasePendingResult<?>> f39296b = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    /* renamed from: c */
    private final C11869bj f39297c = new C11869bj(this);
}
