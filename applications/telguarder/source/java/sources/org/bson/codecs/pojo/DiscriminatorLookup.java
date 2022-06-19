package org.bson.codecs.pojo;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.bson.codecs.configuration.CodecConfigurationException;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/DiscriminatorLookup.class */
final class DiscriminatorLookup {
    private final Map<String, Class<?>> discriminatorClassMap = new ConcurrentHashMap();
    private final Set<String> packages;

    public DiscriminatorLookup(Map<Class<?>, ClassModel<?>> map, Set<String> set) {
        for (ClassModel<?> classModel : map.values()) {
            if (classModel.getDiscriminator() != null) {
                this.discriminatorClassMap.put(classModel.getDiscriminator(), classModel.getType());
            }
        }
        this.packages = set;
    }

    private Class<?> getClassForName(String str) {
        Class<?> cls;
        try {
            cls = Class.forName(str);
        } catch (ClassNotFoundException e) {
            cls = null;
        }
        return cls;
    }

    private Class<?> searchPackages(String str) {
        Iterator<String> it = this.packages.iterator();
        Class<?> cls = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Class<?> classForName = getClassForName(it.next() + "." + str);
            cls = classForName;
            if (classForName != null) {
                cls = classForName;
                break;
            }
        }
        return cls;
    }

    public void addClassModel(ClassModel<?> classModel) {
        if (classModel.getDiscriminator() != null) {
            this.discriminatorClassMap.put(classModel.getDiscriminator(), classModel.getType());
        }
    }

    public Class<?> lookup(String str) {
        if (this.discriminatorClassMap.containsKey(str)) {
            return this.discriminatorClassMap.get(str);
        }
        Class<?> classForName = getClassForName(str);
        Class<?> cls = classForName;
        if (classForName == null) {
            cls = searchPackages(str);
        }
        if (cls == null) {
            throw new CodecConfigurationException(String.format("A class could not be found for the discriminator: '%s'.", str));
        }
        this.discriminatorClassMap.put(str, cls);
        return cls;
    }
}
