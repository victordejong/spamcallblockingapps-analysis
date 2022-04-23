package com.callapp.contacts.util.serializer;

import com.esotericsoftware.kryo.a.a;
import com.esotericsoftware.kryo.c;
import com.esotericsoftware.kryo.h;
import com.mopub.mobileads.VastIconXmlManager;
import java.lang.reflect.Field;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/SubListSerializers.class */
public class SubListSerializers {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f16268a = new Object();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer.class */
    public static class ArrayListSubListSerializer extends h<List<?>> {

        /* renamed from: a  reason: collision with root package name */
        public static final Class<?> f16269a = SubListSerializers.a("java.util.ArrayList$SubList");

        /* renamed from: b  reason: collision with root package name */
        private Field f16270b;

        /* renamed from: c  reason: collision with root package name */
        private Field f16271c;

        /* renamed from: d  reason: collision with root package name */
        private Field f16272d;

        public ArrayListSubListSerializer() {
            try {
                Class<?> cls = Class.forName("java.util.ArrayList$SubList");
                this.f16270b = cls.getDeclaredField("parent");
                this.f16271c = cls.getDeclaredField("parentOffset");
                this.f16272d = cls.getDeclaredField("size");
                this.f16270b.setAccessible(true);
                this.f16271c.setAccessible(true);
                this.f16272d.setAccessible(true);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public List<?> copy(c cVar, List<?> list) {
            cVar.a(SubListSerializers.f16268a);
            try {
                List list2 = (List) this.f16270b.get(list);
                int i = this.f16271c.getInt(list);
                return ((List) cVar.b((c) list2)).subList(i, this.f16272d.getInt(list) + i);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public static boolean a(Class<?> cls) {
            Class<?> cls2 = f16269a;
            return cls2 != null && cls2.isAssignableFrom(cls);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ List<?> read(c cVar, a aVar, Class<? extends List<?>> cls) {
            cVar.a(SubListSerializers.f16268a);
            return ((List) cVar.b(aVar)).subList(aVar.a(true), aVar.a(true));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(c cVar, com.esotericsoftware.kryo.a.c cVar2, List<?> list) {
            List<?> list2 = list;
            try {
                cVar.a(cVar2, this.f16270b.get(list2));
                int i = this.f16271c.getInt(list2);
                cVar2.a(i, true);
                cVar2.a(i + this.f16272d.getInt(list2), true);
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/SubListSerializers$JavaUtilSubListSerializer.class */
    public static class JavaUtilSubListSerializer extends h<List<?>> {

        /* renamed from: a  reason: collision with root package name */
        public static final Class<?> f16273a = SubListSerializers.a("java.util.SubList");

        /* renamed from: b  reason: collision with root package name */
        private Field f16274b;

        /* renamed from: c  reason: collision with root package name */
        private Field f16275c;

        /* renamed from: d  reason: collision with root package name */
        private Field f16276d;

        public JavaUtilSubListSerializer() {
            try {
                Class<?> cls = Class.forName("java.util.SubList");
                this.f16274b = cls.getDeclaredField("l");
                this.f16275c = cls.getDeclaredField(VastIconXmlManager.OFFSET);
                this.f16276d = cls.getDeclaredField("size");
                this.f16274b.setAccessible(true);
                this.f16275c.setAccessible(true);
                this.f16276d.setAccessible(true);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public List<?> copy(c cVar, List<?> list) {
            cVar.a(SubListSerializers.f16268a);
            try {
                List list2 = (List) this.f16274b.get(list);
                int i = this.f16275c.getInt(list);
                return ((List) cVar.b((c) list2)).subList(i, this.f16276d.getInt(list) + i);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        public static boolean a(Class<?> cls) {
            Class<?> cls2 = f16273a;
            return cls2 != null && cls2.isAssignableFrom(cls);
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ List<?> read(c cVar, a aVar, Class<? extends List<?>> cls) {
            cVar.a(SubListSerializers.f16268a);
            return ((List) cVar.b(aVar)).subList(aVar.a(true), aVar.a(true));
        }

        @Override // com.esotericsoftware.kryo.h
        public /* synthetic */ void write(c cVar, com.esotericsoftware.kryo.a.c cVar2, List<?> list) {
            List<?> list2 = list;
            try {
                cVar.a(cVar2, this.f16274b.get(list2));
                int i = this.f16275c.getInt(list2);
                cVar2.a(i, true);
                cVar2.a(i + this.f16276d.getInt(list2), true);
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public static h<List<?>> a(Class cls) {
        if (ArrayListSubListSerializer.a(cls)) {
            return new ArrayListSubListSerializer();
        }
        if (JavaUtilSubListSerializer.a(cls)) {
            return new JavaUtilSubListSerializer();
        }
        return null;
    }

    static Class<?> a(String str) {
        try {
            return Class.forName(str);
        } catch (Exception e) {
            return null;
        }
    }
}
