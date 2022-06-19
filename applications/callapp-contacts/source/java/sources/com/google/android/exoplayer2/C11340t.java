package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.t */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/t.class */
public final class C11340t {

    /* renamed from: a */
    public final String f37305a;

    /* renamed from: com.google.android.exoplayer2.t$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/t$a.class */
    public static final class C11342a {

        /* renamed from: a */
        String f37306a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C11340t(String str) {
        this.f37305a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return C11599af.m19973a((Object) this.f37305a, (Object) ((C11340t) obj).f37305a);
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f37305a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }
}
