package kotlin.reflect.jvm.internal.impl.resolve.c;

import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.h;
import kotlin.reflect.jvm.internal.impl.c.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/c/d.class */
public enum d {
    BOOLEAN(h.BOOLEAN, "boolean", "Z", "java.lang.Boolean"),
    CHAR(h.CHAR, "char", "C", "java.lang.Character"),
    BYTE(h.BYTE, "byte", "B", "java.lang.Byte"),
    SHORT(h.SHORT, "short", "S", "java.lang.Short"),
    INT(h.INT, "int", "I", "java.lang.Integer"),
    FLOAT(h.FLOAT, "float", "F", "java.lang.Float"),
    LONG(h.LONG, "long", "J", "java.lang.Long"),
    DOUBLE(h.DOUBLE, "double", "D", "java.lang.Double");
    
    private final String desc;
    private final String name;
    private final h primitiveType;
    private final b wrapperFqName;
    private static final Set<b> WRAPPERS_CLASS_NAMES = new HashSet();
    private static final Map<String, d> TYPE_BY_NAME = new HashMap();
    private static final Map<h, d> TYPE_BY_PRIMITIVE_TYPE = new EnumMap(h.class);
    private static final Map<String, d> TYPE_BY_DESC = new HashMap();

    /* JADX WARN: Removed duplicated region for block: B:16:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static /* synthetic */ void $$$reportNull$$$0(int r4) {
        /*
            Method dump skipped, instructions count: 479
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.c.d.$$$reportNull$$$0(int):void");
    }

    static {
        d[] values;
        for (d dVar : values()) {
            WRAPPERS_CLASS_NAMES.add(dVar.getWrapperFqName());
            TYPE_BY_NAME.put(dVar.getJavaKeywordName(), dVar);
            TYPE_BY_PRIMITIVE_TYPE.put(dVar.getPrimitiveType(), dVar);
            TYPE_BY_DESC.put(dVar.getDesc(), dVar);
        }
    }

    d(h hVar, String str, String str2, String str3) {
        if (hVar == null) {
            $$$reportNull$$$0(6);
        }
        if (str == null) {
            $$$reportNull$$$0(7);
        }
        if (str2 == null) {
            $$$reportNull$$$0(8);
        }
        if (str3 == null) {
            $$$reportNull$$$0(9);
        }
        this.primitiveType = hVar;
        this.name = str;
        this.desc = str2;
        this.wrapperFqName = new b(str3);
    }

    public static d get(String str) {
        if (str == null) {
            $$$reportNull$$$0(1);
        }
        d dVar = TYPE_BY_NAME.get(str);
        if (dVar != null) {
            if (dVar == null) {
                $$$reportNull$$$0(2);
            }
            return dVar;
        }
        throw new AssertionError("Non-primitive type name passed: ".concat(String.valueOf(str)));
    }

    public static d get(h hVar) {
        if (hVar == null) {
            $$$reportNull$$$0(3);
        }
        d dVar = TYPE_BY_PRIMITIVE_TYPE.get(hVar);
        if (dVar == null) {
            $$$reportNull$$$0(4);
        }
        return dVar;
    }

    public final String getDesc() {
        String str = this.desc;
        if (str == null) {
            $$$reportNull$$$0(12);
        }
        return str;
    }

    public final String getJavaKeywordName() {
        String str = this.name;
        if (str == null) {
            $$$reportNull$$$0(11);
        }
        return str;
    }

    public final h getPrimitiveType() {
        h hVar = this.primitiveType;
        if (hVar == null) {
            $$$reportNull$$$0(10);
        }
        return hVar;
    }

    public final b getWrapperFqName() {
        b bVar = this.wrapperFqName;
        if (bVar == null) {
            $$$reportNull$$$0(13);
        }
        return bVar;
    }
}
