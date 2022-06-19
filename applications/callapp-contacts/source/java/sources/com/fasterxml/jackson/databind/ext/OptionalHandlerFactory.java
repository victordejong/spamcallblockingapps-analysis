package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.deser.Deserializers;
import com.fasterxml.jackson.databind.ser.Serializers;
import com.fasterxml.jackson.databind.ser.std.DateSerializer;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ext/OptionalHandlerFactory.class */
public class OptionalHandlerFactory implements Serializable {
    private static final Java7Handlers _jdk7Helper;
    public static final OptionalHandlerFactory instance;
    private final Map<String, String> _sqlDeserializers;
    private final Map<String, Object> _sqlSerializers;
    private static final Class<?> CLASS_DOM_NODE = Node.class;
    private static final Class<?> CLASS_DOM_DOCUMENT = Document.class;

    static {
        Java7Handlers java7Handlers;
        try {
            java7Handlers = Java7Handlers.instance();
        } catch (Throwable th) {
            java7Handlers = null;
        }
        _jdk7Helper = java7Handlers;
        instance = new OptionalHandlerFactory();
    }

    protected OptionalHandlerFactory() {
        HashMap hashMap = new HashMap();
        this._sqlDeserializers = hashMap;
        hashMap.put("java.sql.Date", "com.fasterxml.jackson.databind.deser.std.DateDeserializers$SqlDateDeserializer");
        hashMap.put("java.sql.Timestamp", "com.fasterxml.jackson.databind.deser.std.DateDeserializers$TimestampDeserializer");
        HashMap hashMap2 = new HashMap();
        this._sqlSerializers = hashMap2;
        hashMap2.put("java.sql.Timestamp", DateSerializer.instance);
        hashMap2.put("java.sql.Date", "com.fasterxml.jackson.databind.ser.std.SqlDateSerializer");
        hashMap2.put("java.sql.Time", "com.fasterxml.jackson.databind.ser.std.SqlTimeSerializer");
        hashMap2.put("java.sql.Blob", "com.fasterxml.jackson.databind.ext.SqlBlobSerializer");
        hashMap2.put("javax.sql.rowset.serial.SerialBlob", "com.fasterxml.jackson.databind.ext.SqlBlobSerializer");
    }

    private boolean _IsXOfY(Class<?> cls, Class<?> cls2) {
        return cls2 != null && cls2.isAssignableFrom(cls);
    }

    private boolean hasSuperClassStartingWith(Class<?> cls, String str) {
        Class<? super Object> superclass;
        do {
            superclass = cls.getSuperclass();
            if (superclass == null || superclass == Object.class) {
                return false;
            }
            cls = superclass;
        } while (!superclass.getName().startsWith(str));
        return true;
    }

    private Object instantiate(Class<?> cls, JavaType javaType) {
        try {
            return ClassUtil.createInstance(cls, false);
        } catch (Throwable th) {
            throw new IllegalStateException("Failed to create instance of `" + cls.getName() + "` for handling values of type " + ClassUtil.getTypeDescription(javaType) + ", problem: (" + th.getClass().getName() + ") " + th.getMessage());
        }
    }

    private Object instantiate(String str, JavaType javaType) {
        try {
            return instantiate(Class.forName(str), javaType);
        } catch (Throwable th) {
            throw new IllegalStateException("Failed to find class `" + str + "` for handling values of type " + ClassUtil.getTypeDescription(javaType) + ", problem: (" + th.getClass().getName() + ") " + th.getMessage());
        }
    }

    public JsonDeserializer<?> findDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        Object instantiate;
        JsonDeserializer<?> deserializerForJavaNioFilePath;
        Class<?> rawClass = javaType.getRawClass();
        Java7Handlers java7Handlers = _jdk7Helper;
        if (java7Handlers == null || (deserializerForJavaNioFilePath = java7Handlers.getDeserializerForJavaNioFilePath(rawClass)) == null) {
            if (_IsXOfY(rawClass, CLASS_DOM_NODE)) {
                return (JsonDeserializer) instantiate("com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer", javaType);
            }
            if (_IsXOfY(rawClass, CLASS_DOM_DOCUMENT)) {
                return (JsonDeserializer) instantiate("com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer", javaType);
            }
            String name = rawClass.getName();
            String str = this._sqlDeserializers.get(name);
            if (str != null) {
                return (JsonDeserializer) instantiate(str, javaType);
            }
            if ((!name.startsWith("javax.xml.") && !hasSuperClassStartingWith(rawClass, "javax.xml.")) || (instantiate = instantiate("com.fasterxml.jackson.databind.ext.CoreXMLDeserializers", javaType)) == null) {
                return null;
            }
            return ((Deserializers) instantiate).findBeanDeserializer(javaType, deserializationConfig, beanDescription);
        }
        return deserializerForJavaNioFilePath;
    }

    public JsonSerializer<?> findSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription) {
        Object instantiate;
        JsonSerializer<?> serializerForJavaNioFilePath;
        Class<?> rawClass = javaType.getRawClass();
        if (_IsXOfY(rawClass, CLASS_DOM_NODE)) {
            return (JsonSerializer) instantiate("com.fasterxml.jackson.databind.ext.DOMSerializer", javaType);
        }
        Java7Handlers java7Handlers = _jdk7Helper;
        if (java7Handlers != null && (serializerForJavaNioFilePath = java7Handlers.getSerializerForJavaNioFilePath(rawClass)) != null) {
            return serializerForJavaNioFilePath;
        }
        String name = rawClass.getName();
        Object obj = this._sqlSerializers.get(name);
        if (obj != null) {
            return obj instanceof JsonSerializer ? (JsonSerializer) obj : (JsonSerializer) instantiate((String) obj, javaType);
        } else if ((!name.startsWith("javax.xml.") && !hasSuperClassStartingWith(rawClass, "javax.xml.")) || (instantiate = instantiate("com.fasterxml.jackson.databind.ext.CoreXMLSerializers", javaType)) == null) {
            return null;
        } else {
            return ((Serializers) instantiate).findSerializer(serializationConfig, javaType, beanDescription);
        }
    }
}
