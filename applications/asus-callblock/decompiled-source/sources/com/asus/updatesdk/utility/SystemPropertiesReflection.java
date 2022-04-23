package com.asus.updatesdk.utility;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/utility/SystemPropertiesReflection.class */
public class SystemPropertiesReflection {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f3183a = ReflectionUtils.a("android.os.SystemProperties");

    /* renamed from: b  reason: collision with root package name */
    private static final Class<?>[] f3184b = {String.class, String.class};
    private static final Class<?>[] c = {String.class, Boolean.TYPE};
    private static final Class<?>[] d = {String.class, Integer.TYPE};
    private static final Class<?>[] e = {String.class, Long.TYPE};

    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/utility/SystemPropertiesReflection$Key.class */
    public static final class Key {
        public static final String BUILD_ASUS_SKU = "ro.build.asus.sku";
        public static final String BUILD_ASUS_VERSION = "ro.build.asus.version";
        public static final String BUILD_PRODUCT = "ro.build.product";
        public static final String CPU_ABI = "ro.product.cpu.abi";
        public static final String CPU_ABI2 = "ro.product.cpu.abi2";
        public static final String CPU_ABILIST = "ro.product.cpu.abilist";
        public static final String PRODUCT_DEVICE = "ro.product.device";
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> T a(String str, Class<?>[] clsArr, String str2, T t) {
        Object a2 = ReflectionUtils.a(str, f3183a, clsArr, new Object[]{str2, t});
        if (a2 != 0) {
            t = a2;
        }
        return t;
    }

    public static String get(String str) {
        return get(str, "unknown");
    }

    public static String get(String str, String str2) {
        return (String) a("get", f3184b, str, str2);
    }

    public static boolean getBoolean(String str, boolean z) {
        return ((Boolean) a("getBoolean", c, str, Boolean.valueOf(z))).booleanValue();
    }

    public static int getInt(String str, int i) {
        return ((Integer) a("getInt", d, str, Integer.valueOf(i))).intValue();
    }

    public static long getLong(String str, long j) {
        return ((Long) a("getLong", e, str, Long.valueOf(j))).longValue();
    }
}
