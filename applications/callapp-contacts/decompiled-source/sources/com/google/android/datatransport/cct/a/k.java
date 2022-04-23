package com.google.android.datatransport.cct.a;

import com.google.android.datatransport.cct.a.e;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/k.class */
public abstract class k {

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/k$a.class */
    public static abstract class a {
        public abstract a a(com.google.android.datatransport.cct.a.a aVar);

        public abstract a a(b bVar);

        public abstract k a();
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/k$b.class */
    public enum b {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);
        
        private final int value;

        b(int i) {
            this.value = i;
        }
    }

    public static a c() {
        return new e.a();
    }

    public abstract b a();

    public abstract com.google.android.datatransport.cct.a.a b();
}
