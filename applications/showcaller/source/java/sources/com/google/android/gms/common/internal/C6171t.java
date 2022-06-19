package com.google.android.gms.common.internal;

import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.api.C5984a;
/* renamed from: com.google.android.gms.common.internal.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/t.class */
public class C6171t implements C5984a.AbstractC5988d {
    @RecentlyNonNull

    /* renamed from: d */
    public static final C6171t f19603d = m16921a().m16919a();

    /* renamed from: e */
    private final String f19604e;

    /* renamed from: com.google.android.gms.common.internal.t$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/t$a.class */
    public static class C6172a {

        /* renamed from: a */
        private String f19605a;

        /* synthetic */ C6172a(C6187x c6187x) {
        }

        @RecentlyNonNull
        /* renamed from: a */
        public C6171t m16919a() {
            return new C6171t(this.f19605a, null);
        }
    }

    /* synthetic */ C6171t(String str, C6187x c6187x) {
        this.f19604e = str;
    }

    @RecentlyNonNull
    /* renamed from: a */
    public static C6172a m16921a() {
        return new C6172a(null);
    }

    @RecentlyNonNull
    /* renamed from: b */
    public final Bundle m16920b() {
        Bundle bundle = new Bundle();
        String str = this.f19604e;
        if (str != null) {
            bundle.putString("api", str);
        }
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C6171t) {
            return C6147m.m17044a(this.f19604e, ((C6171t) obj).f19604e);
        }
        return false;
    }

    public final int hashCode() {
        return C6147m.m17043b(this.f19604e);
    }
}
