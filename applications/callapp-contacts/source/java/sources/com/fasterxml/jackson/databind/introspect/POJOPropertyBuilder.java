package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/POJOPropertyBuilder.class */
public class POJOPropertyBuilder extends BeanPropertyDefinition implements Comparable<POJOPropertyBuilder> {
    private static final AnnotationIntrospector.ReferenceProperty NOT_REFEFERENCE_PROP = AnnotationIntrospector.ReferenceProperty.managed("");
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final MapperConfig<?> _config;
    protected Linked<AnnotatedParameter> _ctorParameters;
    protected Linked<AnnotatedField> _fields;
    protected final boolean _forSerialization;
    protected Linked<AnnotatedMethod> _getters;
    protected final PropertyName _internalName;
    protected transient PropertyMetadata _metadata;
    protected final PropertyName _name;
    protected transient AnnotationIntrospector.ReferenceProperty _referenceInfo;
    protected Linked<AnnotatedMethod> _setters;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder$6 */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$6.class */
    public static /* synthetic */ class C105416 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonProperty.Access.values().length];
            $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access = iArr;
            try {
                iArr[JsonProperty.Access.READ_ONLY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access[JsonProperty.Access.READ_WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access[JsonProperty.Access.WRITE_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access[JsonProperty.Access.AUTO.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked.class */
    public static final class Linked<T> {
        public final boolean isMarkedIgnored;
        public final boolean isNameExplicit;
        public final boolean isVisible;
        public final PropertyName name;
        public final Linked<T> next;
        public final T value;

        public Linked(T t, Linked<T> linked, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
            this.value = t;
            this.next = linked;
            PropertyName propertyName2 = (propertyName == null || propertyName.isEmpty()) ? null : propertyName;
            this.name = propertyName2;
            boolean z4 = z;
            if (z) {
                if (propertyName2 == null) {
                    throw new IllegalArgumentException("Cannot pass true for 'explName' if name is null/empty");
                }
                z4 = z;
                if (!propertyName.hasSimpleName()) {
                    z4 = false;
                }
            }
            this.isNameExplicit = z4;
            this.isVisible = z2;
            this.isMarkedIgnored = z3;
        }

        protected final Linked<T> append(Linked<T> linked) {
            Linked<T> linked2 = this.next;
            return linked2 == null ? withNext(linked) : withNext(linked2.append(linked));
        }

        public final String toString() {
            String format = String.format("%s[visible=%b,ignore=%b,explicitName=%b]", this.value.toString(), Boolean.valueOf(this.isVisible), Boolean.valueOf(this.isMarkedIgnored), Boolean.valueOf(this.isNameExplicit));
            String str = format;
            if (this.next != null) {
                str = format + ", " + this.next.toString();
            }
            return str;
        }

        public final Linked<T> trimByVisibility() {
            Linked<T> linked = this.next;
            if (linked == null) {
                return this;
            }
            Linked<T> trimByVisibility = linked.trimByVisibility();
            if (this.name != null) {
                return trimByVisibility.name == null ? withNext(null) : withNext(trimByVisibility);
            } else if (trimByVisibility.name != null) {
                return trimByVisibility;
            } else {
                boolean z = this.isVisible;
                if (z == trimByVisibility.isVisible) {
                    return withNext(trimByVisibility);
                }
                if (z) {
                    trimByVisibility = withNext(null);
                }
                return trimByVisibility;
            }
        }

        public final Linked<T> withNext(Linked<T> linked) {
            return linked == this.next ? this : new Linked<>(this.value, linked, this.name, this.isNameExplicit, this.isVisible, this.isMarkedIgnored);
        }

        public final Linked<T> withValue(T t) {
            return t == this.value ? this : new Linked<>(t, this.next, this.name, this.isNameExplicit, this.isVisible, this.isMarkedIgnored);
        }

        public final Linked<T> withoutIgnored() {
            Linked<T> linked = this;
            while (linked.isMarkedIgnored) {
                Linked<T> linked2 = linked.next;
                linked = linked2;
                if (linked2 == null) {
                    return null;
                }
            }
            Linked<T> linked3 = linked.next;
            Linked<T> linked4 = linked;
            if (linked3 != null) {
                Linked<T> withoutIgnored = linked3.withoutIgnored();
                linked4 = linked;
                if (withoutIgnored != linked.next) {
                    linked4 = linked.withNext(withoutIgnored);
                }
            }
            return linked4;
        }

        public final Linked<T> withoutNext() {
            return this.next == null ? this : new Linked<>(this.value, null, this.name, this.isNameExplicit, this.isVisible, this.isMarkedIgnored);
        }

        public final Linked<T> withoutNonVisible() {
            Linked<T> linked = this.next;
            Linked<T> withoutNonVisible = linked == null ? null : linked.withoutNonVisible();
            Linked<T> linked2 = withoutNonVisible;
            if (this.isVisible) {
                linked2 = withNext(withoutNonVisible);
            }
            return linked2;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$MemberIterator.class */
    protected static class MemberIterator<T extends AnnotatedMember> implements Iterator<T> {
        private Linked<T> next;

        public MemberIterator(Linked<T> linked) {
            this.next = linked;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.next != null;
        }

        @Override // java.util.Iterator
        public T next() {
            Linked<T> linked = this.next;
            if (linked != null) {
                T t = linked.value;
                this.next = this.next.next;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$WithMember.class */
    public interface WithMember<T> {
        T withMember(AnnotatedMember annotatedMember);
    }

    public POJOPropertyBuilder(MapperConfig<?> mapperConfig, AnnotationIntrospector annotationIntrospector, boolean z, PropertyName propertyName) {
        this(mapperConfig, annotationIntrospector, z, propertyName, propertyName);
    }

    protected POJOPropertyBuilder(MapperConfig<?> mapperConfig, AnnotationIntrospector annotationIntrospector, boolean z, PropertyName propertyName, PropertyName propertyName2) {
        this._config = mapperConfig;
        this._annotationIntrospector = annotationIntrospector;
        this._internalName = propertyName;
        this._name = propertyName2;
        this._forSerialization = z;
    }

    protected POJOPropertyBuilder(POJOPropertyBuilder pOJOPropertyBuilder, PropertyName propertyName) {
        this._config = pOJOPropertyBuilder._config;
        this._annotationIntrospector = pOJOPropertyBuilder._annotationIntrospector;
        this._internalName = pOJOPropertyBuilder._internalName;
        this._name = propertyName;
        this._fields = pOJOPropertyBuilder._fields;
        this._ctorParameters = pOJOPropertyBuilder._ctorParameters;
        this._getters = pOJOPropertyBuilder._getters;
        this._setters = pOJOPropertyBuilder._setters;
        this._forSerialization = pOJOPropertyBuilder._forSerialization;
    }

    private <T> boolean _anyExplicitNames(Linked<T> linked) {
        while (linked != null) {
            if (linked.name != null && linked.isNameExplicit) {
                return true;
            }
            linked = linked.next;
        }
        return false;
    }

    private <T> boolean _anyExplicits(Linked<T> linked) {
        while (linked != null) {
            if (linked.name != null && linked.name.hasSimpleName()) {
                return true;
            }
            linked = linked.next;
        }
        return false;
    }

    private <T> boolean _anyIgnorals(Linked<T> linked) {
        while (linked != null) {
            if (linked.isMarkedIgnored) {
                return true;
            }
            linked = linked.next;
        }
        return false;
    }

    private <T> boolean _anyVisible(Linked<T> linked) {
        while (linked != null) {
            if (linked.isVisible) {
                return true;
            }
            linked = linked.next;
        }
        return false;
    }

    private <T extends AnnotatedMember> Linked<T> _applyAnnotations(Linked<T> linked, AnnotationMap annotationMap) {
        T t = (T) linked.value.withAnnotations(annotationMap);
        Linked<T> linked2 = linked;
        if (linked.next != null) {
            linked2 = linked.withNext(_applyAnnotations(linked.next, annotationMap));
        }
        return linked2.withValue(t);
    }

    private void _explode(Collection<PropertyName> collection, Map<PropertyName, POJOPropertyBuilder> map, Linked<?> linked) {
        Linked linked2 = linked;
        while (true) {
            Linked linked3 = linked2;
            if (linked3 != null) {
                PropertyName propertyName = linked3.name;
                if (linked3.isNameExplicit && propertyName != null) {
                    POJOPropertyBuilder pOJOPropertyBuilder = map.get(propertyName);
                    POJOPropertyBuilder pOJOPropertyBuilder2 = pOJOPropertyBuilder;
                    if (pOJOPropertyBuilder == null) {
                        POJOPropertyBuilder pOJOPropertyBuilder3 = new POJOPropertyBuilder(this._config, this._annotationIntrospector, this._forSerialization, this._internalName, propertyName);
                        pOJOPropertyBuilder2 = pOJOPropertyBuilder3;
                        map.put(propertyName, pOJOPropertyBuilder3);
                    }
                    if (linked == this._fields) {
                        pOJOPropertyBuilder2._fields = linked3.withNext(pOJOPropertyBuilder2._fields);
                    } else if (linked == this._getters) {
                        pOJOPropertyBuilder2._getters = linked3.withNext(pOJOPropertyBuilder2._getters);
                    } else if (linked == this._setters) {
                        pOJOPropertyBuilder2._setters = linked3.withNext(pOJOPropertyBuilder2._setters);
                    } else if (linked != this._ctorParameters) {
                        throw new IllegalStateException("Internal error: mismatched accessors, property: ".concat(String.valueOf(this)));
                    } else {
                        pOJOPropertyBuilder2._ctorParameters = linked3.withNext(pOJOPropertyBuilder2._ctorParameters);
                    }
                } else if (linked3.isVisible) {
                    throw new IllegalStateException("Conflicting/ambiguous property name definitions (implicit name " + ClassUtil.name(this._name) + "): found multiple explicit names: " + collection + ", but also implicit accessor: " + linked3);
                }
                linked2 = linked3.next;
            } else {
                return;
            }
        }
    }

    private Set<PropertyName> _findExplicitNames(Linked<? extends AnnotatedMember> linked, Set<PropertyName> set) {
        Linked<? extends AnnotatedMember> linked2 = linked;
        while (linked2 != null) {
            HashSet hashSet = set;
            if (linked2.isNameExplicit) {
                hashSet = set;
                if (linked2.name != null) {
                    hashSet = set;
                    if (set == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(linked2.name);
                }
            }
            linked2 = linked2.next;
            set = hashSet;
        }
        return set;
    }

    private <T extends AnnotatedMember> AnnotationMap _getAllAnnotations(Linked<T> linked) {
        AnnotationMap allAnnotations = linked.value.getAllAnnotations();
        AnnotationMap annotationMap = allAnnotations;
        if (linked.next != null) {
            annotationMap = AnnotationMap.merge(allAnnotations, _getAllAnnotations(linked.next));
        }
        return annotationMap;
    }

    private AnnotationMap _mergeAnnotations(int i, Linked<? extends AnnotatedMember>... linkedArr) {
        int i2;
        AnnotationMap _getAllAnnotations = _getAllAnnotations(linkedArr[i]);
        do {
            i2 = i + 1;
            if (i2 >= linkedArr.length) {
                return _getAllAnnotations;
            }
            i = i2;
        } while (linkedArr[i2] == null);
        return AnnotationMap.merge(_getAllAnnotations, _mergeAnnotations(i2, linkedArr));
    }

    private <T> Linked<T> _removeIgnored(Linked<T> linked) {
        return linked == null ? linked : linked.withoutIgnored();
    }

    private <T> Linked<T> _removeNonVisible(Linked<T> linked) {
        return linked == null ? linked : linked.withoutNonVisible();
    }

    private <T> Linked<T> _trimByVisibility(Linked<T> linked) {
        return linked == null ? linked : linked.trimByVisibility();
    }

    private static <T> Linked<T> merge(Linked<T> linked, Linked<T> linked2) {
        return linked == null ? linked2 : linked2 == null ? linked : linked.append(linked2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a4, code lost:
        if (r13 != null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0175, code lost:
        if (r5 == null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01f3, code lost:
        if (r14 != null) goto L66;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.fasterxml.jackson.databind.PropertyMetadata _getSetterInfo(com.fasterxml.jackson.databind.PropertyMetadata r5, com.fasterxml.jackson.databind.introspect.AnnotatedMember r6) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder._getSetterInfo(com.fasterxml.jackson.databind.PropertyMetadata, com.fasterxml.jackson.databind.introspect.AnnotatedMember):com.fasterxml.jackson.databind.PropertyMetadata");
    }

    protected int _getterPriority(AnnotatedMethod annotatedMethod) {
        String name = annotatedMethod.getName();
        if (!name.startsWith("get") || name.length() <= 3) {
            return (!name.startsWith("is") || name.length() <= 2) ? 3 : 2;
        }
        return 1;
    }

    protected Class<?> _rawTypeOf(AnnotatedMember annotatedMember) {
        if (annotatedMember instanceof AnnotatedMethod) {
            AnnotatedMethod annotatedMethod = (AnnotatedMethod) annotatedMember;
            if (annotatedMethod.getParameterCount() > 0) {
                return annotatedMethod.getParameterType(0).getRawClass();
            }
        }
        return annotatedMember.getType().getRawClass();
    }

    protected int _setterPriority(AnnotatedMethod annotatedMethod) {
        String name = annotatedMethod.getName();
        return (!name.startsWith("set") || name.length() <= 3) ? 2 : 1;
    }

    public void addAll(POJOPropertyBuilder pOJOPropertyBuilder) {
        this._fields = merge(this._fields, pOJOPropertyBuilder._fields);
        this._ctorParameters = merge(this._ctorParameters, pOJOPropertyBuilder._ctorParameters);
        this._getters = merge(this._getters, pOJOPropertyBuilder._getters);
        this._setters = merge(this._setters, pOJOPropertyBuilder._setters);
    }

    public void addCtor(AnnotatedParameter annotatedParameter, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
        this._ctorParameters = new Linked<>(annotatedParameter, this._ctorParameters, propertyName, z, z2, z3);
    }

    public void addField(AnnotatedField annotatedField, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
        this._fields = new Linked<>(annotatedField, this._fields, propertyName, z, z2, z3);
    }

    public void addGetter(AnnotatedMethod annotatedMethod, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
        this._getters = new Linked<>(annotatedMethod, this._getters, propertyName, z, z2, z3);
    }

    public void addSetter(AnnotatedMethod annotatedMethod, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
        this._setters = new Linked<>(annotatedMethod, this._setters, propertyName, z, z2, z3);
    }

    public boolean anyIgnorals() {
        return _anyIgnorals(this._fields) || _anyIgnorals(this._getters) || _anyIgnorals(this._setters) || _anyIgnorals(this._ctorParameters);
    }

    public boolean anyVisible() {
        return _anyVisible(this._fields) || _anyVisible(this._getters) || _anyVisible(this._setters) || _anyVisible(this._ctorParameters);
    }

    public int compareTo(POJOPropertyBuilder pOJOPropertyBuilder) {
        if (this._ctorParameters != null) {
            if (pOJOPropertyBuilder._ctorParameters == null) {
                return -1;
            }
        } else if (pOJOPropertyBuilder._ctorParameters != null) {
            return 1;
        }
        return getName().compareTo(pOJOPropertyBuilder.getName());
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean couldDeserialize() {
        return (this._ctorParameters == null && this._setters == null && this._fields == null) ? false : true;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean couldSerialize() {
        return (this._getters == null && this._fields == null) ? false : true;
    }

    public Collection<POJOPropertyBuilder> explode(Collection<PropertyName> collection) {
        HashMap hashMap = new HashMap();
        _explode(collection, hashMap, this._fields);
        _explode(collection, hashMap, this._getters);
        _explode(collection, hashMap, this._setters);
        _explode(collection, hashMap, this._ctorParameters);
        return hashMap.values();
    }

    public JsonProperty.Access findAccess() {
        return (JsonProperty.Access) fromMemberAnnotationsExcept(new WithMember<JsonProperty.Access>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.5
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            public JsonProperty.Access withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.findPropertyAccess(annotatedMember);
            }
        }, JsonProperty.Access.AUTO);
    }

    public Set<PropertyName> findExplicitNames() {
        Set<PropertyName> _findExplicitNames = _findExplicitNames(this._ctorParameters, _findExplicitNames(this._setters, _findExplicitNames(this._getters, _findExplicitNames(this._fields, null))));
        Set<PropertyName> set = _findExplicitNames;
        if (_findExplicitNames == null) {
            set = Collections.emptySet();
        }
        return set;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public JsonInclude.Value findInclusion() {
        AnnotatedMember accessor = getAccessor();
        AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
        JsonInclude.Value findPropertyInclusion = annotationIntrospector == null ? null : annotationIntrospector.findPropertyInclusion(accessor);
        JsonInclude.Value value = findPropertyInclusion;
        if (findPropertyInclusion == null) {
            value = JsonInclude.Value.empty();
        }
        return value;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public ObjectIdInfo findObjectIdInfo() {
        return (ObjectIdInfo) fromMemberAnnotations(new WithMember<ObjectIdInfo>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.4
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            public ObjectIdInfo withMember(AnnotatedMember annotatedMember) {
                ObjectIdInfo findObjectIdInfo = POJOPropertyBuilder.this._annotationIntrospector.findObjectIdInfo(annotatedMember);
                ObjectIdInfo objectIdInfo = findObjectIdInfo;
                if (findObjectIdInfo != null) {
                    objectIdInfo = POJOPropertyBuilder.this._annotationIntrospector.findObjectReferenceInfo(annotatedMember, findObjectIdInfo);
                }
                return objectIdInfo;
            }
        });
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotationIntrospector.ReferenceProperty findReferenceType() {
        AnnotationIntrospector.ReferenceProperty referenceProperty = this._referenceInfo;
        if (referenceProperty == null) {
            AnnotationIntrospector.ReferenceProperty referenceProperty2 = (AnnotationIntrospector.ReferenceProperty) fromMemberAnnotations(new WithMember<AnnotationIntrospector.ReferenceProperty>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.2
                @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
                public AnnotationIntrospector.ReferenceProperty withMember(AnnotatedMember annotatedMember) {
                    return POJOPropertyBuilder.this._annotationIntrospector.findReferenceType(annotatedMember);
                }
            });
            this._referenceInfo = referenceProperty2 == null ? NOT_REFEFERENCE_PROP : referenceProperty2;
            return referenceProperty2;
        }
        AnnotationIntrospector.ReferenceProperty referenceProperty3 = referenceProperty;
        if (referenceProperty == NOT_REFEFERENCE_PROP) {
            referenceProperty3 = null;
        }
        return referenceProperty3;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public Class<?>[] findViews() {
        return (Class[]) fromMemberAnnotations(new WithMember<Class<?>[]>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.1
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            public Class<?>[] withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.findViews(annotatedMember);
            }
        });
    }

    protected <T> T fromMemberAnnotations(WithMember<T> withMember) {
        T t;
        T t2 = null;
        if (this._annotationIntrospector != null) {
            if (this._forSerialization) {
                Linked<AnnotatedMethod> linked = this._getters;
                t = null;
                if (linked != null) {
                    t = withMember.withMember(linked.value);
                }
            } else {
                Linked<AnnotatedParameter> linked2 = this._ctorParameters;
                T t3 = null;
                if (linked2 != null) {
                    t3 = withMember.withMember(linked2.value);
                }
                t = t3;
                if (t3 == null) {
                    Linked<AnnotatedMethod> linked3 = this._setters;
                    t = t3;
                    if (linked3 != null) {
                        t = withMember.withMember(linked3.value);
                    }
                }
            }
            t2 = t;
            if (t == null) {
                Linked<AnnotatedField> linked4 = this._fields;
                t2 = t;
                if (linked4 != null) {
                    t2 = withMember.withMember(linked4.value);
                }
            }
        }
        return t2;
    }

    protected <T> T fromMemberAnnotationsExcept(WithMember<T> withMember, T t) {
        T withMember2;
        T withMember3;
        T withMember4;
        T withMember5;
        T withMember6;
        T withMember7;
        T withMember8;
        T withMember9;
        if (this._annotationIntrospector == null) {
            return null;
        }
        if (this._forSerialization) {
            Linked<AnnotatedMethod> linked = this._getters;
            if (linked != null && (withMember9 = withMember.withMember(linked.value)) != null && withMember9 != t) {
                return withMember9;
            }
            Linked<AnnotatedField> linked2 = this._fields;
            if (linked2 != null && (withMember8 = withMember.withMember(linked2.value)) != null && withMember8 != t) {
                return withMember8;
            }
            Linked<AnnotatedParameter> linked3 = this._ctorParameters;
            if (linked3 != null && (withMember7 = withMember.withMember(linked3.value)) != null && withMember7 != t) {
                return withMember7;
            }
            Linked<AnnotatedMethod> linked4 = this._setters;
            if (linked4 != null && (withMember6 = withMember.withMember(linked4.value)) != null && withMember6 != t) {
                return withMember6;
            }
            return null;
        }
        Linked<AnnotatedParameter> linked5 = this._ctorParameters;
        if (linked5 != null && (withMember5 = withMember.withMember(linked5.value)) != null && withMember5 != t) {
            return withMember5;
        }
        Linked<AnnotatedMethod> linked6 = this._setters;
        if (linked6 != null && (withMember4 = withMember.withMember(linked6.value)) != null && withMember4 != t) {
            return withMember4;
        }
        Linked<AnnotatedField> linked7 = this._fields;
        if (linked7 != null && (withMember3 = withMember.withMember(linked7.value)) != null && withMember3 != t) {
            return withMember3;
        }
        Linked<AnnotatedMethod> linked8 = this._getters;
        if (linked8 != null && (withMember2 = withMember.withMember(linked8.value)) != null && withMember2 != t) {
            return withMember2;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedParameter getConstructorParameter() {
        Linked<AnnotatedParameter> linked = this._ctorParameters;
        Linked<AnnotatedParameter> linked2 = linked;
        if (linked == null) {
            return null;
        }
        while (!(linked2.value.getOwner() instanceof AnnotatedConstructor)) {
            Linked<AnnotatedParameter> linked3 = linked2.next;
            linked2 = linked3;
            if (linked3 == null) {
                return this._ctorParameters.value;
            }
        }
        return linked2.value;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public Iterator<AnnotatedParameter> getConstructorParameters() {
        Linked<AnnotatedParameter> linked = this._ctorParameters;
        return linked == null ? ClassUtil.emptyIterator() : new MemberIterator(linked);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x009c, code lost:
        throw new java.lang.IllegalArgumentException("Multiple fields representing property \"" + getName() + "\": " + r6.getFullName() + " vs " + r0.getFullName());
     */
    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.introspect.AnnotatedField getField() {
        /*
            r4 = this;
            r0 = r4
            com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder$Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> r0 = r0._fields
            r5 = r0
            r0 = r5
            if (r0 != 0) goto Lb
            r0 = 0
            return r0
        Lb:
            r0 = r5
            T r0 = r0.value
            com.fasterxml.jackson.databind.introspect.AnnotatedField r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedField) r0
            r6 = r0
            r0 = r4
            com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder$Linked<com.fasterxml.jackson.databind.introspect.AnnotatedField> r0 = r0._fields
            com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder$Linked<T> r0 = r0.next
            r5 = r0
        L1b:
            r0 = r5
            if (r0 == 0) goto L9d
            r0 = r5
            T r0 = r0.value
            com.fasterxml.jackson.databind.introspect.AnnotatedField r0 = (com.fasterxml.jackson.databind.introspect.AnnotatedField) r0
            r7 = r0
            r0 = r6
            java.lang.Class r0 = r0.getDeclaringClass()
            r8 = r0
            r0 = r7
            java.lang.Class r0 = r0.getDeclaringClass()
            r9 = r0
            r0 = r8
            r1 = r9
            if (r0 == r1) goto L5b
            r0 = r8
            r1 = r9
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto L49
            r0 = r7
            r6 = r0
            goto L53
        L49:
            r0 = r9
            r1 = r8
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto L5b
        L53:
            r0 = r5
            com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder$Linked<T> r0 = r0.next
            r5 = r0
            goto L1b
        L5b:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "Multiple fields representing property \""
            r1.<init>(r2)
            r5 = r0
            r0 = r5
            r1 = r4
            java.lang.String r1 = r1.getName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = "\": "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.getFullName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = " vs "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r7
            java.lang.String r1 = r1.getFullName()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r5
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L9d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.getField():com.fasterxml.jackson.databind.introspect.AnnotatedField");
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public PropertyName getFullName() {
        return this._name;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMethod getGetter() {
        Linked<AnnotatedMethod> linked;
        Linked<AnnotatedMethod> linked2 = this._getters;
        if (linked2 == null) {
            return null;
        }
        Linked<AnnotatedMethod> linked3 = linked2.next;
        Linked<AnnotatedMethod> linked4 = linked2;
        Linked<AnnotatedMethod> linked5 = linked3;
        if (linked3 == null) {
            return linked2.value;
        }
        while (linked5 != null) {
            Class<?> declaringClass = linked4.value.getDeclaringClass();
            Class<?> declaringClass2 = linked5.value.getDeclaringClass();
            if (declaringClass != declaringClass2) {
                if (!declaringClass.isAssignableFrom(declaringClass2)) {
                    linked = linked4;
                    if (declaringClass2.isAssignableFrom(declaringClass)) {
                        continue;
                        linked5 = linked5.next;
                        linked4 = linked;
                    }
                }
                linked = linked5;
                linked5 = linked5.next;
                linked4 = linked;
            }
            int _getterPriority = _getterPriority(linked5.value);
            int _getterPriority2 = _getterPriority(linked4.value);
            if (_getterPriority == _getterPriority2) {
                throw new IllegalArgumentException("Conflicting getter definitions for property \"" + getName() + "\": " + linked4.value.getFullName() + " vs " + linked5.value.getFullName());
            }
            linked = linked4;
            if (_getterPriority >= _getterPriority2) {
                linked5 = linked5.next;
                linked4 = linked;
            }
            linked = linked5;
            linked5 = linked5.next;
            linked4 = linked;
        }
        this._getters = linked4.withoutNext();
        return linked4.value;
    }

    public String getInternalName() {
        return this._internalName.getSimpleName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public PropertyMetadata getMetadata() {
        if (this._metadata == null) {
            AnnotatedMember primaryMemberUnchecked = getPrimaryMemberUnchecked();
            if (primaryMemberUnchecked == null) {
                this._metadata = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
            } else {
                Boolean hasRequiredMarker = this._annotationIntrospector.hasRequiredMarker(primaryMemberUnchecked);
                String findPropertyDescription = this._annotationIntrospector.findPropertyDescription(primaryMemberUnchecked);
                Integer findPropertyIndex = this._annotationIntrospector.findPropertyIndex(primaryMemberUnchecked);
                String findPropertyDefaultValue = this._annotationIntrospector.findPropertyDefaultValue(primaryMemberUnchecked);
                if (hasRequiredMarker == null && findPropertyIndex == null && findPropertyDefaultValue == null) {
                    PropertyMetadata propertyMetadata = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
                    if (findPropertyDescription != null) {
                        propertyMetadata = propertyMetadata.withDescription(findPropertyDescription);
                    }
                    this._metadata = propertyMetadata;
                } else {
                    this._metadata = PropertyMetadata.construct(hasRequiredMarker, findPropertyDescription, findPropertyIndex, findPropertyDefaultValue);
                }
                if (!this._forSerialization) {
                    this._metadata = _getSetterInfo(this._metadata, primaryMemberUnchecked);
                }
            }
        }
        return this._metadata;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition, com.fasterxml.jackson.databind.util.Named
    public String getName() {
        PropertyName propertyName = this._name;
        if (propertyName == null) {
            return null;
        }
        return propertyName.getSimpleName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMember getPrimaryMember() {
        if (this._forSerialization) {
            return getAccessor();
        }
        AnnotatedMember mutator = getMutator();
        AnnotatedMember annotatedMember = mutator;
        if (mutator == null) {
            annotatedMember = getAccessor();
        }
        return annotatedMember;
    }

    protected AnnotatedMember getPrimaryMemberUnchecked() {
        if (this._forSerialization) {
            Linked<AnnotatedMethod> linked = this._getters;
            if (linked != null) {
                return linked.value;
            }
            Linked<AnnotatedField> linked2 = this._fields;
            if (linked2 == null) {
                return null;
            }
            return linked2.value;
        }
        Linked<AnnotatedParameter> linked3 = this._ctorParameters;
        if (linked3 != null) {
            return linked3.value;
        }
        Linked<AnnotatedMethod> linked4 = this._setters;
        if (linked4 != null) {
            return linked4.value;
        }
        Linked<AnnotatedField> linked5 = this._fields;
        if (linked5 != null) {
            return linked5.value;
        }
        Linked<AnnotatedMethod> linked6 = this._getters;
        if (linked6 == null) {
            return null;
        }
        return linked6.value;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public JavaType getPrimaryType() {
        if (this._forSerialization) {
            AnnotatedMethod getter = getGetter();
            AnnotatedMethod annotatedMethod = getter;
            if (getter == null) {
                AnnotatedField field = getField();
                annotatedMethod = field;
                if (field == null) {
                    return TypeFactory.unknownType();
                }
            }
            return annotatedMethod.getType();
        }
        AnnotatedParameter constructorParameter = getConstructorParameter();
        AnnotatedParameter annotatedParameter = constructorParameter;
        if (constructorParameter == null) {
            AnnotatedMethod setter = getSetter();
            if (setter != null) {
                return setter.getParameterType(0);
            }
            annotatedParameter = getField();
        }
        AnnotatedParameter annotatedParameter2 = annotatedParameter;
        if (annotatedParameter == null) {
            AnnotatedMethod getter2 = getGetter();
            annotatedParameter2 = getter2;
            if (getter2 == null) {
                return TypeFactory.unknownType();
            }
        }
        return annotatedParameter2.getType();
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public Class<?> getRawPrimaryType() {
        return getPrimaryType().getRawClass();
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMethod getSetter() {
        Linked<AnnotatedMethod> linked;
        Linked<AnnotatedMethod> linked2 = this._setters;
        if (linked2 == null) {
            return null;
        }
        Linked<AnnotatedMethod> linked3 = linked2.next;
        Linked<AnnotatedMethod> linked4 = linked2;
        Linked<AnnotatedMethod> linked5 = linked3;
        if (linked3 == null) {
            return linked2.value;
        }
        while (linked5 != null) {
            Class<?> declaringClass = linked4.value.getDeclaringClass();
            Class<?> declaringClass2 = linked5.value.getDeclaringClass();
            if (declaringClass != declaringClass2) {
                if (!declaringClass.isAssignableFrom(declaringClass2)) {
                    linked = linked4;
                    if (declaringClass2.isAssignableFrom(declaringClass)) {
                        continue;
                        linked5 = linked5.next;
                        linked4 = linked;
                    }
                }
                linked = linked5;
                linked5 = linked5.next;
                linked4 = linked;
            }
            AnnotatedMethod annotatedMethod = linked5.value;
            AnnotatedMethod annotatedMethod2 = linked4.value;
            int _setterPriority = _setterPriority(annotatedMethod);
            int _setterPriority2 = _setterPriority(annotatedMethod2);
            if (_setterPriority == _setterPriority2) {
                AnnotationIntrospector annotationIntrospector = this._annotationIntrospector;
                if (annotationIntrospector != null) {
                    AnnotatedMethod resolveSetterConflict = annotationIntrospector.resolveSetterConflict(this._config, annotatedMethod2, annotatedMethod);
                    linked = linked4;
                    if (resolveSetterConflict == annotatedMethod2) {
                        continue;
                        linked5 = linked5.next;
                        linked4 = linked;
                    } else {
                        if (resolveSetterConflict != annotatedMethod) {
                        }
                        linked = linked5;
                        linked5 = linked5.next;
                        linked4 = linked;
                    }
                }
                throw new IllegalArgumentException(String.format("Conflicting setter definitions for property \"%s\": %s vs %s", getName(), linked4.value.getFullName(), linked5.value.getFullName()));
            }
            linked = linked4;
            if (_setterPriority >= _setterPriority2) {
                linked5 = linked5.next;
                linked4 = linked;
            }
            linked = linked5;
            linked5 = linked5.next;
            linked4 = linked;
        }
        this._setters = linked4.withoutNext();
        return linked4.value;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public PropertyName getWrapperName() {
        AnnotationIntrospector annotationIntrospector;
        AnnotatedMember primaryMember = getPrimaryMember();
        if (primaryMember == null || (annotationIntrospector = this._annotationIntrospector) == null) {
            return null;
        }
        return annotationIntrospector.findWrapperName(primaryMember);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasConstructorParameter() {
        return this._ctorParameters != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasField() {
        return this._fields != null;
    }

    public boolean hasGetter() {
        return this._getters != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasName(PropertyName propertyName) {
        return this._name.equals(propertyName);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasSetter() {
        return this._setters != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean isExplicitlyIncluded() {
        return _anyExplicits(this._fields) || _anyExplicits(this._getters) || _anyExplicits(this._setters) || _anyExplicitNames(this._ctorParameters);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean isExplicitlyNamed() {
        return _anyExplicitNames(this._fields) || _anyExplicitNames(this._getters) || _anyExplicitNames(this._setters) || _anyExplicitNames(this._ctorParameters);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean isTypeId() {
        Boolean bool = (Boolean) fromMemberAnnotations(new WithMember<Boolean>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.3
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            public Boolean withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.isTypeId(annotatedMember);
            }
        });
        return bool != null && bool.booleanValue();
    }

    public void mergeAnnotations(boolean z) {
        if (z) {
            Linked<AnnotatedMethod> linked = this._getters;
            if (linked != null) {
                this._getters = _applyAnnotations(this._getters, _mergeAnnotations(0, linked, this._fields, this._ctorParameters, this._setters));
                return;
            }
            Linked<AnnotatedField> linked2 = this._fields;
            if (linked2 == null) {
                return;
            }
            this._fields = _applyAnnotations(this._fields, _mergeAnnotations(0, linked2, this._ctorParameters, this._setters));
            return;
        }
        Linked<AnnotatedParameter> linked3 = this._ctorParameters;
        if (linked3 != null) {
            this._ctorParameters = _applyAnnotations(this._ctorParameters, _mergeAnnotations(0, linked3, this._setters, this._fields, this._getters));
            return;
        }
        Linked<AnnotatedMethod> linked4 = this._setters;
        if (linked4 != null) {
            this._setters = _applyAnnotations(this._setters, _mergeAnnotations(0, linked4, this._fields, this._getters));
            return;
        }
        Linked<AnnotatedField> linked5 = this._fields;
        if (linked5 == null) {
            return;
        }
        this._fields = _applyAnnotations(this._fields, _mergeAnnotations(0, linked5, this._getters));
    }

    public void removeConstructors() {
        this._ctorParameters = null;
    }

    public void removeIgnored() {
        this._fields = _removeIgnored(this._fields);
        this._getters = _removeIgnored(this._getters);
        this._setters = _removeIgnored(this._setters);
        this._ctorParameters = _removeIgnored(this._ctorParameters);
    }

    public JsonProperty.Access removeNonVisible(boolean z, POJOPropertiesCollector pOJOPropertiesCollector) {
        JsonProperty.Access findAccess = findAccess();
        JsonProperty.Access access = findAccess;
        if (findAccess == null) {
            access = JsonProperty.Access.AUTO;
        }
        int i = C105416.$SwitchMap$com$fasterxml$jackson$annotation$JsonProperty$Access[access.ordinal()];
        if (i == 1) {
            if (pOJOPropertiesCollector != null) {
                pOJOPropertiesCollector._collectIgnorals(getName());
                for (PropertyName propertyName : findExplicitNames()) {
                    pOJOPropertiesCollector._collectIgnorals(propertyName.getSimpleName());
                }
            }
            this._setters = null;
            this._ctorParameters = null;
            if (!this._forSerialization) {
                this._fields = null;
            }
        } else if (i != 2) {
            if (i != 3) {
                this._getters = _removeNonVisible(this._getters);
                this._ctorParameters = _removeNonVisible(this._ctorParameters);
                if (!z || this._getters == null) {
                    this._fields = _removeNonVisible(this._fields);
                    this._setters = _removeNonVisible(this._setters);
                }
            } else {
                this._getters = null;
                if (this._forSerialization) {
                    this._fields = null;
                }
            }
        }
        return access;
    }

    public String toString() {
        return "[Property '" + this._name + "'; ctors: " + this._ctorParameters + ", field(s): " + this._fields + ", getter(s): " + this._getters + ", setter(s): " + this._setters + "]";
    }

    public void trimByVisibility() {
        this._fields = _trimByVisibility(this._fields);
        this._getters = _trimByVisibility(this._getters);
        this._setters = _trimByVisibility(this._setters);
        this._ctorParameters = _trimByVisibility(this._ctorParameters);
    }

    public POJOPropertyBuilder withName(PropertyName propertyName) {
        return new POJOPropertyBuilder(this, propertyName);
    }

    public POJOPropertyBuilder withSimpleName(String str) {
        PropertyName withSimpleName = this._name.withSimpleName(str);
        return withSimpleName == this._name ? this : new POJOPropertyBuilder(this, withSimpleName);
    }
}
