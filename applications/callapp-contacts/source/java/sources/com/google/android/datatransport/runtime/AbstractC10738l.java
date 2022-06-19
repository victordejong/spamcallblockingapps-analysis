package com.google.android.datatransport.runtime;

import android.util.Base64;
import com.google.android.datatransport.EnumC10676d;
import com.google.android.datatransport.runtime.C10711c;
/* renamed from: com.google.android.datatransport.runtime.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/l.class */
public abstract class AbstractC10738l {

    /* renamed from: com.google.android.datatransport.runtime.l$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/l$a.class */
    public static abstract class AbstractC10739a {
        /* renamed from: a */
        public abstract AbstractC10739a mo22445a(EnumC10676d enumC10676d);

        /* renamed from: a */
        public abstract AbstractC10739a mo22444a(String str);

        /* renamed from: a */
        public abstract AbstractC10739a mo22443a(byte[] bArr);

        /* renamed from: a */
        public abstract AbstractC10738l mo22446a();
    }

    /* renamed from: d */
    public static AbstractC10739a m22447d() {
        return new C10711c.C10713a().mo22445a(EnumC10676d.DEFAULT);
    }

    /* renamed from: a */
    public abstract String mo22450a();

    /* renamed from: b */
    public abstract byte[] mo22449b();

    /* renamed from: c */
    public abstract EnumC10676d mo22448c();

    public final String toString() {
        return String.format("TransportContext(%s, %s, %s)", mo22450a(), mo22448c(), mo22449b() == null ? "" : Base64.encodeToString(mo22449b(), 2));
    }
}
