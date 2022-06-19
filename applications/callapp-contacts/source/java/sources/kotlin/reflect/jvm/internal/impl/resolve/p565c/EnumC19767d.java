package kotlin.reflect.jvm.internal.impl.resolve.p565c;

import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.EnumC18946h;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.c.d */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/c/d.class */
public enum EnumC19767d {
    BOOLEAN(EnumC18946h.BOOLEAN, "boolean", "Z", "java.lang.Boolean"),
    CHAR(EnumC18946h.CHAR, "char", "C", "java.lang.Character"),
    BYTE(EnumC18946h.BYTE, "byte", "B", "java.lang.Byte"),
    SHORT(EnumC18946h.SHORT, "short", "S", "java.lang.Short"),
    INT(EnumC18946h.INT, "int", "I", "java.lang.Integer"),
    FLOAT(EnumC18946h.FLOAT, "float", "F", "java.lang.Float"),
    LONG(EnumC18946h.LONG, "long", "J", "java.lang.Long"),
    DOUBLE(EnumC18946h.DOUBLE, "double", "D", "java.lang.Double");
    
    private final String desc;
    private final String name;
    private final EnumC18946h primitiveType;
    private final C18961b wrapperFqName;
    private static final Set<C18961b> WRAPPERS_CLASS_NAMES = new HashSet();
    private static final Map<String, EnumC19767d> TYPE_BY_NAME = new HashMap();
    private static final Map<EnumC18946h, EnumC19767d> TYPE_BY_PRIMITIVE_TYPE = new EnumMap(EnumC18946h.class);
    private static final Map<String, EnumC19767d> TYPE_BY_DESC = new HashMap();

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
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.p565c.EnumC19767d.$$$reportNull$$$0(int):void");
    }

    static {
        EnumC19767d[] values;
        for (EnumC19767d enumC19767d : values()) {
            WRAPPERS_CLASS_NAMES.add(enumC19767d.getWrapperFqName());
            TYPE_BY_NAME.put(enumC19767d.getJavaKeywordName(), enumC19767d);
            TYPE_BY_PRIMITIVE_TYPE.put(enumC19767d.getPrimitiveType(), enumC19767d);
            TYPE_BY_DESC.put(enumC19767d.getDesc(), enumC19767d);
        }
    }

    EnumC19767d(EnumC18946h enumC18946h, String str, String str2, String str3) {
        if (enumC18946h == null) {
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
        this.primitiveType = enumC18946h;
        this.name = str;
        this.desc = str2;
        this.wrapperFqName = new C18961b(str3);
    }

    public static EnumC19767d get(String str) {
        if (str == null) {
            $$$reportNull$$$0(1);
        }
        EnumC19767d enumC19767d = TYPE_BY_NAME.get(str);
        if (enumC19767d != null) {
            if (enumC19767d == null) {
                $$$reportNull$$$0(2);
            }
            return enumC19767d;
        }
        throw new AssertionError("Non-primitive type name passed: ".concat(String.valueOf(str)));
    }

    public static EnumC19767d get(EnumC18946h enumC18946h) {
        if (enumC18946h == null) {
            $$$reportNull$$$0(3);
        }
        EnumC19767d enumC19767d = TYPE_BY_PRIMITIVE_TYPE.get(enumC18946h);
        if (enumC19767d == null) {
            $$$reportNull$$$0(4);
        }
        return enumC19767d;
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

    public final EnumC18946h getPrimitiveType() {
        EnumC18946h enumC18946h = this.primitiveType;
        if (enumC18946h == null) {
            $$$reportNull$$$0(10);
        }
        return enumC18946h;
    }

    public final C18961b getWrapperFqName() {
        C18961b c18961b = this.wrapperFqName;
        if (c18961b == null) {
            $$$reportNull$$$0(13);
        }
        return c18961b;
    }
}
