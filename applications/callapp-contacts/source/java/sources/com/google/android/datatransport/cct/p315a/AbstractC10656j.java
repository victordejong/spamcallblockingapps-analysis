package com.google.android.datatransport.cct.p315a;

import com.google.firebase.encoders.AbstractC15732a;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import java.util.List;
/* renamed from: com.google.android.datatransport.cct.a.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/j.class */
public abstract class AbstractC10656j {
    /* renamed from: a */
    public static AbstractC10656j m22578a(List<AbstractC10662m> list) {
        return new C10642d(list);
    }

    /* renamed from: b */
    public static AbstractC15732a m22577b() {
        return new JsonDataEncoderBuilder().configureWith(C10632b.f34402a).ignoreNullValues(true).build();
    }

    /* renamed from: a */
    public abstract List<AbstractC10662m> mo22579a();
}
