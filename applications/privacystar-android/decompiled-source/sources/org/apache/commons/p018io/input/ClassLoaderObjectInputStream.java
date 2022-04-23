package org.apache.commons.p018io.input;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.io.StreamCorruptedException;
import java.lang.reflect.Proxy;
/* renamed from: org.apache.commons.io.input.ClassLoaderObjectInputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/ClassLoaderObjectInputStream.class */
public class ClassLoaderObjectInputStream extends ObjectInputStream {
    private final ClassLoader classLoader;

    public ClassLoaderObjectInputStream(ClassLoader classLoader, InputStream inputStream) throws IOException, StreamCorruptedException {
        super(inputStream);
        this.classLoader = classLoader;
    }

    @Override // java.io.ObjectInputStream
    protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
        try {
            return Class.forName(objectStreamClass.getName(), false, this.classLoader);
        } catch (ClassNotFoundException e) {
            return super.resolveClass(objectStreamClass);
        }
    }

    @Override // java.io.ObjectInputStream
    protected Class<?> resolveProxyClass(String[] strArr) throws IOException, ClassNotFoundException {
        Class[] clsArr = new Class[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            clsArr[i] = Class.forName(strArr[i], false, this.classLoader);
        }
        try {
            return Proxy.getProxyClass(this.classLoader, clsArr);
        } catch (IllegalArgumentException e) {
            return super.resolveProxyClass(strArr);
        }
    }
}
