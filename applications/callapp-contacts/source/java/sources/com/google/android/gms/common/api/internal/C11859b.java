package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.C11808a.AbstractC11812d;
import com.google.android.gms.common.internal.C12041m;
import java.util.Arrays;
/* renamed from: com.google.android.gms.common.api.internal.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/b.class */
public final class C11859b<O extends C11808a.AbstractC11812d> {

    /* renamed from: a */
    public final C11808a<O> f39267a;

    /* renamed from: b */
    private final int f39268b;

    /* renamed from: c */
    private final O f39269c;

    /* renamed from: d */
    private final String f39270d;

    private C11859b(C11808a<O> c11808a, O o, String str) {
        this.f39267a = c11808a;
        this.f39269c = o;
        this.f39270d = str;
        this.f39268b = Arrays.hashCode(new Object[]{c11808a, o, str});
    }

    /* renamed from: a */
    public static <O extends C11808a.AbstractC11812d> C11859b<O> m19397a(C11808a<O> c11808a, O o, String str) {
        return new C11859b<>(c11808a, o, str);
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C11859b)) {
            return false;
        }
        C11859b c11859b = (C11859b) obj;
        return C12041m.m19168a(this.f39267a, c11859b.f39267a) && C12041m.m19168a(this.f39269c, c11859b.f39269c) && C12041m.m19168a(this.f39270d, c11859b.f39270d);
    }

    public final int hashCode() {
        return this.f39268b;
    }
}
