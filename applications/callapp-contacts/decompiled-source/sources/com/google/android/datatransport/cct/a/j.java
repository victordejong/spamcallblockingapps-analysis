package com.google.android.datatransport.cct.a;

import com.google.firebase.encoders.a;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/j.class */
public abstract class j {
    public static j a(List<m> list) {
        return new d(list);
    }

    public static a b() {
        return new JsonDataEncoderBuilder().configureWith(b.f20318a).ignoreNullValues(true).build();
    }

    public abstract List<m> a();
}
