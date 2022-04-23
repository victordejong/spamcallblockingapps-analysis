package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/BeanPropertyMap.class */
public class BeanPropertyMap implements Serializable, Iterable<SettableBeanProperty> {
    private final Map<String, List<PropertyName>> _aliasDefs;
    private final Map<String, String> _aliasMapping;
    protected final boolean _caseInsensitive;
    private Object[] _hashArea;
    private int _hashMask;
    private final Locale _locale;
    private final SettableBeanProperty[] _propsInOrder;
    private int _size;
    private int _spillCount;

    private BeanPropertyMap(BeanPropertyMap beanPropertyMap, SettableBeanProperty settableBeanProperty, int i, int i2) {
        this._caseInsensitive = beanPropertyMap._caseInsensitive;
        this._locale = beanPropertyMap._locale;
        this._hashMask = beanPropertyMap._hashMask;
        this._size = beanPropertyMap._size;
        this._spillCount = beanPropertyMap._spillCount;
        this._aliasDefs = beanPropertyMap._aliasDefs;
        this._aliasMapping = beanPropertyMap._aliasMapping;
        Object[] objArr = beanPropertyMap._hashArea;
        this._hashArea = Arrays.copyOf(objArr, objArr.length);
        SettableBeanProperty[] settableBeanPropertyArr = beanPropertyMap._propsInOrder;
        SettableBeanProperty[] settableBeanPropertyArr2 = (SettableBeanProperty[]) Arrays.copyOf(settableBeanPropertyArr, settableBeanPropertyArr.length);
        this._propsInOrder = settableBeanPropertyArr2;
        this._hashArea[i] = settableBeanProperty;
        settableBeanPropertyArr2[i2] = settableBeanProperty;
    }

    private BeanPropertyMap(BeanPropertyMap beanPropertyMap, SettableBeanProperty settableBeanProperty, String str, int i) {
        this._caseInsensitive = beanPropertyMap._caseInsensitive;
        this._locale = beanPropertyMap._locale;
        this._hashMask = beanPropertyMap._hashMask;
        this._size = beanPropertyMap._size;
        this._spillCount = beanPropertyMap._spillCount;
        this._aliasDefs = beanPropertyMap._aliasDefs;
        this._aliasMapping = beanPropertyMap._aliasMapping;
        Object[] objArr = beanPropertyMap._hashArea;
        this._hashArea = Arrays.copyOf(objArr, objArr.length);
        SettableBeanProperty[] settableBeanPropertyArr = beanPropertyMap._propsInOrder;
        int length = settableBeanPropertyArr.length;
        SettableBeanProperty[] settableBeanPropertyArr2 = (SettableBeanProperty[]) Arrays.copyOf(settableBeanPropertyArr, length + 1);
        this._propsInOrder = settableBeanPropertyArr2;
        settableBeanPropertyArr2[length] = settableBeanProperty;
        int i2 = this._hashMask + 1;
        int i3 = i << 1;
        Object[] objArr2 = this._hashArea;
        int i4 = i3;
        if (objArr2[i3] != null) {
            int i5 = ((i >> 1) + i2) << 1;
            i4 = i5;
            if (objArr2[i5] != null) {
                int i6 = this._spillCount;
                int i7 = ((i2 + (i2 >> 1)) << 1) + i6;
                this._spillCount = i6 + 2;
                i4 = i7;
                if (i7 >= objArr2.length) {
                    this._hashArea = Arrays.copyOf(objArr2, objArr2.length + 4);
                    i4 = i7;
                }
            }
        }
        Object[] objArr3 = this._hashArea;
        objArr3[i4] = str;
        objArr3[i4 + 1] = settableBeanProperty;
    }

    protected BeanPropertyMap(BeanPropertyMap beanPropertyMap, boolean z) {
        this._caseInsensitive = z;
        this._locale = beanPropertyMap._locale;
        this._aliasDefs = beanPropertyMap._aliasDefs;
        this._aliasMapping = beanPropertyMap._aliasMapping;
        SettableBeanProperty[] settableBeanPropertyArr = beanPropertyMap._propsInOrder;
        SettableBeanProperty[] settableBeanPropertyArr2 = (SettableBeanProperty[]) Arrays.copyOf(settableBeanPropertyArr, settableBeanPropertyArr.length);
        this._propsInOrder = settableBeanPropertyArr2;
        init(Arrays.asList(settableBeanPropertyArr2));
    }

