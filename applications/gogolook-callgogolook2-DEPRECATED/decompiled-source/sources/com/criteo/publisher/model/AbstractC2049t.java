package com.criteo.publisher.model;

import androidx.annotation.NonNull;
import com.criteo.publisher.model.C2031h;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* renamed from: com.criteo.publisher.model.t */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/t.class */
public abstract class AbstractC2049t {
    @NonNull
    /* renamed from: a */
    public static AbstractC2049t m35816a(@NonNull String str, @NonNull String str2, @NonNull String str3, int i) {
        return new C2031h(str, str2, str3, i);
    }

    /* renamed from: a */
    public static TypeAdapter<AbstractC2049t> m35817a(Gson gson) {
        return new C2031h.C2032a(gson);
    }

    @NonNull
    /* renamed from: a */
    public abstract String mo35818a();

    @NonNull
    @AbstractC10120c("cpId")
    /* renamed from: b */
    public abstract String mo35815b();

    @AbstractC10120c("rtbProfileId")
    /* renamed from: c */
    public abstract int mo35814c();

    @NonNull
    /* renamed from: d */
    public abstract String mo35813d();
}
