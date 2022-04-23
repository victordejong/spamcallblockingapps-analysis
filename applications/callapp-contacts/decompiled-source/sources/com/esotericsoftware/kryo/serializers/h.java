package com.esotericsoftware.kryo.serializers;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/h.class */
public final class h {

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/h$a.class */
    public static final class a extends d<List<Object>> {
        private a() {
            this.f19056a = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public List<Object> copy(com.esotericsoftware.kryo.c cVar, List<Object> list) {
            return C$r8$backportedMethods$utility$List$1$copyOfList.copyOf((List) super.copy(cVar, list));
        }

        public static void a(com.esotericsoftware.kryo.c cVar) {
            List of;
            List of2;
            List of3;
            a aVar = new a();
            cVar.a(Collections.emptyList().getClass(), aVar);
            of = C$r8$backportedMethods$utility$List$1$ofArray.of(new Object[]{1});
            cVar.a(of.getClass(), aVar);
            of2 = C$r8$backportedMethods$utility$List$1$ofArray.of(new Object[]{1, 2, 3, 4});
            cVar.a(of2.getClass(), aVar);
            of3 = C$r8$backportedMethods$utility$List$1$ofArray.of(new Object[]{1, 2, 3, 4});
            cVar.a(of3.subList(0, 2).getClass(), aVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public List<Object> read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends List<Object>> cls) {
            List list = (List) super.read(cVar, aVar, cls);
            if (list == null) {
                return null;
            }
            return C$r8$backportedMethods$utility$List$1$ofArray.of(list.toArray());
        }

        @Override // com.esotericsoftware.kryo.serializers.d
        protected final /* synthetic */ List<Object> a(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends List<Object>> cls, int i) {
            return new ArrayList(i);
        }

        @Override // com.esotericsoftware.kryo.serializers.d
        protected final /* synthetic */ List<Object> a(com.esotericsoftware.kryo.c cVar, List<Object> list) {
            return new ArrayList(list.size());
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/h$b.class */
    public static final class b extends j<Map<Object, Object>> {
        private b() {
            this.e = false;
            this.f = false;
        }

        public static void a(com.esotericsoftware.kryo.c cVar) {
            Map ofEntries;
            Map ofEntries2;
            b bVar = new b();
            cVar.a(Collections.emptyMap().getClass(), bVar);
            ofEntries = C$r8$backportedMethods$utility$Map$1$ofEntries.ofEntries(new Map.Entry[]{new AbstractMap.SimpleEntry(1, 2)});
            cVar.a(ofEntries.getClass(), bVar);
            ofEntries2 = C$r8$backportedMethods$utility$Map$1$ofEntries.ofEntries(new Map.Entry[]{new AbstractMap.SimpleEntry(1, 2), new AbstractMap.SimpleEntry(3, 4)});
            cVar.a(ofEntries2.getClass(), bVar);
        }

        @Override // com.esotericsoftware.kryo.serializers.j
        /* renamed from: a */
        public final Map<Object, Object> read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends Map<Object, Object>> cls) {
            Map a2 = super.read(cVar, aVar, cls);
            if (a2 == null) {
                return null;
            }
            return C$r8$backportedMethods$utility$Map$1$copyOfMap.copyOf(a2);
        }

        @Override // com.esotericsoftware.kryo.serializers.j
        protected final Map<Object, Object> a(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends Map<Object, Object>> cls, int i) {
            return new HashMap();
        }

        @Override // com.esotericsoftware.kryo.serializers.j
        protected final Map<Object, Object> a(com.esotericsoftware.kryo.c cVar, Map<Object, Object> map) {
            return new HashMap();
        }

        @Override // com.esotericsoftware.kryo.serializers.j
        /* renamed from: b */
        public final Map<Object, Object> copy(com.esotericsoftware.kryo.c cVar, Map<Object, Object> map) {
            return C$r8$backportedMethods$utility$Map$1$copyOfMap.copyOf(super.copy(cVar, map));
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/h$c.class */
    public static final class c extends d<Set<Object>> {
        private c() {
            this.f19056a = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Set<Object> copy(com.esotericsoftware.kryo.c cVar, Set<Object> set) {
            return C$r8$backportedMethods$utility$Set$1$copyOfSet.copyOf((Set) super.copy(cVar, set));
        }

        public static void a(com.esotericsoftware.kryo.c cVar) {
            Set of;
            Set of2;
            c cVar2 = new c();
            cVar.a(Collections.emptySet().getClass(), cVar2);
            of = C$r8$backportedMethods$utility$Set$1$ofArray.of(new Object[]{1});
            cVar.a(of.getClass(), cVar2);
            of2 = C$r8$backportedMethods$utility$Set$1$ofArray.of(new Object[]{1, 2, 3, 4});
            cVar.a(of2.getClass(), cVar2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public Set<Object> read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends Set<Object>> cls) {
            Set set = (Set) super.read(cVar, aVar, cls);
            if (set == null) {
                return null;
            }
            return C$r8$backportedMethods$utility$Set$1$ofArray.of(set.toArray());
        }

        @Override // com.esotericsoftware.kryo.serializers.d
        protected final /* synthetic */ Set<Object> a(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class<? extends Set<Object>> cls, int i) {
            return new HashSet();
        }

        @Override // com.esotericsoftware.kryo.serializers.d
        protected final /* synthetic */ Set<Object> a(com.esotericsoftware.kryo.c cVar, Set<Object> set) {
            return new HashSet();
        }
    }
}
