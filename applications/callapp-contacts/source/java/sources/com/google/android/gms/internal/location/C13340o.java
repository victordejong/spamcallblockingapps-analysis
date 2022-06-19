package com.google.android.gms.internal.location;

import android.content.Context;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.location.AbstractC13754d;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.location.o */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/o.class */
public final class C13340o {

    /* renamed from: a */
    public final AbstractC13346u<AbstractC13333h> f50565a;

    /* renamed from: b */
    boolean f50566b = false;

    /* renamed from: c */
    final Map<C11899i.C11900a<Object>, BinderC13339n> f50567c = new HashMap();

    /* renamed from: d */
    final Map<C11899i.C11900a, BinderC13337l> f50568d = new HashMap();

    /* renamed from: e */
    public final Map<C11899i.C11900a<AbstractC13754d>, BinderC13336k> f50569e = new HashMap();

    /* renamed from: f */
    private final Context f50570f;

    public C13340o(Context context, AbstractC13346u<AbstractC13333h> abstractC13346u) {
        this.f50570f = context;
        this.f50565a = abstractC13346u;
    }
}
