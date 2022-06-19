package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.p276a.C9374a;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.esotericsoftware.kryo.serializers.h */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/h.class */
public final class C9490h {

    /* renamed from: com.esotericsoftware.kryo.serializers.h$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/h$a.class */
    public static final class C9491a extends C9437d<List<Object>> {
        private C9491a() {
            this.f32394a = false;
        }

        /* renamed from: a */
        public List<Object> copy(C9380c c9380c, List<Object> list) {
            return C$r8$backportedMethods$utility$List$1$copyOfList.copyOf((List) super.copy(c9380c, list));
        }

        /* renamed from: a */
        public static void m24246a(C9380c c9380c) {
            List m46612of;
            List m46612of2;
            List m46612of3;
            C9491a c9491a = new C9491a();
            c9380c.m24384a(Collections.emptyList().getClass(), c9491a);
            m46612of = C$r8$backportedMethods$utility$List$1$ofArray.m46612of(new Object[]{1});
            c9380c.m24384a(m46612of.getClass(), c9491a);
            m46612of2 = C$r8$backportedMethods$utility$List$1$ofArray.m46612of(new Object[]{1, 2, 3, 4});
            c9380c.m24384a(m46612of2.getClass(), c9491a);
            m46612of3 = C$r8$backportedMethods$utility$List$1$ofArray.m46612of(new Object[]{1, 2, 3, 4});
            c9380c.m24384a(m46612of3.subList(0, 2).getClass(), c9491a);
        }

        /* renamed from: b */
        public List<Object> read(C9380c c9380c, C9374a c9374a, Class<? extends List<Object>> cls) {
            List list = (List) super.read(c9380c, c9374a, cls);
            if (list == null) {
                return null;
            }
            return C$r8$backportedMethods$utility$List$1$ofArray.m46612of(list.toArray());
        }

        @Override // com.esotericsoftware.kryo.serializers.C9437d
        /* renamed from: a */
        protected final /* synthetic */ List<Object> mo24240a(C9380c c9380c, C9374a c9374a, Class<? extends List<Object>> cls, int i) {
            return new ArrayList(i);
        }

        @Override // com.esotericsoftware.kryo.serializers.C9437d
        /* renamed from: a */
        protected final /* synthetic */ List<Object> mo24239a(C9380c c9380c, List<Object> list) {
            return new ArrayList(list.size());
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.h$b */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/h$b.class */
    public static final class C9492b extends C9495j<Map<Object, Object>> {
        private C9492b() {
            this.f32413e = false;
            this.f32414f = false;
        }

        /* renamed from: a */
        public static void m24243a(C9380c c9380c) {
            Map ofEntries;
            Map ofEntries2;
            C9492b c9492b = new C9492b();
            c9380c.m24384a(Collections.emptyMap().getClass(), c9492b);
            ofEntries = C$r8$backportedMethods$utility$Map$1$ofEntries.ofEntries(new Map.Entry[]{new AbstractMap.SimpleEntry(1, 2)});
            c9380c.m24384a(ofEntries.getClass(), c9492b);
            ofEntries2 = C$r8$backportedMethods$utility$Map$1$ofEntries.ofEntries(new Map.Entry[]{new AbstractMap.SimpleEntry(1, 2), new AbstractMap.SimpleEntry(3, 4)});
            c9380c.m24384a(ofEntries2.getClass(), c9492b);
        }

        @Override // com.esotericsoftware.kryo.serializers.C9495j
        /* renamed from: a */
        public final Map<Object, Object> read(C9380c c9380c, C9374a c9374a, Class<? extends Map<Object, Object>> cls) {
            Map read = super.read(c9380c, c9374a, cls);
            if (read == null) {
                return null;
            }
            return C$r8$backportedMethods$utility$Map$1$copyOfMap.copyOf(read);
        }

        @Override // com.esotericsoftware.kryo.serializers.C9495j
        /* renamed from: a */
        protected final Map<Object, Object> mo24234a(C9380c c9380c, C9374a c9374a, Class<? extends Map<Object, Object>> cls, int i) {
            return new HashMap();
        }

        @Override // com.esotericsoftware.kryo.serializers.C9495j
        /* renamed from: a */
        protected final Map<Object, Object> mo24232a(C9380c c9380c, Map<Object, Object> map) {
            return new HashMap();
        }

        @Override // com.esotericsoftware.kryo.serializers.C9495j
        /* renamed from: b */
        public final Map<Object, Object> copy(C9380c c9380c, Map<Object, Object> map) {
            return C$r8$backportedMethods$utility$Map$1$copyOfMap.copyOf(super.copy(c9380c, map));
        }
    }

    /* renamed from: com.esotericsoftware.kryo.serializers.h$c */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/h$c.class */
    public static final class C9493c extends C9437d<Set<Object>> {
        private C9493c() {
            this.f32394a = false;
        }

        /* renamed from: a */
        public Set<Object> copy(C9380c c9380c, Set<Object> set) {
            return C$r8$backportedMethods$utility$Set$1$copyOfSet.copyOf((Set) super.copy(c9380c, set));
        }

        /* renamed from: a */
        public static void m24242a(C9380c c9380c) {
            Set m46607of;
            Set m46607of2;
            C9493c c9493c = new C9493c();
            c9380c.m24384a(Collections.emptySet().getClass(), c9493c);
            m46607of = C$r8$backportedMethods$utility$Set$1$ofArray.m46607of(new Object[]{1});
            c9380c.m24384a(m46607of.getClass(), c9493c);
            m46607of2 = C$r8$backportedMethods$utility$Set$1$ofArray.m46607of(new Object[]{1, 2, 3, 4});
            c9380c.m24384a(m46607of2.getClass(), c9493c);
        }

        /* renamed from: b */
        public Set<Object> read(C9380c c9380c, C9374a c9374a, Class<? extends Set<Object>> cls) {
            Set set = (Set) super.read(c9380c, c9374a, cls);
            if (set == null) {
                return null;
            }
            return C$r8$backportedMethods$utility$Set$1$ofArray.m46607of(set.toArray());
        }

        @Override // com.esotericsoftware.kryo.serializers.C9437d
        /* renamed from: a */
        protected final /* synthetic */ Set<Object> mo24240a(C9380c c9380c, C9374a c9374a, Class<? extends Set<Object>> cls, int i) {
            return new HashSet();
        }

        @Override // com.esotericsoftware.kryo.serializers.C9437d
        /* renamed from: a */
        protected final /* synthetic */ Set<Object> mo24239a(C9380c c9380c, Set<Object> set) {
            return new HashSet();
        }
    }
}
