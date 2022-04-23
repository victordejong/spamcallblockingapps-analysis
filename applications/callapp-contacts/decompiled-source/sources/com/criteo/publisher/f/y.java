package com.criteo.publisher.f;

import com.criteo.publisher.f.k;
import com.criteo.publisher.f.l;
import com.criteo.publisher.f.m;
import com.google.gson.f;
import com.google.gson.j;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/y.class */
public abstract class y {

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/y$a.class */
    public static abstract class a {
        static a a(s sVar) {
            return new l(Collections.singletonList(b.a(sVar.f(), sVar.h(), sVar.d())), a(sVar.e(), sVar.a()), sVar.c(), 0L, a(sVar.b(), sVar.a()), sVar.g());
        }

        public static j<a> a(f fVar) {
            return new l.a(fVar);
        }

        private static Long a(Long l, Long l2) {
            if (l == null || l2 == null) {
                return null;
            }
            return Long.valueOf(l.longValue() - l2.longValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract List<b> a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Long b();

        /* JADX INFO: Access modifiers changed from: package-private */
        @com.google.gson.annotations.b(a = "isTimeout")
        public abstract boolean c();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long d();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Long e();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract String f();
    }

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/y$b.class */
    public static abstract class b {
        static b a(String str, Integer num, boolean z) {
            return new m(str, num, z);
        }

        public static j<b> a(f fVar) {
            return new m.a(fVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract String a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Integer b();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract boolean c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y a(Collection<s> collection, String str, int i) {
        ArrayList arrayList = new ArrayList();
        for (s sVar : collection) {
            arrayList.add(a.a(sVar));
        }
        return new k(arrayList, str, i);
    }

    public static j<y> a(f fVar) {
        return new k.a(fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract List<a> a();

    /* JADX INFO: Access modifiers changed from: package-private */
    @com.google.gson.annotations.b(a = "wrapper_version")
    public abstract String b();

    /* JADX INFO: Access modifiers changed from: package-private */
    @com.google.gson.annotations.b(a = "profile_id")
    public abstract int c();
}
