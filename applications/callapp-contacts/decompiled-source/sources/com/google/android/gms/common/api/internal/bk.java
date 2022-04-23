package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bk.class */
public final class bk {

    /* renamed from: a  reason: collision with root package name */
    public static final Status f22689a = new Status(8, "The connection to Google Play services was lost");

    /* renamed from: b  reason: collision with root package name */
    final Set<BasePendingResult<?>> f22690b = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    /* renamed from: c  reason: collision with root package name */
    private final bj f22691c = new bj(this);
}
