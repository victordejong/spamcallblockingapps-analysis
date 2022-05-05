package org.mozilla.javascript;

import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeObject.class */
public class NativeObject extends IdScriptableObject implements Map {
    private static final int ConstructorId_create = -9;
    private static final int ConstructorId_defineProperties = -8;
    private static final int ConstructorId_defineProperty = -5;
    private static final int ConstructorId_freeze = -13;
    private static final int ConstructorId_getOwnPropertyDescriptor = -4;
    private static final int ConstructorId_getOwnPropertyNames = -3;
    private static final int ConstructorId_getPrototypeOf = -1;
    private static final int ConstructorId_isExtensible = -6;
    private static final int ConstructorId_isFrozen = -11;
    private static final int ConstructorId_isSealed = -10;
    private static final int ConstructorId_keys = -2;
    private static final int ConstructorId_preventExtensions = -7;
    private static final int ConstructorId_seal = -12;
    private static final int Id___defineGetter__ = 9;
    private static final int Id___defineSetter__ = 10;
    private static final int Id___lookupGetter__ = 11;
    private static final int Id___lookupSetter__ = 12;
    private static final int Id_constructor = 1;
    private static final int Id_hasOwnProperty = 5;
    private static final int Id_isPrototypeOf = 7;
    private static final int Id_propertyIsEnumerable = 6;
    private static final int Id_toLocaleString = 3;
    private static final int Id_toSource = 8;
    private static final int Id_toString = 2;
    private static final int Id_valueOf = 4;
    private static final int MAX_PROTOTYPE_ID = 12;
    private static final Object OBJECT_TAG = "Object";
    static final long serialVersionUID = -6345305608474346996L;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeObject$EntrySet.class */
    public class EntrySet extends AbstractSet<Map.Entry<Object, Object>> {
        EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<Object, Object>> iterator() {
            return new Iterator<Map.Entry<Object, Object>>() { // from class: org.mozilla.javascript.NativeObject.EntrySet.1
                Object[] ids;
                Object key = null;
                int index = 0;

                {
                    this.ids = NativeObject.this.getIds();
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.index < this.ids.length;
                }

                @Override // java.util.Iterator
                public Map.Entry<Object, Object> next() {
                    Object[] objArr = this.ids;
                    int i = this.index;
                    this.index = i + 1;
                    final Object obj = objArr[i];
                    this.key = obj;
                    final Object obj2 = NativeObject.this.get(this.key);
                    return new Map.Entry<Object, Object>() { // from class: org.mozilla.javascript.NativeObject.EntrySet.1.1
                        /* JADX WARN: Code restructure failed: missing block: B:10:0x0036, code lost:
                            if (r5.equals(r0.getKey()) != false) goto L_0x0039;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
                            if (r6 != null) goto L_0x004e;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
                            r5 = false;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:14:0x0048, code lost:
                            if (r0.getValue() != null) goto L_0x0062;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:15:0x004e, code lost:
                            r5 = false;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
                            if (r6.equals(r0.getValue()) == false) goto L_0x0062;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:17:0x0060, code lost:
                            r5 = true;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:19:0x0063, code lost:
                            return r5;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
                            if (r0.getKey() == null) goto L_0x0039;
                         */
                        @Override // java.util.Map.Entry
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public boolean equals(java.lang.Object r4) {
                            /*
                                r3 = this;
                                r0 = r4
                                boolean r0 = r0 instanceof java.util.Map.Entry
                                r5 = r0
                                r0 = 0
                                r6 = r0
                                r0 = r5
                                if (r0 != 0) goto L_0x000d
                                r0 = 0
                                return r0
                            L_0x000d:
                                r0 = r4
                                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                                r4 = r0
                                r0 = r3
                                java.lang.Object r0 = r5
                                if (r0 != 0) goto L_0x0027
                                r0 = r6
                                r5 = r0
                                r0 = r4
                                java.lang.Object r0 = r0.getKey()
                                if (r0 != 0) goto L_0x0062
                                goto L_0x0039
                            L_0x0027:
                                r0 = r6
                                r5 = r0
                                r0 = r3
                                java.lang.Object r0 = r5
                                r1 = r4
                                java.lang.Object r1 = r1.getKey()
                                boolean r0 = r0.equals(r1)
                                if (r0 == 0) goto L_0x0062
                            L_0x0039:
                                r0 = r3
                                java.lang.Object r0 = r6
                                if (r0 != 0) goto L_0x004e
                                r0 = r6
                                r5 = r0
                                r0 = r4
                                java.lang.Object r0 = r0.getValue()
                                if (r0 != 0) goto L_0x0062
                                goto L_0x0060
                            L_0x004e:
                                r0 = r6
                                r5 = r0
                                r0 = r3
                                java.lang.Object r0 = r6
                                r1 = r4
                                java.lang.Object r1 = r1.getValue()
                                boolean r0 = r0.equals(r1)
                                if (r0 == 0) goto L_0x0062
                            L_0x0060:
                                r0 = 1
                                r5 = r0
                            L_0x0062:
                                r0 = r5
                                return r0
                            */
                            throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeObject.EntrySet.C21451.C21461.equals(java.lang.Object):boolean");
                        }

                        @Override // java.util.Map.Entry
                        public Object getKey() {
                            return obj;
                        }

                        @Override // java.util.Map.Entry
                        public Object getValue() {
                            return obj2;
                        }

                        @Override // java.util.Map.Entry
                        public int hashCode() {
                            int i2 = 0;
                            int hashCode = obj == null ? 0 : obj.hashCode();
                            if (obj2 != null) {
                                i2 = obj2.hashCode();
                            }
                            return hashCode ^ i2;
                        }

                        @Override // java.util.Map.Entry
                        public Object setValue(Object obj3) {
                            throw new UnsupportedOperationException();
                        }

                        public String toString() {
                            return obj + "=" + obj2;
                        }
                    };
                }

                @Override // java.util.Iterator
                public void remove() {
                    if (this.key == null) {
                        throw new IllegalStateException();
                    }
                    NativeObject.this.remove(this.key);
                    this.key = null;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return NativeObject.this.size();
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeObject$KeySet.class */
    class KeySet extends AbstractSet<Object> {
        KeySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return NativeObject.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Object> iterator() {
            return new Iterator<Object>() { // from class: org.mozilla.javascript.NativeObject.KeySet.1
                Object[] ids;
                int index = 0;
                Object key;

                {
                    this.ids = NativeObject.this.getIds();
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.index < this.ids.length;
                }

                @Override // java.util.Iterator
                public Object next() {
                    try {
                        Object[] objArr = this.ids;
                        int i = this.index;
                        this.index = i + 1;
                        Object obj = objArr[i];
                        this.key = obj;
                        return obj;
                    } catch (ArrayIndexOutOfBoundsException e) {
                        this.key = null;
                        throw new NoSuchElementException();
                    }
                }

                @Override // java.util.Iterator
                public void remove() {
                    if (this.key == null) {
                        throw new IllegalStateException();
                    }
                    NativeObject.this.remove(this.key);
                    this.key = null;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return NativeObject.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeObject$ValueCollection.class */
    public class ValueCollection extends AbstractCollection<Object> {
        ValueCollection() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Object> iterator() {
            return new Iterator<Object>() { // from class: org.mozilla.javascript.NativeObject.ValueCollection.1
                Object[] ids;
                int index = 0;
                Object key;

                {
                    this.ids = NativeObject.this.getIds();
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    return this.index < this.ids.length;
                }

                @Override // java.util.Iterator
                public Object next() {
                    NativeObject nativeObject = NativeObject.this;
                    Object[] objArr = this.ids;
                    int i = this.index;
                    this.index = i + 1;
                    Object obj = objArr[i];
                    this.key = obj;
                    return nativeObject.get(obj);
                }

                @Override // java.util.Iterator
                public void remove() {
                    if (this.key == null) {
                        throw new IllegalStateException();
                    }
                    NativeObject.this.remove(this.key);
                    this.key = null;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return NativeObject.this.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void init(Scriptable scriptable, boolean z) {
        new NativeObject().exportAsJSClass(12, scriptable, z);
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return has((String) obj, this);
        }
        if (obj instanceof Number) {
            return has(((Number) obj).intValue(), this);
        }
        return false;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        for (Object obj2 : values()) {
            if (obj == obj2) {
                return true;
            }
            if (obj != null && obj.equals(obj2)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map
    public Set<Map.Entry<Object, Object>> entrySet() {
        return new EntrySet();
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x0261, code lost:
        if ((((org.mozilla.javascript.ScriptableObject) r11).getAttributes(r0) & 2) == 0) goto L_0x0264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0264, code lost:
        r16 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x026a, code lost:
        r16 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x029c, code lost:
        if ((((org.mozilla.javascript.ScriptableObject) r11).getAttributes(r0) & 2) == 0) goto L_0x0264;
     */
    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object execIdCall(org.mozilla.javascript.IdFunctionObject r8, org.mozilla.javascript.Context r9, org.mozilla.javascript.Scriptable r10, org.mozilla.javascript.Scriptable r11, java.lang.Object[] r12) {
        /*
            Method dump skipped, instructions count: 1908
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeObject.execIdCall(org.mozilla.javascript.IdFunctionObject, org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        addIdFunctionProperty(idFunctionObject, OBJECT_TAG, -1, "getPrototypeOf", 1);
        addIdFunctionProperty(idFunctionObject, OBJECT_TAG, -2, "keys", 1);
        addIdFunctionProperty(idFunctionObject, OBJECT_TAG, -3, "getOwnPropertyNames", 1);
        addIdFunctionProperty(idFunctionObject, OBJECT_TAG, -4, "getOwnPropertyDescriptor", 2);
        addIdFunctionProperty(idFunctionObject, OBJECT_TAG, ConstructorId_defineProperty, "defineProperty", 3);
        addIdFunctionProperty(idFunctionObject, OBJECT_TAG, ConstructorId_isExtensible, "isExtensible", 1);
        addIdFunctionProperty(idFunctionObject, OBJECT_TAG, ConstructorId_preventExtensions, "preventExtensions", 1);
        addIdFunctionProperty(idFunctionObject, OBJECT_TAG, ConstructorId_defineProperties, "defineProperties", 2);
        addIdFunctionProperty(idFunctionObject, OBJECT_TAG, ConstructorId_create, "create", 2);
        addIdFunctionProperty(idFunctionObject, OBJECT_TAG, ConstructorId_isSealed, "isSealed", 1);
        addIdFunctionProperty(idFunctionObject, OBJECT_TAG, ConstructorId_isFrozen, "isFrozen", 1);
        addIdFunctionProperty(idFunctionObject, OBJECT_TAG, ConstructorId_seal, "seal", 1);
        addIdFunctionProperty(idFunctionObject, OBJECT_TAG, ConstructorId_freeze, "freeze", 1);
        super.fillConstructorProperties(idFunctionObject);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // org.mozilla.javascript.IdScriptableObject
    protected int findPrototypeId(String str) {
        String str2;
        int i = 3;
        switch (str.length()) {
            case 7:
                str2 = "valueOf";
                i = 4;
                break;
            case 8:
                char charAt = str.charAt(3);
                if (charAt != 'o') {
                    if (charAt == 't') {
                        str2 = "toString";
                        i = 2;
                        break;
                    }
                    str2 = null;
                    i = 0;
                    break;
                } else {
                    str2 = "toSource";
                    i = 8;
                    break;
                }
            case 11:
                str2 = "constructor";
                i = 1;
                break;
            case 13:
                str2 = "isPrototypeOf";
                i = 7;
                break;
            case 14:
                char charAt2 = str.charAt(0);
                if (charAt2 != 'h') {
                    if (charAt2 == 't') {
                        str2 = "toLocaleString";
                        break;
                    }
                    str2 = null;
                    i = 0;
                    break;
                } else {
                    str2 = "hasOwnProperty";
                    i = 5;
                    break;
                }
            case 16:
                char charAt3 = str.charAt(2);
                if (charAt3 == 'd') {
                    char charAt4 = str.charAt(8);
                    if (charAt4 != 'G') {
                        if (charAt4 == 'S') {
                            str2 = "__defineSetter__";
                            i = 10;
                            break;
                        }
                        str2 = null;
                        i = 0;
                        break;
                    } else {
                        str2 = "__defineGetter__";
                        i = 9;
                        break;
                    }
                } else {
                    if (charAt3 == 'l') {
                        char charAt5 = str.charAt(8);
                        if (charAt5 != 'G') {
                            if (charAt5 == 'S') {
                                str2 = "__lookupSetter__";
                                i = 12;
                                break;
                            }
                        } else {
                            str2 = "__lookupGetter__";
                            i = 11;
                            break;
                        }
                    }
                    str2 = null;
                    i = 0;
                }
            case 20:
                str2 = "propertyIsEnumerable";
                i = 6;
                break;
            default:
                str2 = null;
                i = 0;
                break;
        }
        int i2 = i;
        if (str2 != null) {
            i2 = i;
            if (str2 != str) {
                i2 = i;
                if (!str2.equals(str)) {
                    i2 = 0;
                }
            }
        }
        return i2;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return "Object";
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        String str;
        int i2 = 1;
        switch (i) {
            case 1:
                str = "constructor";
                break;
            case 2:
                str = "toString";
                i2 = 0;
                break;
            case 3:
                str = "toLocaleString";
                i2 = 0;
                break;
            case 4:
                str = "valueOf";
                i2 = 0;
                break;
            case 5:
                str = "hasOwnProperty";
                break;
            case 6:
                str = "propertyIsEnumerable";
                break;
            case 7:
                str = "isPrototypeOf";
                break;
            case 8:
                str = "toSource";
                i2 = 0;
                break;
            case 9:
                str = "__defineGetter__";
                i2 = 2;
                break;
            case 10:
                str = "__defineSetter__";
                i2 = 2;
                break;
            case 11:
                str = "__lookupGetter__";
                break;
            case 12:
                str = "__lookupSetter__";
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(OBJECT_TAG, i, str, i2);
    }

    @Override // java.util.Map
    public Set<Object> keySet() {
        return new KeySet();
    }

    @Override // java.util.Map
    public Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        Object obj2 = get(obj);
        if (obj instanceof String) {
            delete((String) obj);
        } else if (obj instanceof Number) {
            delete(((Number) obj).intValue());
        }
        return obj2;
    }

    public String toString() {
        return ScriptRuntime.defaultObjectToString(this);
    }

    @Override // java.util.Map
    public Collection<Object> values() {
        return new ValueCollection();
    }
}
