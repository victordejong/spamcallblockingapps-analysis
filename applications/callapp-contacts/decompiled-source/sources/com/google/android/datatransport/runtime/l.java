package com.google.android.datatransport.runtime;

import android.util.Base64;
import com.google.android.datatransport.d;
import com.google.android.datatransport.runtime.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/l.class */
public abstract class l {

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/l$a.class */
    public static abstract class a {
        public abstract a a(d dVar);

        public abstract a a(String str);

        public abstract a a(byte[] bArr);

        public abstract l a();
    }

    public static a d() {
        return new c.a().a(d.DEFAULT);
    }

    public abstract String a();

    public abstract byte[] b();

    public abstract d c();

    public final String toString() {
        return String.format("TransportContext(%s, %s, %s)", a(), c(), b() == null ? "" : Base64.encodeToString(b(), 2));
    }
}
