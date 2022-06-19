package com.criteo.publisher.p246f;

import com.criteo.publisher.p246f.C8302k;
import com.criteo.publisher.p246f.C8304l;
import com.criteo.publisher.p246f.C8306m;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.annotations.AbstractC15952b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* renamed from: com.criteo.publisher.f.y */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/y.class */
public abstract class AbstractC8329y {

    /* renamed from: com.criteo.publisher.f.y$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/y$a.class */
    public static abstract class AbstractC8330a {
        /* renamed from: a */
        static AbstractC8330a m25842a(AbstractC8320s abstractC8320s) {
            return new C8304l(Collections.singletonList(AbstractC8331b.m25832a(abstractC8320s.mo25877f(), abstractC8320s.mo25875h(), abstractC8320s.mo25879d())), m25840a(abstractC8320s.mo25878e(), abstractC8320s.mo25884a()), abstractC8320s.mo25880c(), 0L, m25840a(abstractC8320s.mo25881b(), abstractC8320s.mo25884a()), abstractC8320s.mo25876g());
        }

        /* renamed from: a */
        public static AbstractC16088j<AbstractC8330a> m25841a(C15965f c15965f) {
            return new C8304l.C8305a(c15965f);
        }

        /* renamed from: a */
        private static Long m25840a(Long l, Long l2) {
            if (l == null || l2 == null) {
                return null;
            }
            return Long.valueOf(l.longValue() - l2.longValue());
        }

        /* renamed from: a */
        public abstract List<AbstractC8331b> mo25843a();

        /* renamed from: b */
        public abstract Long mo25839b();

        @AbstractC15952b(m7988a = "isTimeout")
        /* renamed from: c */
        public abstract boolean mo25838c();

        /* renamed from: d */
        public abstract long mo25837d();

        /* renamed from: e */
        public abstract Long mo25836e();

        /* renamed from: f */
        public abstract String mo25835f();
    }

    /* renamed from: com.criteo.publisher.f.y$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/y$b.class */
    public static abstract class AbstractC8331b {
        /* renamed from: a */
        static AbstractC8331b m25832a(String str, Integer num, boolean z) {
            return new C8306m(str, num, z);
        }

        /* renamed from: a */
        public static AbstractC16088j<AbstractC8331b> m25833a(C15965f c15965f) {
            return new C8306m.C8307a(c15965f);
        }

        /* renamed from: a */
        public abstract String mo25834a();

        /* renamed from: b */
        public abstract Integer mo25831b();

        /* renamed from: c */
        public abstract boolean mo25830c();
    }

    /* renamed from: a */
    public static AbstractC8329y m25846a(Collection<AbstractC8320s> collection, String str, int i) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC8320s abstractC8320s : collection) {
            arrayList.add(AbstractC8330a.m25842a(abstractC8320s));
        }
        return new C8302k(arrayList, str, i);
    }

    /* renamed from: a */
    public static AbstractC16088j<AbstractC8329y> m25847a(C15965f c15965f) {
        return new C8302k.C8303a(c15965f);
    }

    /* renamed from: a */
    public abstract List<AbstractC8330a> mo25848a();

    @AbstractC15952b(m7988a = "wrapper_version")
    /* renamed from: b */
    public abstract String mo25845b();

    @AbstractC15952b(m7988a = "profile_id")
    /* renamed from: c */
    public abstract int mo25844c();
}
