package com.criteo.publisher.p027t;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.p027t.C2107f;
import com.criteo.publisher.p027t.C2109g;
import com.criteo.publisher.p027t.C2111h;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* renamed from: com.criteo.publisher.t.t */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/t.class */
public abstract class AbstractC2138t {

    /* renamed from: com.criteo.publisher.t.t$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/t$a.class */
    public static abstract class AbstractC2139a {
        @NonNull
        /* renamed from: a */
        public static AbstractC2139a m35631a(@NonNull AbstractC2127m mVar) {
            return new C2109g(Collections.singletonList(AbstractC2140b.m35621a(mVar.mo35672d(), mVar.mo35670f())), m35629a(mVar.mo35673c(), mVar.mo35674b()), mVar.mo35669g(), 0L, m35629a(mVar.mo35677a(), mVar.mo35674b()), mVar.mo35671e());
        }

        /* renamed from: a */
        public static TypeAdapter<AbstractC2139a> m35630a(Gson gson) {
            return new C2109g.C2110a(gson);
        }

        @Nullable
        /* renamed from: a */
        public static Long m35629a(@Nullable Long l, @Nullable Long l2) {
            if (l == null || l2 == null) {
                return null;
            }
            return Long.valueOf(l.longValue() - l2.longValue());
        }

        @Nullable
        /* renamed from: a */
        public abstract Long mo35632a();

        /* renamed from: b */
        public abstract long mo35628b();

        @Nullable
        /* renamed from: c */
        public abstract Long mo35627c();

        @Nullable
        /* renamed from: d */
        public abstract String mo35626d();

        @NonNull
        /* renamed from: e */
        public abstract List<AbstractC2140b> mo35625e();

        @AbstractC10120c("isTimeout")
        /* renamed from: f */
        public abstract boolean mo35624f();
    }

    /* renamed from: com.criteo.publisher.t.t$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/t$b.class */
    public static abstract class AbstractC2140b {
        @NonNull
        /* renamed from: a */
        public static AbstractC2140b m35621a(@NonNull String str, boolean z) {
            return new C2111h(str, z);
        }

        /* renamed from: a */
        public static TypeAdapter<AbstractC2140b> m35622a(Gson gson) {
            return new C2111h.C2112a(gson);
        }

        /* renamed from: a */
        public abstract boolean mo35623a();

        @Nullable
        /* renamed from: b */
        public abstract String mo35620b();
    }

    @NonNull
    /* renamed from: a */
    public static AbstractC2138t m35635a(@NonNull Collection<AbstractC2127m> collection, @NonNull String str, int i) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC2127m mVar : collection) {
            arrayList.add(AbstractC2139a.m35631a(mVar));
        }
        return new C2107f(arrayList, str, i);
    }

    /* renamed from: a */
    public static TypeAdapter<AbstractC2138t> m35636a(Gson gson) {
        return new C2107f.C2108a(gson);
    }

    @NonNull
    /* renamed from: a */
    public abstract List<AbstractC2139a> mo35637a();

    @AbstractC10120c("profile_id")
    /* renamed from: b */
    public abstract int mo35634b();

    @NonNull
    @AbstractC10120c("wrapper_version")
    /* renamed from: c */
    public abstract String mo35633c();
}
