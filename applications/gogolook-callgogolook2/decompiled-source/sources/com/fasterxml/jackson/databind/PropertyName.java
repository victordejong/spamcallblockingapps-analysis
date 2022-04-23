package com.fasterxml.jackson.databind;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.p049io.SerializedString;
import com.fasterxml.jackson.core.util.InternCache;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/PropertyName.class */
public class PropertyName implements Serializable {
    public SerializableString _encodedSimple;
    public final String _namespace;
    public final String _simpleName;
    public static final PropertyName USE_DEFAULT = new PropertyName("", null);
    public static final PropertyName NO_NAME = new PropertyName(new String(""), null);

    public PropertyName(String str) {
        this(str, null);
    }

    public PropertyName(String str, String str2) {
        this._simpleName = str == null ? "" : str;
        this._namespace = str2;
    }

    public static PropertyName construct(String str) {
        return (str == null || str.length() == 0) ? USE_DEFAULT : new PropertyName(InternCache.instance.intern(str), null);
    }

    public static PropertyName construct(String str, String str2) {
        String str3 = str;
        if (str == null) {
            str3 = "";
        }
        return (str2 == null && str3.length() == 0) ? USE_DEFAULT : new PropertyName(InternCache.instance.intern(str3), str2);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != PropertyName.class) {
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
        if (str2 != null) {
            return str2.equals(propertyName._namespace);
        }
        if (propertyName._namespace != null) {
            z = false;
        }
        return z;
    }

    public String getSimpleName() {
        return this._simpleName;
    }

    public boolean hasNamespace() {
        return this._namespace != null;
    }

    public boolean hasSimpleName() {
        return this._simpleName.length() > 0;
    }

    public boolean hasSimpleName(String str) {
        if (str != null) {
            return str.equals(this._simpleName);
        }
        return this._simpleName == null;
    }

    public int hashCode() {
        String str = this._namespace;
        return str == null ? this._simpleName.hashCode() : str.hashCode() ^ this._simpleName.hashCode();
    }

    public PropertyName internSimpleName() {
        String intern;
        if (!(this._simpleName.length() == 0 || (intern = InternCache.instance.intern(this._simpleName)) == this._simpleName)) {
            return new PropertyName(intern, this._namespace);
        }
        return this;
    }

    public boolean isEmpty() {
        return this._namespace == null && this._simpleName.isEmpty();
    }

    public Object readResolve() {
        String str = this._simpleName;
        return (str == null || "".equals(str)) ? USE_DEFAULT : (!this._simpleName.equals("") || this._namespace != null) ? this : NO_NAME;
    }

    public SerializableString simpleAsEncoded(MapperConfig<?> mapperConfig) {
        SerializableString serializableString = this._encodedSimple;
        SerializableString serializableString2 = serializableString;
        if (serializableString == null) {
            SerializableString serializedString = mapperConfig == null ? new SerializedString(this._simpleName) : mapperConfig.compileString(this._simpleName);
            this._encodedSimple = serializedString;
            serializableString2 = serializedString;
        }
        return serializableString2;
    }

    public String toString() {
        if (this._namespace == null) {
            return this._simpleName;
        }
        return CssParser.BLOCK_START + this._namespace + CssParser.BLOCK_END + this._simpleName;
    }

    public PropertyName withSimpleName(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2.equals(this._simpleName) ? this : new PropertyName(str2, this._namespace);
    }
}
