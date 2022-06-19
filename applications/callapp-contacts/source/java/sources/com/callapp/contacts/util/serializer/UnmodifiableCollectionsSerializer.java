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
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer.class */
public class UnmodifiableCollectionsSerializer extends AbstractC9413h<Object> {

    /* renamed from: a */
    private static final Field f28364a;

    /* renamed from: b */
    private static final Field f28365b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/UnmodifiableCollectionsSerializer$UnmodifiableCollection.class */
    public enum UnmodifiableCollection {
        COLLECTION(Collections.unmodifiableCollection(Arrays.asList("")).getClass(), UnmodifiableCollectionsSerializer.f28364a) { // from class: com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection.1
            @Override // com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection
            public final Object create(Object obj) {
                return Collections.unmodifiableCollection((Collection) obj);
            }
        },
        RANDOM_ACCESS_LIST(Collections.unmodifiableList(new ArrayList()).getClass(), UnmodifiableCollectionsSerializer.f28364a) { // from class: com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection.2
            @Override // com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection
            public final Object create(Object obj) {
                return Collections.unmodifiableList((List) obj);
            }
        },
        LIST(Collections.unmodifiableList(new LinkedList()).getClass(), UnmodifiableCollectionsSerializer.f28364a) { // from class: com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection.3
            @Override // com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection
            public final Object create(Object obj) {
                return Collections.unmodifiableList((List) obj);
            }
        },
        SET(Collections.unmodifiableSet(new HashSet()).getClass(), UnmodifiableCollectionsSerializer.f28364a) { // from class: com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection.4
            @Override // com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection
            public final Object create(Object obj) {
                return Collections.unmodifiableSet((Set) obj);
            }
        },
        SORTED_SET(Collections.unmodifiableSortedSet(new TreeSet()).getClass(), UnmodifiableCollectionsSerializer.f28364a) { // from class: com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection.5
            @Override // com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection
            public final Object create(Object obj) {
                return Collections.unmodifiableSortedSet((SortedSet) obj);
            }
        },
        MAP(Collections.unmodifiableMap(new HashMap()).getClass(), UnmodifiableCollectionsSerializer.f28365b) { // from class: com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection.6
            @Override // com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection
            public final Object create(Object obj) {
                return Collections.unmodifiableMap((Map) obj);
            }
        },
        SORTED_MAP(Collections.unmodifiableSortedMap(new TreeMap()).getClass(), UnmodifiableCollectionsSerializer.f28365b) { // from class: com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer.UnmodifiableCollection.7
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
            f28364a = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = Class.forName("java.util.Collections$UnmodifiableMap").getDeclaredField("m");
            f28365b = declaredField2;
            declaredField2.setAccessible(true);
        } catch (Exception e) {
            throw new RuntimeException("Could not access source collection field in java.util.Collections$UnmodifiableCollection.", e);
        }
    }

    /* renamed from: a */
    public static void m26923a(C9380c c9380c) {
        UnmodifiableCollectionsSerializer unmodifiableCollectionsSerializer = new UnmodifiableCollectionsSerializer();
        UnmodifiableCollection.values();
        for (UnmodifiableCollection unmodifiableCollection : UnmodifiableCollection.values()) {
            c9380c.m24374b(unmodifiableCollection.type, unmodifiableCollectionsSerializer);
        }
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public Object copy(C9380c c9380c, Object obj) {
        try {
            UnmodifiableCollection valueOfType = UnmodifiableCollection.valueOfType(obj.getClass());
            return valueOfType.create(c9380c.m24373b((C9380c) valueOfType.sourceCollectionField.get(obj)));
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public Object read(C9380c c9380c, C9374a c9374a, Class<? extends Object> cls) {
        return UnmodifiableCollection.values()[c9374a.m24459a(true)].create(c9380c.m24379b(c9374a));
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public void write(C9380c c9380c, C9376c c9376c, Object obj) {
        try {
            UnmodifiableCollection valueOfType = UnmodifiableCollection.valueOfType(obj.getClass());
            c9376c.m24419a(valueOfType.ordinal(), true);
            c9380c.m24388a(c9376c, valueOfType.sourceCollectionField.get(obj));
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }
}
