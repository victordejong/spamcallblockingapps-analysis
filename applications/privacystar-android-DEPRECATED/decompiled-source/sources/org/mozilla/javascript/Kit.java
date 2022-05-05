package org.mozilla.javascript;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.Method;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Kit.class */
public class Kit {
    private static Method Throwable_initCause;

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/Kit$ComplexKey.class */
    private static final class ComplexKey {
        private int hash;
        private Object key1;
        private Object key2;

        ComplexKey(Object obj, Object obj2) {
            this.key1 = obj;
            this.key2 = obj2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ComplexKey)) {
                return false;
            }
            ComplexKey complexKey = (ComplexKey) obj;
            boolean z = false;
            if (this.key1.equals(complexKey.key1)) {
                z = false;
                if (this.key2.equals(complexKey.key2)) {
                    z = true;
                }
            }
            return z;
        }

        public int hashCode() {
            if (this.hash == 0) {
                this.hash = this.key1.hashCode() ^ this.key2.hashCode();
            }
            return this.hash;
        }
    }

    static {
        try {
            Class<?> classOrNull = classOrNull("java.lang.Throwable");
            Throwable_initCause = classOrNull.getMethod("initCause", classOrNull);
        } catch (Exception e) {
        }
    }

    public static Object addListener(Object obj, Object obj2) {
        if (obj2 == null) {
            throw new IllegalArgumentException();
        } else if (obj2 instanceof Object[]) {
            throw new IllegalArgumentException();
        } else {
            if (obj != null) {
                if (!(obj instanceof Object[])) {
                    obj2 = new Object[]{obj, obj2};
                } else {
                    Object[] objArr = (Object[]) obj;
                    int length = objArr.length;
                    if (length < 2) {
                        throw new IllegalArgumentException();
                    }
                    Object[] objArr2 = new Object[length + 1];
                    System.arraycopy(objArr, 0, objArr2, 0, length);
                    objArr2[length] = obj2;
                    obj2 = objArr2;
                }
            }
            return obj2;
        }
    }

    public static Class<?> classOrNull(ClassLoader classLoader, String str) {
        try {
            return classLoader.loadClass(str);
        } catch (ClassNotFoundException | IllegalArgumentException | LinkageError | SecurityException e) {
            return null;
        }
    }

    public static Class<?> classOrNull(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException | IllegalArgumentException | LinkageError | SecurityException e) {
            return null;
        }
    }

    public static RuntimeException codeBug() throws RuntimeException {
        IllegalStateException illegalStateException = new IllegalStateException("FAILED ASSERTION");
        illegalStateException.printStackTrace(System.err);
        throw illegalStateException;
    }

    public static RuntimeException codeBug(String str) throws RuntimeException {
        IllegalStateException illegalStateException = new IllegalStateException("FAILED ASSERTION: " + str);
        illegalStateException.printStackTrace(System.err);
        throw illegalStateException;
    }

    public static Object getListener(Object obj, int i) {
        if (i == 0) {
            if (obj == null) {
                return null;
            }
            if (!(obj instanceof Object[])) {
                return obj;
            }
            Object[] objArr = (Object[]) obj;
            if (objArr.length >= 2) {
                return objArr[0];
            }
            throw new IllegalArgumentException();
        } else if (i != 1) {
            Object[] objArr2 = (Object[]) obj;
            int length = objArr2.length;
            if (length < 2) {
                throw new IllegalArgumentException();
            } else if (i == length) {
                return null;
            } else {
                return objArr2[i];
            }
        } else if (obj instanceof Object[]) {
            return ((Object[]) obj)[1];
        } else {
            if (obj != null) {
                return null;
            }
            throw new IllegalArgumentException();
        }
    }

    public static RuntimeException initCause(RuntimeException runtimeException, Throwable th) {
        if (Throwable_initCause != null) {
            try {
                Throwable_initCause.invoke(runtimeException, th);
            } catch (Exception e) {
            }
        }
        return runtimeException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object initHash(Map<Object, Object> map, Object obj, Object obj2) {
        synchronized (map) {
            Object obj3 = map.get(obj);
            if (obj3 == null) {
                map.put(obj, obj2);
            } else {
                obj2 = obj3;
            }
        }
        return obj2;
    }

    public static Object makeHashKeyFromPair(Object obj, Object obj2) {
        if (obj == null) {
            throw new IllegalArgumentException();
        } else if (obj2 != null) {
            return new ComplexKey(obj, obj2);
        } else {
            throw new IllegalArgumentException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object newInstanceOrNull(Class<?> cls) {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException | InstantiationException | LinkageError | SecurityException e) {
            return null;
        }
    }

    public static String readReader(Reader reader) throws IOException {
        char[] cArr = new char[512];
        int i = 0;
        while (true) {
            int read = reader.read(cArr, i, cArr.length - i);
            if (read < 0) {
                return new String(cArr, 0, i);
            }
            int i2 = i + read;
            i = i2;
            if (i2 == cArr.length) {
                char[] cArr2 = new char[cArr.length * 2];
                System.arraycopy(cArr, 0, cArr2, 0, i2);
                cArr = cArr2;
                i = i2;
            }
        }
    }

    public static byte[] readStream(InputStream inputStream, int i) throws IOException {
        if (i <= 0) {
            throw new IllegalArgumentException("Bad initialBufferCapacity: " + i);
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (true) {
            int read = inputStream.read(bArr, i2, bArr.length - i2);
            if (read < 0) {
                break;
            }
            int i3 = i2 + read;
            i2 = i3;
            if (i3 == bArr.length) {
                byte[] bArr2 = new byte[bArr.length * 2];
                System.arraycopy(bArr, 0, bArr2, 0, i3);
                bArr = bArr2;
                i2 = i3;
            }
        }
        if (i2 != bArr.length) {
            byte[] bArr3 = new byte[i2];
            System.arraycopy(bArr, 0, bArr3, 0, i2);
            bArr = bArr3;
        }
        return bArr;
    }

    public static Object removeListener(Object obj, Object obj2) {
        Object obj3;
        if (obj2 == null) {
            throw new IllegalArgumentException();
        } else if (obj2 instanceof Object[]) {
            throw new IllegalArgumentException();
        } else {
            if (obj == obj2) {
                obj3 = null;
            } else {
                obj3 = obj;
                if (obj instanceof Object[]) {
                    Object[] objArr = (Object[]) obj;
                    int length = objArr.length;
                    if (length >= 2) {
                        if (length != 2) {
                            int i = length;
                            while (true) {
                                int i2 = i - 1;
                                if (objArr[i2] != obj2) {
                                    i = i2;
                                    if (i2 == 0) {
                                        obj3 = obj;
                                        break;
                                    }
                                } else {
                                    obj3 = new Object[length - 1];
                                    System.arraycopy(objArr, 0, obj3, 0, i2);
                                    int i3 = i2 + 1;
                                    System.arraycopy(objArr, i3, obj3, i2, length - i3);
                                    break;
                                }
                            }
                        } else if (objArr[1] == obj2) {
                            obj3 = objArr[0];
                        } else {
                            obj3 = obj;
                            if (objArr[0] == obj2) {
                                obj3 = objArr[1];
                            }
                        }
                    } else {
                        throw new IllegalArgumentException();
                    }
                }
            }
            return obj3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean testIfCanLoadRhinoClasses(ClassLoader classLoader) {
        Class<?> cls = ScriptRuntime.ContextFactoryClass;
        return classOrNull(classLoader, cls.getName()) == cls;
    }

    public static int xDigitToInt(int i, int i2) {
        int i3;
        if (i <= 57) {
            i3 = i - 48;
            if (i3 < 0) {
                return -1;
            }
        } else if (i <= 70) {
            if (65 > i) {
                return -1;
            }
            i3 = i - 55;
        } else if (i > 102 || 97 > i) {
            return -1;
        } else {
            i3 = i - 87;
        }
        return i3 | (i2 << 4);
    }
}
