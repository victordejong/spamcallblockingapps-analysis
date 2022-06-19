package org.bson;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.bson.util.ClassMap;
@Deprecated
/* loaded from: classes-dex2jar.jar:org/bson/BSON.class */
public class BSON {
    public static final byte ARRAY = 4;
    public static final byte BINARY = 5;
    public static final byte BOOLEAN = 8;
    public static final byte B_BINARY = 2;
    public static final byte B_FUNC = 1;
    public static final byte B_GENERAL = 0;
    public static final byte B_UUID = 3;
    public static final byte CODE = 13;
    public static final byte CODE_W_SCOPE = 15;
    public static final byte DATE = 9;
    public static final byte EOO = 0;
    private static final int FLAG_GLOBAL = 256;
    private static final int[] FLAG_LOOKUP;
    public static final byte MAXKEY = Byte.MAX_VALUE;
    public static final byte MINKEY = -1;
    public static final byte NULL = 10;
    public static final byte NUMBER = 1;
    public static final byte NUMBER_INT = 16;
    public static final byte NUMBER_LONG = 18;
    public static final byte OBJECT = 3;
    public static final byte OID = 7;
    public static final byte REF = 12;
    public static final byte REGEX = 11;
    public static final byte STRING = 2;
    public static final byte SYMBOL = 14;
    public static final byte TIMESTAMP = 17;
    public static final byte UNDEFINED = 6;
    private static volatile boolean decodeHooks = false;
    private static volatile boolean encodeHooks = false;
    private static final ClassMap<List<Transformer>> encodingHooks = new ClassMap<>();
    private static final ClassMap<List<Transformer>> decodingHooks = new ClassMap<>();

    static {
        int[] iArr = new int[65535];
        FLAG_LOOKUP = iArr;
        iArr[103] = 256;
        iArr[105] = 2;
        iArr[109] = 8;
        iArr[115] = 32;
        iArr[99] = 128;
        iArr[120] = 4;
        iArr[100] = 1;
        iArr[116] = 16;
        iArr[117] = 64;
    }

    public static void addDecodingHook(Class<?> cls, Transformer transformer) {
        decodeHooks = true;
        ClassMap<List<Transformer>> classMap = decodingHooks;
        List<Transformer> list = classMap.get(cls);
        CopyOnWriteArrayList copyOnWriteArrayList = list;
        if (list == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList();
            classMap.put(cls, copyOnWriteArrayList);
        }
        copyOnWriteArrayList.add(transformer);
    }

    public static void addEncodingHook(Class<?> cls, Transformer transformer) {
        encodeHooks = true;
        ClassMap<List<Transformer>> classMap = encodingHooks;
        List<Transformer> list = classMap.get(cls);
        CopyOnWriteArrayList copyOnWriteArrayList = list;
        if (list == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList();
            classMap.put(cls, copyOnWriteArrayList);
        }
        copyOnWriteArrayList.add(transformer);
    }

    public static Object applyDecodingHooks(Object obj) {
        Object obj2 = obj;
        if (hasDecodeHooks()) {
            obj2 = obj;
            if (obj != null) {
                ClassMap<List<Transformer>> classMap = decodingHooks;
                if (classMap.size() == 0) {
                    obj2 = obj;
                } else {
                    List<Transformer> list = classMap.get(obj.getClass());
                    obj2 = obj;
                    if (list != null) {
                        Iterator<Transformer> it = list.iterator();
                        Object obj3 = obj;
                        while (true) {
                            obj2 = obj3;
                            if (!it.hasNext()) {
                                break;
                            }
                            obj3 = it.next().transform(obj);
                        }
                    }
                }
            }
        }
        return obj2;
    }

    public static Object applyEncodingHooks(Object obj) {
        Object obj2 = obj;
        if (hasEncodeHooks()) {
            obj2 = obj;
            if (obj != null) {
                ClassMap<List<Transformer>> classMap = encodingHooks;
                if (classMap.size() == 0) {
                    obj2 = obj;
                } else {
                    List<Transformer> list = classMap.get(obj.getClass());
                    obj2 = obj;
                    if (list != null) {
                        Iterator<Transformer> it = list.iterator();
                        Object obj3 = obj;
                        while (true) {
                            obj2 = obj3;
                            if (!it.hasNext()) {
                                break;
                            }
                            obj3 = it.next().transform(obj);
                        }
                    }
                }
            }
        }
        return obj2;
    }

    public static void clearAllHooks() {
        clearEncodingHooks();
        clearDecodingHooks();
    }

    public static void clearDecodingHooks() {
        decodeHooks = false;
        decodingHooks.clear();
    }

    public static void clearEncodingHooks() {
        encodeHooks = false;
        encodingHooks.clear();
    }

    public static BSONObject decode(byte[] bArr) {
        return new BasicBSONDecoder().readObject(bArr);
    }

    public static byte[] encode(BSONObject bSONObject) {
        return new BasicBSONEncoder().encode(bSONObject);
    }

    public static List<Transformer> getDecodingHooks(Class<?> cls) {
        return decodingHooks.get(cls);
    }

    public static List<Transformer> getEncodingHooks(Class<?> cls) {
        return encodingHooks.get(cls);
    }

    public static boolean hasDecodeHooks() {
        return decodeHooks;
    }

    public static boolean hasEncodeHooks() {
        return encodeHooks;
    }

    public static int regexFlag(char c) {
        int i = FLAG_LOOKUP[c];
        if (i != 0) {
            return i;
        }
        throw new IllegalArgumentException(String.format("Unrecognized flag [%c]", Character.valueOf(c)));
    }

    public static int regexFlags(String str) {
        if (str == null) {
            return 0;
        }
        int i = 0;
        for (char c : str.toLowerCase().toCharArray()) {
            i |= regexFlag(c);
        }
        return i;
    }

    public static String regexFlags(int i) {
        int i2;
        StringBuilder sb = new StringBuilder();
        int i3 = 0;
        while (true) {
            i2 = i;
            int[] iArr = FLAG_LOOKUP;
            if (i3 >= iArr.length) {
                break;
            }
            i = i2;
            if ((iArr[i3] & i2) > 0) {
                sb.append((char) i3);
                i = i2 - iArr[i3];
            }
            i3++;
        }
        if (i2 <= 0) {
            return sb.toString();
        }
        throw new IllegalArgumentException("Some flags could not be recognized.");
    }

    public static void removeDecodingHook(Class<?> cls, Transformer transformer) {
        getDecodingHooks(cls).remove(transformer);
    }

    public static void removeDecodingHooks(Class<?> cls) {
        decodingHooks.remove(cls);
    }

    public static void removeEncodingHook(Class<?> cls, Transformer transformer) {
        getEncodingHooks(cls).remove(transformer);
    }

    public static void removeEncodingHooks(Class<?> cls) {
        encodingHooks.remove(cls);
    }

    public static int toInt(Object obj) {
        if (obj != null) {
            if (obj instanceof Number) {
                return ((Number) obj).intValue();
            }
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue() ? 1 : 0;
            }
            throw new IllegalArgumentException("Can't convert: " + obj.getClass().getName() + " to int");
        }
        throw new IllegalArgumentException("Argument shouldn't be null");
    }
}