    @Deprecated
    public BeanPropertyMap(boolean z, Collection<SettableBeanProperty> collection, Map<String, List<PropertyName>> map) {
        this(z, collection, map, Locale.getDefault());
    }

    public BeanPropertyMap(boolean z, Collection<SettableBeanProperty> collection, Map<String, List<PropertyName>> map, Locale locale) {
        this._caseInsensitive = z;
        this._propsInOrder = (SettableBeanProperty[]) collection.toArray(new SettableBeanProperty[collection.size()]);
        this._aliasDefs = map;
        this._locale = locale;
        this._aliasMapping = _buildAliasMapping(map, z, locale);
        init(collection);
    }

    private Map<String, String> _buildAliasMapping(Map<String, List<PropertyName>> map, boolean z, Locale locale) {
        if (map == null || map.isEmpty()) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<PropertyName>> entry : map.entrySet()) {
            String key = entry.getKey();
            String str = key;
            if (z) {
                str = key.toLowerCase(locale);
            }
            for (PropertyName propertyName : entry.getValue()) {
                String simpleName = propertyName.getSimpleName();
                String str2 = simpleName;
                if (z) {
                    str2 = simpleName.toLowerCase(locale);
                }
                hashMap.put(str2, str);
            }
        }
        return hashMap;
    }

    private final SettableBeanProperty _find2(String str, int i, Object obj) {
        if (obj == null) {
            return _findWithAlias(this._aliasMapping.get(str));
        }
        int i2 = this._hashMask + 1;
        int i3 = ((i >> 1) + i2) << 1;
        Object obj2 = this._hashArea[i3];
        if (str.equals(obj2)) {
            return (SettableBeanProperty) this._hashArea[i3 + 1];
        }
        if (obj2 != null) {
            int i4 = (i2 + (i2 >> 1)) << 1;
            int i5 = this._spillCount;
            for (int i6 = i4; i6 < i5 + i4; i6 += 2) {
                Object obj3 = this._hashArea[i6];
                if (obj3 == str || str.equals(obj3)) {
                    return (SettableBeanProperty) this._hashArea[i6 + 1];
                }
            }
        }
        return _findWithAlias(this._aliasMapping.get(str));
    }

    private SettableBeanProperty _find2ViaAlias(String str, int i, Object obj) {
        int i2 = this._hashMask + 1;
        int i3 = ((i >> 1) + i2) << 1;
        Object obj2 = this._hashArea[i3];
        if (str.equals(obj2)) {
            return (SettableBeanProperty) this._hashArea[i3 + 1];
        }
        if (obj2 == null) {
            return null;
        }
        int i4 = (i2 + (i2 >> 1)) << 1;
        int i5 = this._spillCount;
        for (int i6 = i4; i6 < i5 + i4; i6 += 2) {
            Object obj3 = this._hashArea[i6];
            if (obj3 == str || str.equals(obj3)) {
                return (SettableBeanProperty) this._hashArea[i6 + 1];
            }
        }
        return null;
    }

    private final int _findFromOrdered(SettableBeanProperty settableBeanProperty) {
        int length = this._propsInOrder.length;
        for (int i = 0; i < length; i++) {
            if (this._propsInOrder[i] == settableBeanProperty) {
                return i;
            }
        }
        throw new IllegalStateException("Illegal state: property '" + settableBeanProperty.getName() + "' missing from _propsInOrder");
    }

    private SettableBeanProperty _findWithAlias(String str) {
        if (str == null) {
            return null;
        }
        int _hashCode = _hashCode(str);
        int i = _hashCode << 1;
        Object obj = this._hashArea[i];
        if (str.equals(obj)) {
            return (SettableBeanProperty) this._hashArea[i + 1];
        }
        if (obj == null) {
            return null;
        }
        return _find2ViaAlias(str, _hashCode, obj);
    }

    private final int _hashCode(String str) {
        return str.hashCode() & this._hashMask;
    }

    private List<SettableBeanProperty> _properties() {
        ArrayList arrayList = new ArrayList(this._size);
        int length = this._hashArea.length;
        for (int i = 1; i < length; i += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i];
            if (settableBeanProperty != null) {
                arrayList.add(settableBeanProperty);
            }
        }
        return arrayList;
    }

    public static BeanPropertyMap construct(MapperConfig<?> mapperConfig, Collection<SettableBeanProperty> collection, Map<String, List<PropertyName>> map, boolean z) {
        return new BeanPropertyMap(z, collection, map, mapperConfig.getLocale());
    }

    private static final int findSize(int i) {
        if (i <= 5) {
            return 8;
        }
        if (i <= 12) {
            return 16;
        }
        int i2 = 32;
        while (i2 < i + (i >> 2)) {
            i2 += i2;
        }
        return i2;
    }

    protected SettableBeanProperty _rename(SettableBeanProperty settableBeanProperty, NameTransformer nameTransformer) {
        if (settableBeanProperty == null) {
            return settableBeanProperty;
        }
        SettableBeanProperty withSimpleName = settableBeanProperty.withSimpleName(nameTransformer.transform(settableBeanProperty.getName()));
        JsonDeserializer<Object> valueDeserializer = withSimpleName.getValueDeserializer();
        SettableBeanProperty settableBeanProperty2 = withSimpleName;
        if (valueDeserializer != null) {
            JsonDeserializer<Object> unwrappingDeserializer = valueDeserializer.unwrappingDeserializer(nameTransformer);
            settableBeanProperty2 = withSimpleName;
            if (unwrappingDeserializer != valueDeserializer) {
                settableBeanProperty2 = withSimpleName.withValueDeserializer(unwrappingDeserializer);
            }
        }
        return settableBeanProperty2;
    }

    public BeanPropertyMap assignIndexes() {
        int length = this._hashArea.length;
        int i = 0;
        for (int i2 = 1; i2 < length; i2 += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i2];
            i = i;
            if (settableBeanProperty != null) {
                settableBeanProperty.assignIndex(i);
                i++;
            }
        }
        return this;
    }

    public SettableBeanProperty find(int i) {
        int length = this._hashArea.length;
        for (int i2 = 1; i2 < length; i2 += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i2];
            if (settableBeanProperty != null && i == settableBeanProperty.getPropertyIndex()) {
                return settableBeanProperty;
            }
        }
        return null;
    }

    public SettableBeanProperty find(String str) {
        if (str != null) {
            String str2 = str;
            if (this._caseInsensitive) {
                str2 = str.toLowerCase(this._locale);
            }
            int hashCode = str2.hashCode() & this._hashMask;
            int i = hashCode << 1;
            Object obj = this._hashArea[i];
            return (obj == str2 || str2.equals(obj)) ? (SettableBeanProperty) this._hashArea[i + 1] : _find2(str2, hashCode, obj);
        }
        throw new IllegalArgumentException("Cannot pass null property name");
    }

    public SettableBeanProperty[] getPropertiesInInsertionOrder() {
        return this._propsInOrder;
    }

    protected final String getPropertyName(SettableBeanProperty settableBeanProperty) {
        boolean z = this._caseInsensitive;
        String name = settableBeanProperty.getName();
        String str = name;
        if (z) {
            str = name.toLowerCase(this._locale);
        }
        return str;
    }

    protected void init(Collection<SettableBeanProperty> collection) {
        int size = collection.size();
        this._size = size;
        int findSize = findSize(size);
        this._hashMask = findSize - 1;
        int i = (findSize >> 1) + findSize;
        Object[] objArr = new Object[i * 2];
        int i2 = 0;
        for (SettableBeanProperty settableBeanProperty : collection) {
            if (settableBeanProperty != null) {
                String propertyName = getPropertyName(settableBeanProperty);
                int _hashCode = _hashCode(propertyName);
                int i3 = _hashCode << 1;
                Object[] objArr2 = objArr;
                i2 = i2;
                int i4 = i3;
                if (objArr[i3] != null) {
                    int i5 = ((_hashCode >> 1) + findSize) << 1;
                    objArr2 = objArr;
                    i2 = i2;
                    i4 = i5;
                    if (objArr[i5] != null) {
                        int i6 = (i << 1) + i2;
                        int i7 = i2 + 2;
                        objArr2 = objArr;
                        i2 = i7;
                        i4 = i6;
                        if (i6 >= objArr.length) {
                            objArr2 = Arrays.copyOf(objArr, objArr.length + 4);
                            i4 = i6;
                            i2 = i7;
                        }
                    }
                }
                objArr2[i4] = propertyName;
                objArr2[i4 + 1] = settableBeanProperty;
                objArr = objArr2;
            }
        }
        this._hashArea = objArr;
        this._spillCount = i2;
    }

    public boolean isCaseInsensitive() {
        return this._caseInsensitive;
    }

    @Override // java.lang.Iterable
    public Iterator<SettableBeanProperty> iterator() {
        return _properties().iterator();
    }

    public void remove(SettableBeanProperty settableBeanProperty) {
        ArrayList arrayList = new ArrayList(this._size);
        String propertyName = getPropertyName(settableBeanProperty);
        int length = this._hashArea.length;
        boolean z = false;
        for (int i = 1; i < length; i += 2) {
            Object[] objArr = this._hashArea;
            SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) objArr[i];
            z = z;
            if (settableBeanProperty2 != null) {
                z = z;
                if (!z) {
                    boolean equals = propertyName.equals(objArr[i - 1]);
                    z = equals;
                    if (equals) {
                        this._propsInOrder[_findFromOrdered(settableBeanProperty2)] = null;
                        z = equals;
                    }
                }
                arrayList.add(settableBeanProperty2);
            }
        }
        if (z) {
            init(arrayList);
            return;
        }
        throw new NoSuchElementException("No entry '" + settableBeanProperty.getName() + "' found, can't remove");
    }

    public BeanPropertyMap renameAll(NameTransformer nameTransformer) {
        if (nameTransformer == null || nameTransformer == NameTransformer.NOP) {
            return this;
        }
        int length = this._propsInOrder.length;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            SettableBeanProperty settableBeanProperty = this._propsInOrder[i];
            if (settableBeanProperty == null) {
                arrayList.add(settableBeanProperty);
            } else {
                arrayList.add(_rename(settableBeanProperty, nameTransformer));
            }
        }
        return new BeanPropertyMap(this._caseInsensitive, arrayList, this._aliasDefs, this._locale);
    }

    public void replace(SettableBeanProperty settableBeanProperty, SettableBeanProperty settableBeanProperty2) {
        int length = this._hashArea.length;
        for (int i = 1; i <= length; i += 2) {
            Object[] objArr = this._hashArea;
            if (objArr[i] == settableBeanProperty) {
                objArr[i] = settableBeanProperty2;
                this._propsInOrder[_findFromOrdered(settableBeanProperty)] = settableBeanProperty2;
                return;
            }
        }
        throw new NoSuchElementException("No entry '" + settableBeanProperty.getName() + "' found, can't replace");
    }

    public int size() {
        return this._size;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Properties=[");
        Iterator<SettableBeanProperty> it2 = iterator();
        int i = 0;
        while (it2.hasNext()) {
            SettableBeanProperty next = it2.next();
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(next.getName());
            sb.append('(');
            sb.append(next.getType());
            sb.append(')');
            i++;
        }
        sb.append(']');
        if (!this._aliasDefs.isEmpty()) {
            sb.append("(aliases: ");
            sb.append(this._aliasDefs);
            sb.append(")");
        }
        return sb.toString();
    }

    public BeanPropertyMap withCaseInsensitivity(boolean z) {
        return this._caseInsensitive == z ? this : new BeanPropertyMap(this, z);
    }

    public BeanPropertyMap withProperty(SettableBeanProperty settableBeanProperty) {
        String propertyName = getPropertyName(settableBeanProperty);
        int length = this._hashArea.length;
        for (int i = 1; i < length; i += 2) {
            SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) this._hashArea[i];
            if (settableBeanProperty2 != null && settableBeanProperty2.getName().equals(propertyName)) {
                return new BeanPropertyMap(this, settableBeanProperty, i, _findFromOrdered(settableBeanProperty2));
            }
        }
        return new BeanPropertyMap(this, settableBeanProperty, propertyName, _hashCode(propertyName));
    }

    public BeanPropertyMap withoutProperties(Collection<String> collection, Collection<String> collection2) {
        if ((collection == null || collection.isEmpty()) && collection2 == null) {
            return this;
        }
        int length = this._propsInOrder.length;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            SettableBeanProperty settableBeanProperty = this._propsInOrder[i];
            if (settableBeanProperty != null && !IgnorePropertiesUtil.shouldIgnore(settableBeanProperty.getName(), collection, collection2)) {
                arrayList.add(settableBeanProperty);
            }
        }
        return new BeanPropertyMap(this._caseInsensitive, arrayList, this._aliasDefs, this._locale);
    }
}
