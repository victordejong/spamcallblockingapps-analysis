package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/t.class */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public final String f21695a;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/t$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f21696a;
    }

    private t(String str) {
        this.f21695a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return af.a((Object) this.f21695a, (Object) ((t) obj).f21695a);
    }

    public final int hashCode() {
        String str = this.f21695a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }
}
