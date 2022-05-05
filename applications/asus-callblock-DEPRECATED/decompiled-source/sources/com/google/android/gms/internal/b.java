package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.a.d;
import com.google.android.gms.common.a.e;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public String f4144a;

    /* renamed from: b  reason: collision with root package name */
    Map<String, Object> f4145b;
    private final Context c;
    private final d d;
    private final d e;
    private final Map<String, Object> f;

    public b(Context context) {
        this(context, new HashMap(), new d(context), e.c());
    }

    private b(Context context, Map<String, Object> map, d dVar, d dVar2) {
        this.f4144a = null;
        this.f4145b = new HashMap();
        this.c = context;
        this.e = dVar2;
        this.d = dVar;
        this.f = map;
    }
}
