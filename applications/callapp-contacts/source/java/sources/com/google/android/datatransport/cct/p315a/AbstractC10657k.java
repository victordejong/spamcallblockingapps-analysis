package com.google.android.datatransport.cct.p315a;

import com.google.android.datatransport.cct.p315a.C10643e;
/* renamed from: com.google.android.datatransport.cct.a.k */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/k.class */
public abstract class AbstractC10657k {

    /* renamed from: com.google.android.datatransport.cct.a.k$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/k$a.class */
    public static abstract class AbstractC10658a {
        /* renamed from: a */
        public abstract AbstractC10658a mo22572a(AbstractC10630a abstractC10630a);

        /* renamed from: a */
        public abstract AbstractC10658a mo22571a(EnumC10659b enumC10659b);

        /* renamed from: a */
        public abstract AbstractC10657k mo22573a();
    }

    /* renamed from: com.google.android.datatransport.cct.a.k$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/k$b.class */
    public enum EnumC10659b {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);
        
        private final int value;

        EnumC10659b(int i) {
            this.value = i;
        }
    }

    /* renamed from: c */
    public static AbstractC10658a m22574c() {
        return new C10643e.C10645a();
    }

    /* renamed from: a */
    public abstract EnumC10659b mo22576a();

    /* renamed from: b */
    public abstract AbstractC10630a mo22575b();
}
