package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.internal.m;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/b.class */
public final class b<O extends a.d> {

    /* renamed from: a  reason: collision with root package name */
    public final a<O> f22670a;

    /* renamed from: b  reason: collision with root package name */
    private final int f22671b;

    /* renamed from: c  reason: collision with root package name */
    private final O f22672c;

    /* renamed from: d  reason: collision with root package name */
    private final String f22673d;

    private b(a<O> aVar, O o, String str) {
        this.f22670a = aVar;
        this.f22672c = o;
        this.f22673d = str;
        this.f22671b = Arrays.hashCode(new Object[]{aVar, o, str});
    }

    public static <O extends a.d> b<O> a(a<O> aVar, O o, String str) {
        return new b<>(aVar, o, str);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return m.a(this.f22670a, bVar.f22670a) && m.a(this.f22672c, bVar.f22672c) && m.a(this.f22673d, bVar.f22673d);
    }

    public final int hashCode() {
        return this.f22671b;
    }
}
