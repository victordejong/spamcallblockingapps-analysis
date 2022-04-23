package com.callapp.contacts.util.serializer;

import com.appsflyer.share.Constants;
import com.esotericsoftware.kryo.a.a;
import com.esotericsoftware.kryo.c;
import com.esotericsoftware.kryo.h;
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
public class SynchronizedCollectionsSerializer extends h<Object> {

    /* renamed from: a  reason: collision with root package name */
    private static final Field f16277a;

    /* renamed from: b  reason: collision with root package name */
    private static final Field f16278b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/SynchronizedCollectionsSerializer$SynchronizedCollection.class */
    enum SynchronizedCollection {
        COLLECTION(Collections.synchronizedCollection(Arrays.asList("")).getClass(), SynchronizedCollectionsSerializer.f16277a) { // from class: com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection.1
            @Override // com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection
            public final Object create(Object obj) {
                return Collections.synchronizedCollection((Collection) obj);
            }
        },
        RANDOM_ACCESS_LIST(Collections.synchronizedList(new ArrayList()).getClass(), SynchronizedCollectionsSerializer.f16277a) { // from class: com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection.2
            @Override // com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection
            public final Object create(Object obj) {
                return Collections.synchronizedList((List) obj);
            }
        },
        LIST(Collections.synchronizedList(new LinkedList()).getClass(), SynchronizedCollectionsSerializer.f16277a) { // from class: com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection.3
            @Override // com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection
            public final Object create(Object obj) {
                return Collections.synchronizedList((List) obj);
            }
        },
        SET(Collections.synchronizedSet(new HashSet()).getClass(), SynchronizedCollectionsSerializer.f16277a) { // from class: com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection.4
            @Override // com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection
            public final Object create(Object obj) {
                return Collections.synchronizedSet((Set) obj);
            }
        },
        SORTED_SET(Collections.synchronizedSortedSet(new TreeSet()).getClass(), SynchronizedCollectionsSerializer.f16277a) { // from class: com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection.5
            @Override // com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection
            public final Object create(Object obj) {
                return Collections.synchronizedSortedSet((SortedSet) obj);
            }
        },
        MAP(Collections.synchronizedMap(new HashMap()).getClass(), SynchronizedCollectionsSerializer.f16278b) { // from class: com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection.6
            @Override // com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection
            public final Object create(Object obj) {
                return Collections.synchronizedMap((Map) obj);
            }
        },
        SORTED_MAP(Collections.synchronizedSortedMap(new TreeMap()).getClass(), SynchronizedCollectionsSerializer.f16278b) { // from class: com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer.SynchronizedCollection.7
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
            f16277a = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = Class.forName("java.util.Collections$SynchronizedMap").getDeclaredField("m");
            f16278b = declaredField2;
            declaredField2.setAccessible(true);
        } catch (Exception e) {
            throw new RuntimeException("Could not access source collection field in java.util.Collections$SynchronizedCollection.", e);
        }
    }

    public static void a(c cVar) {
        SynchronizedCollectionsSerializer synchronizedCollectionsSerializer = new SynchronizedCollectionsSerializer();
        SynchronizedCollection.values();
        for (SynchronizedCollection synchronizedCollection : SynchronizedCollection.values()) {
            cVar.b(synchronizedCollection.type, synchronizedCollectionsSerializer);
        }
    }

    @Override // com.esotericsoftware.kryo.h
    public Object copy(c cVar, Object obj) {
        try {
            SynchronizedCollection valueOfType = SynchronizedCollection.valueOfType(obj.getClass());
            return valueOfType.create(cVar.b((c) valueOfType.sourceCollectionField.get(obj)));
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.esotericsoftware.kryo.h
    public Object read(c cVar, a aVar, Class<? extends Object> cls) {
        return SynchronizedCollection.values()[aVar.a(true)].create(cVar.b(aVar));
    }

    @Override // com.esotericsoftware.kryo.h
    public void write(c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
        try {
            SynchronizedCollection valueOfType = SynchronizedCollection.valueOfType(obj.getClass());
            cVar2.a(valueOfType.ordinal(), true);
            cVar.a(cVar2, valueOfType.sourceCollectionField.get(obj));
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}
