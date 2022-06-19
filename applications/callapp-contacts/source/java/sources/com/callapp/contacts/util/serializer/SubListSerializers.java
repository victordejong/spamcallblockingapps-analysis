package com.callapp.contacts.util.serializer;

import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
import com.mopub.mobileads.VastIconXmlManager;
import java.lang.reflect.Field;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/SubListSerializers.class */
public class SubListSerializers {

    /* renamed from: a */
    private static final Object f28353a = new Object();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/SubListSerializers$ArrayListSubListSerializer.class */
    public static class ArrayListSubListSerializer extends AbstractC9413h<List<?>> {

        /* renamed from: a */
        public static final Class<?> f28354a = SubListSerializers.m26932a("java.util.ArrayList$SubList");

        /* renamed from: b */
        private Field f28355b;

        /* renamed from: c */
        private Field f28356c;

        /* renamed from: d */
        private Field f28357d;

        public ArrayListSubListSerializer() {
            try {
                Class<?> cls = Class.forName("java.util.ArrayList$SubList");
                this.f28355b = cls.getDeclaredField("parent");
                this.f28356c = cls.getDeclaredField("parentOffset");
                this.f28357d = cls.getDeclaredField("size");
                this.f28355b.setAccessible(true);
                this.f28356c.setAccessible(true);
                this.f28357d.setAccessible(true);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        /* renamed from: a */
        public List<?> copy(C9380c c9380c, List<?> list) {
            c9380c.m24381a(SubListSerializers.f28353a);
            try {
                List list2 = (List) this.f28355b.get(list);
                int i = this.f28356c.getInt(list);
                return ((List) c9380c.m24373b((C9380c) list2)).subList(i, this.f28357d.getInt(list) + i);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        /* renamed from: a */
        public static boolean m26930a(Class<?> cls) {
            Class<?> cls2 = f28354a;
            return cls2 != null && cls2.isAssignableFrom(cls);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ List<?> read(C9380c c9380c, C9374a c9374a, Class<? extends List<?>> cls) {
            c9380c.m24381a(SubListSerializers.f28353a);
            return ((List) c9380c.m24379b(c9374a)).subList(c9374a.m24459a(true), c9374a.m24459a(true));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, List<?> list) {
            List<?> list2 = list;
            try {
                c9380c.m24388a(c9376c, this.f28355b.get(list2));
                int i = this.f28356c.getInt(list2);
                c9376c.m24419a(i, true);
                c9376c.m24419a(i + this.f28357d.getInt(list2), true);
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/SubListSerializers$JavaUtilSubListSerializer.class */
    public static class JavaUtilSubListSerializer extends AbstractC9413h<List<?>> {

        /* renamed from: a */
        public static final Class<?> f28358a = SubListSerializers.m26932a("java.util.SubList");

        /* renamed from: b */
        private Field f28359b;

        /* renamed from: c */
        private Field f28360c;

        /* renamed from: d */
        private Field f28361d;

        public JavaUtilSubListSerializer() {
            try {
                Class<?> cls = Class.forName("java.util.SubList");
                this.f28359b = cls.getDeclaredField("l");
                this.f28360c = cls.getDeclaredField(VastIconXmlManager.OFFSET);
                this.f28361d = cls.getDeclaredField("size");
                this.f28359b.setAccessible(true);
                this.f28360c.setAccessible(true);
                this.f28361d.setAccessible(true);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        /* renamed from: a */
        public List<?> copy(C9380c c9380c, List<?> list) {
            c9380c.m24381a(SubListSerializers.f28353a);
            try {
                List list2 = (List) this.f28359b.get(list);
                int i = this.f28360c.getInt(list);
                return ((List) c9380c.m24373b((C9380c) list2)).subList(i, this.f28361d.getInt(list) + i);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        /* renamed from: a */
        public static boolean m26928a(Class<?> cls) {
            Class<?> cls2 = f28358a;
            return cls2 != null && cls2.isAssignableFrom(cls);
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ List<?> read(C9380c c9380c, C9374a c9374a, Class<? extends List<?>> cls) {
            c9380c.m24381a(SubListSerializers.f28353a);
            return ((List) c9380c.m24379b(c9374a)).subList(c9374a.m24459a(true), c9374a.m24459a(true));
        }

        @Override // com.esotericsoftware.kryo.AbstractC9413h
        public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, List<?> list) {
            List<?> list2 = list;
            try {
                c9380c.m24388a(c9376c, this.f28359b.get(list2));
                int i = this.f28360c.getInt(list2);
                c9376c.m24419a(i, true);
                c9376c.m24419a(i + this.f28361d.getInt(list2), true);
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    /* renamed from: a */
    public static AbstractC9413h<List<?>> m26933a(Class cls) {
        if (ArrayListSubListSerializer.m26930a(cls)) {
            return new ArrayListSubListSerializer();
        }
        if (!JavaUtilSubListSerializer.m26928a(cls)) {
            return null;
        }
        return new JavaUtilSubListSerializer();
    }

    /* renamed from: a */
    static Class<?> m26932a(String str) {
        try {
            return Class.forName(str);
        } catch (Exception e) {
            return null;
        }
    }
}
