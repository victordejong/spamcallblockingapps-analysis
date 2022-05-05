package com.criteo.publisher.p027t;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.p027t.AbstractC2099a;
import com.criteo.publisher.p027t.C2105e;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
/* renamed from: com.criteo.publisher.t.m */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/m.class */
public abstract class AbstractC2127m {

    /* renamed from: com.criteo.publisher.t.m$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/m$a.class */
    public static abstract class AbstractC2128a {
        /* renamed from: a */
        public abstract AbstractC2128a mo35664a(Long l);

        @Deprecated
        /* renamed from: a */
        public abstract AbstractC2128a mo35663a(String str);

        /* renamed from: a */
        public abstract AbstractC2128a mo35662a(boolean z);

        /* renamed from: a */
        public abstract AbstractC2127m mo35665a();

        /* renamed from: b */
        public abstract AbstractC2128a mo35661b(Long l);

        /* renamed from: b */
        public abstract AbstractC2128a mo35660b(String str);

        /* renamed from: b */
        public abstract AbstractC2128a mo35659b(boolean z);

        /* renamed from: c */
        public abstract AbstractC2128a mo35658c(Long l);

        /* renamed from: c */
        public abstract AbstractC2128a mo35657c(boolean z);
    }

    @NonNull
    /* renamed from: a */
    public static AbstractC2128a m35675a(String str) {
        return m35666j().mo35663a(str);
    }

    /* renamed from: a */
    public static TypeAdapter<AbstractC2127m> m35676a(Gson gson) {
        return new C2105e.C2106a(gson);
    }

    @NonNull
    @Deprecated
    /* renamed from: j */
    public static AbstractC2128a m35666j() {
        return new AbstractC2099a.C2101b().mo35657c(false).mo35659b(false).mo35662a(false);
    }

    @Nullable
    /* renamed from: a */
    public abstract Long mo35677a();

    @Nullable
    /* renamed from: b */
    public abstract Long mo35674b();

    @Nullable
    /* renamed from: c */
    public abstract Long mo35673c();

    @NonNull
    /* renamed from: d */
    public abstract String mo35672d();

    @Nullable
    /* renamed from: e */
    public abstract String mo35671e();

    /* renamed from: f */
    public abstract boolean mo35670f();

    /* renamed from: g */
    public abstract boolean mo35669g();

    /* renamed from: h */
    public abstract boolean mo35668h();

    @NonNull
    /* renamed from: i */
    public abstract AbstractC2128a mo35667i();
}
