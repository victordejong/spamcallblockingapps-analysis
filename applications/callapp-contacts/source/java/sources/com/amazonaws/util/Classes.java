package com.amazonaws.util;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.jar.JarFile;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/Classes.class */
public enum Classes {
    ;

    public static Class<?> childClassOf(Class<?> cls, Object obj) {
        if (obj == null || obj == Object.class) {
            return null;
        }
        if (cls != null && cls.isInterface()) {
            return null;
        }
        Class<?> cls2 = obj.getClass();
        while (true) {
            Class<?> cls3 = cls2;
            Class<? super Object> superclass = cls3.getSuperclass();
            if (superclass == cls) {
                return cls3;
            }
            if (superclass == null) {
                return null;
            }
            cls2 = superclass;
        }
    }

    public static JarFile jarFileOf(Class<?> cls) {
        URL resource = cls.getResource("/" + cls.getName().replace('.', '/') + ".class");
        if (resource == null) {
            return null;
        }
        String file = resource.getFile();
        int indexOf = file.indexOf("file:");
        int indexOf2 = file.indexOf(".jar!");
        if (indexOf2 == -1) {
            return null;
        }
        File file2 = new File(file.substring(indexOf + 5, indexOf2 + 4));
        try {
            if (!file2.exists()) {
                return null;
            }
            return new JarFile(file2);
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}
