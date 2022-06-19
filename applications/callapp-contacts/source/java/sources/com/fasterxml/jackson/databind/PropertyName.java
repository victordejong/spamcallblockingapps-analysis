package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.p309io.SerializedString;
import com.fasterxml.jackson.core.util.InternCache;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/PropertyName.class */
public class PropertyName implements Serializable {
    protected SerializableString _encodedSimple;
    protected final String _namespace;
    protected final String _simpleName;
    public static final PropertyName USE_DEFAULT = new PropertyName("", null);
    public static final PropertyName NO_NAME = new PropertyName(new String(""), null);

    public PropertyName(String str) {
        this(str, null);
    }

    public PropertyName(String str, String str2) {
        this._simpleName = ClassUtil.nonNullString(str);
        this._namespace = str2;
    }

    public static PropertyName construct(String str) {
        return (str == null || str.isEmpty()) ? USE_DEFAULT : new PropertyName(InternCache.instance.intern(str), null);
    }

    public static PropertyName construct(String str, String str2) {
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        return (str2 != null || !str3.isEmpty()) ? new PropertyName(InternCache.instance.intern(str3), str2) : USE_DEFAULT;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        PropertyName propertyName = (PropertyName) obj;
        String str = this._simpleName;
        if (str == null) {
            if (propertyName._simpleName != null) {
                return false;
            }
        } else if (!str.equals(propertyName._simpleName)) {
            return false;
        }
        String str2 = this._namespace;
        return str2 == null ? propertyName._namespace == null : str2.equals(propertyName._namespace);
    }

    public String getSimpleName() {
        return this._simpleName;
    }

    public boolean hasNamespace() {
        return this._namespace != null;
    }

    public boolean hasSimpleName() {
        return !this._simpleName.isEmpty();
    }

    public boolean hasSimpleName(String str) {
        return this._simpleName.equals(str);
    }

    public int hashCode() {
        String str = this._namespace;
        return str == null ? this._simpleName.hashCode() : str.hashCode() ^ this._simpleName.hashCode();
    }

    public PropertyName internSimpleName() {
        String intern;
        if (!this._simpleName.isEmpty() && (intern = InternCache.instance.intern(this._simpleName)) != this._simpleName) {
            return new PropertyName(intern, this._namespace);
        }
        return this;
    }

    public boolean isEmpty() {
        return this._namespace == null && this._simpleName.isEmpty();
    }

    protected Object readResolve() {
        String str;
        return (this._namespace != null || ((str = this._simpleName) != null && !"".equals(str))) ? this : USE_DEFAULT;
    }

    public SerializableString simpleAsEncoded(MapperConfig<?> mapperConfig) {
        SerializableString serializableString = this._encodedSimple;
        SerializableString serializableString2 = serializableString;
        if (serializableString == null) {
            SerializedString serializedString = mapperConfig == null ? new SerializedString(this._simpleName) : mapperConfig.compileString(this._simpleName);
            this._encodedSimple = serializedString;
            serializableString2 = serializedString;
        }
        return serializableString2;
    }

    public String toString() {
        if (this._namespace == null) {
            return this._simpleName;
        }
        return "{" + this._namespace + "}" + this._simpleName;
    }

    public PropertyName withSimpleName(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2.equals(this._simpleName) ? this : new PropertyName(str2, this._namespace);
    }
}
