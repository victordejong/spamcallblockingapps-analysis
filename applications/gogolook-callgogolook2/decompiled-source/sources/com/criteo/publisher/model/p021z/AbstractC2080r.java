package com.criteo.publisher.model.p021z;

import androidx.annotation.NonNull;
import com.criteo.publisher.model.p021z.C2072l;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.net.URI;
import java.net.URL;
/* renamed from: com.criteo.publisher.model.z.r */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/r.class */
public abstract class AbstractC2080r {
    /* renamed from: a */
    public static TypeAdapter<AbstractC2080r> m35725a(Gson gson) {
        return new C2072l.C2073a(gson);
    }

    @NonNull
    /* renamed from: a */
    public abstract String mo35726a();

    @NonNull
    /* renamed from: b */
    public abstract URI mo35724b();

    @NonNull
    /* renamed from: c */
    public abstract String mo35723c();

    @NonNull
    /* renamed from: d */
    public abstract AbstractC2077o mo35722d();

    @NonNull
    /* renamed from: e */
    public URL m35721e() {
        return mo35722d().mo35734a();
    }

    @NonNull
    /* renamed from: f */
    public abstract String mo35720f();

    @NonNull
    /* renamed from: g */
    public abstract String mo35719g();
}
