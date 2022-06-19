package com.google.android.datatransport.p232h;

import android.util.Base64;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.p232h.C4655c;
import com.google.auto.value.AutoValue;
@AutoValue
/* renamed from: com.google.android.datatransport.h.m */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/m.class */
public abstract class AbstractC4673m {

    @AutoValue.Builder
    /* renamed from: com.google.android.datatransport.h.m$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/m$a.class */
    public static abstract class AbstractC4674a {
        /* renamed from: a */
        public abstract AbstractC4673m mo22019a();

        /* renamed from: b */
        public abstract AbstractC4674a mo22018b(String str);

        /* renamed from: c */
        public abstract AbstractC4674a mo22017c(byte[] bArr);

        /* renamed from: d */
        public abstract AbstractC4674a mo22016d(Priority priority);
    }

    /* renamed from: a */
    public static AbstractC4674a m22024a() {
        return new C4655c.C4657b().mo22016d(Priority.DEFAULT);
    }

    /* renamed from: b */
    public abstract String mo22023b();

    /* renamed from: c */
    public abstract byte[] mo22022c();

    /* renamed from: d */
    public abstract Priority mo22021d();

    /* renamed from: e */
    public AbstractC4673m m22020e(Priority priority) {
        return m22024a().mo22018b(mo22023b()).mo22016d(priority).mo22017c(mo22022c()).mo22019a();
    }

    public final String toString() {
        return String.format("TransportContext(%s, %s, %s)", mo22023b(), mo22021d(), mo22022c() == null ? "" : Base64.encodeToString(mo22022c(), 2));
    }
}
