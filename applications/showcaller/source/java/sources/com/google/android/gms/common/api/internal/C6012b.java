package com.google.android.gms.common.api.internal;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.C5984a.AbstractC5988d;
import com.google.android.gms.common.internal.C6147m;
/* renamed from: com.google.android.gms.common.api.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/b.class */
public final class C6012b<O extends C5984a.AbstractC5988d> {

    /* renamed from: a */
    private final int f19219a;

    /* renamed from: b */
    private final C5984a<O> f19220b;

    /* renamed from: c */
    private final O f19221c;

    /* renamed from: d */
    private final String f19222d;

    private C6012b(C5984a<O> c5984a, O o, String str) {
        this.f19220b = c5984a;
        this.f19221c = o;
        this.f19222d = str;
        this.f19219a = C6147m.m17043b(c5984a, o, str);
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static <O extends C5984a.AbstractC5988d> C6012b<O> m17436a(@RecentlyNonNull C5984a<O> c5984a, O o, String str) {
        return new C6012b<>(c5984a, o, str);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public final String m17435b() {
        return this.f19220b.m17481c();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C6012b)) {
            return false;
        }
        C6012b c6012b = (C6012b) obj;
        return C6147m.m17044a(this.f19220b, c6012b.f19220b) && C6147m.m17044a(this.f19221c, c6012b.f19221c) && C6147m.m17044a(this.f19222d, c6012b.f19222d);
    }

    public final int hashCode() {
        return this.f19219a;
    }
}
