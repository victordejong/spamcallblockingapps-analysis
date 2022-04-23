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
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer.class */
public class UnmodifiableCollectionsSerializer extends h<Object> {

    /* renamed from: a  reason: collision with root package name */
    private static final Field f16279a;

    /* renamed from: b  reason: collision with root package name */
    private static final Field f16280b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection.class */
    enum UnmodifiableCollection {
        COLLECTION(Collections.unmodifiableCollection(Arrays.asList("")).getClass(), UnmodifiableCollectionsSerializer.f16279a) { // from class: com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection.1
            @Override // com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection
            public final Object create(Object obj) {
                return Collections.unmodifiableCollection((Collection) obj);
            }
        },
        RANDOM_ACCESS_LIST(Collections.unmodifiableList(new ArrayList()).getClass(), UnmodifiableCollectionsSerializer.f16279a) { // from class: com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection.2
            @Override // com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection
            public final Object create(Object obj) {
                return Collections.unmodifiableList((List) obj);
            }
        },
        LIST(Collections.unmodifiableList(new LinkedList()).getClass(), UnmodifiableCollectionsSerializer.f16279a) { // from class: com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection.3
            @Override // com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection
            public final Object create(Object obj) {
                return Collections.unmodifiableList((List) obj);
            }
        },
        SET(Collections.unmodifiableSet(new HashSet()).getClass(), UnmodifiableCollectionsSerializer.f16279a) { // from class: com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection.4
            @Override // com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection
            public final Object create(Object obj) {
                return Collections.unmodifiableSet((Set) obj);
            }
        },
        SORTED_SET(Collections.unmodifiableSortedSet(new TreeSet()).getClass(), UnmodifiableCollectionsSerializer.f16279a) { // from class: com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection.5
            @Override // com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection
            public final Object create(Object obj) {
                return Collections.unmodifiableSortedSet((SortedSet) obj);
            }
        },
        MAP(Collections.unmodifiableMap(new HashMap()).getClass(), UnmodifiableCollectionsSerializer.f16280b) { // from class: com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection.6
            @Override // com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection
            public final Object create(Object obj) {
                return Collections.unmodifiableMap((Map) obj);
            }
        },
        SORTED_MAP(Collections.unmodifiableSortedMap(new TreeMap()).getClass(), UnmodifiableCollectionsSerializer.f16280b) { // from class: com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection.7
            @Override // com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection
            public final Object create(Object obj) {
                return Collections.unmodifiableSortedMap((SortedMap) obj);
            }
        };
        
        private final Field sourceCollectionField;
        private final Class<?> type;

        UnmodifiableCollection(Class cls, Field field) {
            this.type = cls;
            this.sourceCollectionField = field;
        }

        static UnmodifiableCollection valueOfType(Class<?> cls) {
            UnmodifiableCollection[] values;
            for (UnmodifiableCollection unmodifiableCollection : values()) {
                if (unmodifiableCollection.type.equals(cls)) {
                    return unmodifiableCollection;
                }
            }
            throw new IllegalArgumentException("The type " + cls + " is not supported.");
        }

        public abstract Object create(Object obj);
    }

    static {
        try {
            Field declaredField = Class.forName("java.util.Collections$UnmodifiableCollection").getDeclaredField(Constants.URL_CAMPAIGN);
            f16279a = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = Class.forName("java.util.Collections$UnmodifiableMap").getDeclaredField("m");
            f16280b = declaredField2;
            declaredField2.setAccessible(true);
        } catch (Exception e) {
            throw new RuntimeException("Could not access source collection field in java.util.Collections$UnmodifiableCollection.", e);
        }
    }

    public static void a(c cVar) {
        UnmodifiableCollectionsSerializer unmodifiableCollectionsSerializer = new UnmodifiableCollectionsSerializer();
        UnmodifiableCollection.values();
        for (UnmodifiableCollection unmodifiableCollection : UnmodifiableCollection.values()) {
            cVar.b(unmodifiableCollection.type, unmodifiableCollectionsSerializer);
        }
    }

    @Override // com.esotericsoftware.kryo.h
    public Object copy(c cVar, Object obj) {
        try {
            UnmodifiableCollection valueOfType = UnmodifiableCollection.valueOfType(obj.getClass());
            return valueOfType.create(cVar.b((c) valueOfType.sourceCollectionField.get(obj)));
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.esotericsoftware.kryo.h
    public Object read(c cVar, a aVar, Class<? extends Object> cls) {
        return UnmodifiableCollection.values()[aVar.a(true)].create(cVar.b(aVar));
    }

    @Override // com.esotericsoftware.kryo.h
    public void write(c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
        try {
            UnmodifiableCollection valueOfType = UnmodifiableCollection.valueOfType(obj.getClass());
            cVar2.a(valueOfType.ordinal(), true);
            cVar.a(cVar2, valueOfType.sourceCollectionField.get(obj));
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}
