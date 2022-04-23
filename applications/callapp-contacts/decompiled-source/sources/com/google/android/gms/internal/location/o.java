package com.google.android.gms.internal.location;

import android.content.Context;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.location.d;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public final u<h> f28905a;

    /* renamed from: b  reason: collision with root package name */
    boolean f28906b = false;

    /* renamed from: c  reason: collision with root package name */
    final Map<i.a<Object>, n> f28907c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    final Map<i.a, l> f28908d = new HashMap();
    public final Map<i.a<d>, k> e = new HashMap();
    private final Context f;

    public o(Context context, u<h> uVar) {
        this.f = context;
        this.f28905a = uVar;
    }
}
