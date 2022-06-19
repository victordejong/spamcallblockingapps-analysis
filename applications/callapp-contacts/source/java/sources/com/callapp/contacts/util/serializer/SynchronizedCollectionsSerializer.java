package com.callapp.contacts.util.serializer;

import com.appsflyer.share.Constants;
import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/SynchronizedCollectionsSerializer.class */
public class SynchronizedCollectionsSerializer extends AbstractC9413h<Object> {

    /* renamed from: a */
    private static final Field f28362a;

    /* renamed from: b */
    private static final Field f28363b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/SynchronizedCollectionsSerializer$SynchronizedCollection.class */
    public enum SynchronizedCollection {
        COLLECTION(Collections.synchronizedCollection(Arrays.asList("")).getClass(), SynchronizedCollectionsSerializer.f28362a) { // from class: com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection.1
            @Override // com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection
            public final Object create(Object obj) {
                return Collections.synchronizedCollection((Collection) obj);
            }
        },
        RANDOM_ACCESS_LIST(Collections.synchronizedList(new ArrayList()).getClass(), SynchronizedCollectionsSerializer.f28362a) { // from class: com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection.2
            @Override // com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection
            public final Object create(Object obj) {
                return Collections.synchronizedList((List) obj);
            }
        },
        LIST(Collections.synchronizedList(new LinkedList()).getClass(), SynchronizedCollectionsSerializer.f28362a) { // from class: com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection.3
            @Override // com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection
            public final Object create(Object obj) {
                return Collections.synchronizedList((List) obj);
            }
        },
        SET(Collections.synchronizedSet(new HashSet()).getClass(), SynchronizedCollectionsSerializer.f28362a) { // from class: com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection.4
            @Override // com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection
            public final Object create(Object obj) {
                return Collections.synchronizedSet((Set) obj);
            }
        },
        SORTED_SET(Collections.synchronizedSortedSet(new TreeSet()).getClass(), SynchronizedCollectionsSerializer.f28362a) { // from class: com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection.5
            @Override // com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection
            public final Object create(Object obj) {
                return Collections.synchronizedSortedSet((SortedSet) obj);
            }
        },
        MAP(Collections.synchronizedMap(new HashMap()).getClass(), SynchronizedCollectionsSerializer.f28363b) { // from class: com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection.6
            @Override // com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection
            public final Object create(Object obj) {
                return Collections.synchronizedMap((Map) obj);
            }
        },
        SORTED_MAP(Collections.synchronizedSortedMap(new TreeMap()).getClass(), SynchronizedCollectionsSerializer.f28363b) { // from class: com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection.7
            @Override // com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection
            public final Object create(Object obj) {
                return Collections.synchronizedSortedMap((SortedMap) obj);
            }
        };
        
        private final Field sourceCollectionField;
        private final Class<?> type;

        SynchronizedCollection(Class cls, Field field) {
            this.type = cls;
            this.sourceCollectionField = field;
        }

        static SynchronizedCollection valueOfType(Class<?> cls) {
            SynchronizedCollection[] values;
            for (SynchronizedCollection synchronizedCollection : values()) {
                if (synchronizedCollection.type.equals(cls)) {
                    return synchronizedCollection;
                }
            }
            throw new IllegalArgumentException("The type " + cls + " is not supported.");
        }

        public abstract Object create(Object obj);
    }

    static {
        try {
            Field declaredField = Class.forName("java.util.Collections$SynchronizedCollection").getDeclaredField(Constants.URL_CAMPAIGN);
            f28362a = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = Class.forName("java.util.Collections$SynchronizedMap").getDeclaredField("m");
            f28363b = declaredField2;
            declaredField2.setAccessible(true);
        } catch (Exception e) {
            throw new RuntimeException("Could not access source collection field in java.util.Collections$SynchronizedCollection.", e);
        }
    }

    /* renamed from: a */
    public static void m26926a(C9380c c9380c) {
        SynchronizedCollectionsSerializer synchronizedCollectionsSerializer = new SynchronizedCollectionsSerializer();
        SynchronizedCollection.values();
        for (SynchronizedCollection synchronizedCollection : SynchronizedCollection.values()) {
            c9380c.m24374b(synchronizedCollection.type, synchronizedCollectionsSerializer);
        }
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public Object copy(C9380c c9380c, Object obj) {
        try {
            SynchronizedCollection valueOfType = SynchronizedCollection.valueOfType(obj.getClass());
            return valueOfType.create(c9380c.m24373b((C9380c) valueOfType.sourceCollectionField.get(obj)));
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public Object read(C9380c c9380c, C9374a c9374a, Class<? extends Object> cls) {
        return SynchronizedCollection.values()[c9374a.m24459a(true)].create(c9380c.m24379b(c9374a));
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public void write(C9380c c9380c, C9376c c9376c, Object obj) {
        try {
            SynchronizedCollection valueOfType = SynchronizedCollection.valueOfType(obj.getClass());
            c9376c.m24419a(valueOfType.ordinal(), true);
            c9380c.m24388a(c9376c, valueOfType.sourceCollectionField.get(obj));
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}
