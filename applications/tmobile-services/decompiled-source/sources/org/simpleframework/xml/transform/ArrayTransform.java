package org.simpleframework.xml.transform;

import java.lang.reflect.Array;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/ArrayTransform.class */
class ArrayTransform implements Transform {
    private final Transform delegate;
    private final Class entry;
    private final StringArrayTransform split = new StringArrayTransform();

    public ArrayTransform(Transform transform, Class cls) {
        this.delegate = transform;
        this.entry = cls;
    }

    private Object read(String[] strArr, int i) throws Exception {
        Object newInstance = Array.newInstance(this.entry, i);
        for (int i2 = 0; i2 < i; i2++) {
            Object read = this.delegate.read(strArr[i2]);
            if (read != null) {
                Array.set(newInstance, i2, read);
            }
        }
        return newInstance;
    }

    private String write(Object obj, int i) throws Exception {
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            Object obj2 = Array.get(obj, i2);
            if (obj2 != null) {
                strArr[i2] = this.delegate.write(obj2);
            }
        }
        return this.split.write(strArr);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public Object read(String str) throws Exception {
        String[] read = this.split.read(str);
        return read(read, read.length);
    }

    @Override // org.simpleframework.xml.transform.Transform
    public String write(Object obj) throws Exception {
        return write(obj, Array.getLength(obj));
    }
}
