package com.google.android.datatransport.p062h;

import android.util.Base64;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.h.c;
import com.google.auto.value.AutoValue;
@AutoValue
/* renamed from: com.google.android.datatransport.h.m */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/m.class */
public abstract class AbstractC1304m {

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.h.m$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/m$a.class */
    public static abstract class AbstractC1305a {
        /* renamed from: a */
        public abstract AbstractC1304m m9204a();

        /* renamed from: b */
        public abstract AbstractC1305a m9203b(String str);

        /* renamed from: c */
        public abstract AbstractC1305a m9202c(byte[] bArr);

        /* renamed from: d */
        public abstract AbstractC1305a m9201d(Priority priority);
    }

    /* renamed from: a */
    public static AbstractC1305a m9209a() {
        c.b bVar = new c.b();
        bVar.d(Priority.DEFAULT);
        return bVar;
    }

    /* renamed from: b */
    public abstract String m9208b();

    /* renamed from: c */
    public abstract byte[] m9207c();

    /* renamed from: d */
    public abstract Priority m9206d();

    /* renamed from: e */
    public AbstractC1304m m9205e(Priority priority) {
        AbstractC1305a a = m9209a();
        a.m9203b(m9208b());
        a.m9201d(priority);
        a.m9202c(m9207c());
        return a.m9204a();
    }

    public final String toString() {
        return String.format("TransportContext(%s, %s, %s)", m9208b(), m9206d(), m9207c() == null ? "" : Base64.encodeToString(m9207c(), 2));
    }
}
