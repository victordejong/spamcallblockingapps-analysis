package org.simpleframework.xml.convert;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.util.ConcurrentCache;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/convert/ScannerBuilder.class */
class ScannerBuilder extends ConcurrentCache<Scanner> {

    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/convert/ScannerBuilder$Entry.class */
    private static class Entry extends ConcurrentCache<Annotation> implements Scanner {
        private final Class root;

        public Entry(Class cls) {
            this.root = cls;
        }

        private <T extends Annotation> T find(Class<T> cls) {
            for (Class cls2 = this.root; cls2 != null; cls2 = cls2.getSuperclass()) {
                T t = (T) cls2.getAnnotation(cls);
                if (t != null) {
                    return t;
                }
            }
            return null;
        }

        @Override // org.simpleframework.xml.convert.Scanner
        public <T extends Annotation> T scan(Class<T> cls) {
            if (!contains(cls)) {
                Annotation find = find(cls);
                if (!(cls == null || find == null)) {
                    put(cls, find);
                }
            }
            return (T) get(cls);
        }
    }

    public Scanner build(Class<?> cls) {
        Scanner scanner = get(cls);
        Scanner scanner2 = scanner;
        if (scanner == null) {
            scanner2 = new Entry(cls);
            put(cls, scanner2);
        }
        return scanner2;
    }
}
