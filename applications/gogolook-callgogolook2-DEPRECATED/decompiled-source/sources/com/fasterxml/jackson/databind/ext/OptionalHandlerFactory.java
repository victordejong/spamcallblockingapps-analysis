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
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import java.io.Serializable;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ext/OptionalHandlerFactory.class */
public class OptionalHandlerFactory implements Serializable {
    public static final Class<?> CLASS_JAVA7_PATH;
    public static final OptionalHandlerFactory instance;
    public static final Class<?> CLASS_DOM_NODE = Node.class;
    public static final Class<?> CLASS_DOM_DOCUMENT = Document.class;

    static {
        Class<?> cls = null;
        try {
            cls = Class.forName("java.nio.file.Path");
        } catch (Exception e) {
            System.err.println("WARNING: could not load Java7 Path class");
        }
        CLASS_JAVA7_PATH = cls;
        instance = new OptionalHandlerFactory();
    }

    public JsonDeserializer<?> findDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        Object instantiate;
        Class<?> rawClass = javaType.getRawClass();
        Class<?> cls = CLASS_JAVA7_PATH;
        if (cls != null && cls.isAssignableFrom(rawClass)) {
            return (JsonDeserializer) instantiate("com.fasterxml.jackson.databind.ext.PathDeserializer");
        }
        Class<?> cls2 = CLASS_DOM_NODE;
        if (cls2 != null && cls2.isAssignableFrom(rawClass)) {
            return (JsonDeserializer) instantiate("com.fasterxml.jackson.databind.ext.DOMDeserializer$NodeDeserializer");
        }
        Class<?> cls3 = CLASS_DOM_DOCUMENT;
        if (cls3 != null && cls3.isAssignableFrom(rawClass)) {
            return (JsonDeserializer) instantiate("com.fasterxml.jackson.databind.ext.DOMDeserializer$DocumentDeserializer");
        }
        if ((rawClass.getName().startsWith("javax.xml.") || hasSuperClassStartingWith(rawClass, "javax.xml.")) && (instantiate = instantiate("com.fasterxml.jackson.databind.ext.CoreXMLDeserializers")) != null) {
            return ((Deserializers) instantiate).findBeanDeserializer(javaType, deserializationConfig, beanDescription);
        }
        return null;
    }

    public JsonSerializer<?> findSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription) {
        Object instantiate;
        Class<?> rawClass = javaType.getRawClass();
        Class<?> cls = CLASS_JAVA7_PATH;
        if (cls != null && cls.isAssignableFrom(rawClass)) {
            return ToStringSerializer.instance;
        }
        Class<?> cls2 = CLASS_DOM_NODE;
        if (cls2 != null && cls2.isAssignableFrom(rawClass)) {
            return (JsonSerializer) instantiate("com.fasterxml.jackson.databind.ext.DOMSerializer");
        }
        if ((rawClass.getName().startsWith("javax.xml.") || hasSuperClassStartingWith(rawClass, "javax.xml.")) && (instantiate = instantiate("com.fasterxml.jackson.databind.ext.CoreXMLSerializers")) != null) {
            return ((Serializers) instantiate).findSerializer(serializationConfig, javaType, beanDescription);
        }
        return null;
    }

    public final boolean hasSuperClassStartingWith(Class<?> cls, String str) {
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

    public final Object instantiate(String str) {
        try {
            return Class.forName(str).newInstance();
        } catch (Exception | LinkageError e) {
            return null;
        }
    }
}
