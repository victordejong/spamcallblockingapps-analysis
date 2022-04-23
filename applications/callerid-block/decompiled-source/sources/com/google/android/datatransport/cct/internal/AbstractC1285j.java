package com.google.android.datatransport.cct.internal;

import com.google.auto.value.AutoValue;
import com.google.firebase.encoders.a;
import com.google.firebase.encoders.h.d;
import java.util.List;
@AutoValue
/* renamed from: com.google.android.datatransport.cct.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/j.class */
public abstract class AbstractC1285j {
    /* renamed from: a */
    public static AbstractC1285j m9296a(List<AbstractC1288l> list) {
        return new d(list);
    }

    /* renamed from: b */
    public static a m9295b() {
        d dVar = new d();
        dVar.g(b.a);
        dVar.h(true);
        return dVar.f();
    }

    /* renamed from: c */
    public abstract List<AbstractC1288l> m9294c();
}
