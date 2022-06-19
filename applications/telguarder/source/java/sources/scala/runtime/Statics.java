package scala.runtime;
/* loaded from: classes3-dex2jar.jar:scala/runtime/Statics.class */
public final class Statics {
    public static int anyHash(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj instanceof Long ? longHash(((Long) obj).longValue()) : obj instanceof Double ? doubleHash(((Double) obj).doubleValue()) : obj instanceof Float ? floatHash(((Float) obj).floatValue()) : obj.hashCode();
    }

    public static int avalanche(int i) {
        int i2 = (i ^ (i >>> 16)) * (-2048144789);
        int i3 = (i2 ^ (i2 >>> 13)) * (-1028477387);
        return i3 ^ (i3 >>> 16);
    }

    public static int doubleHash(double d) {
        int i = (int) d;
        if (i == d) {
            return i;
        }
        float f = (float) d;
        if (f == d) {
            return Float.floatToIntBits(f);
        }
        long j = (long) d;
        if (j == d) {
            return (int) j;
        }
        long doubleToLongBits = Double.doubleToLongBits(d);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    public static int finalizeHash(int i, int i2) {
        return avalanche(i ^ i2);
    }

    public static int floatHash(float f) {
        int i = (int) f;
        if (i == f) {
            return i;
        }
        long j = f;
        return ((float) j) == f ? (int) (j ^ (j >>> 32)) : Float.floatToIntBits(f);
    }

    public static int longHash(long j) {
        int i = (int) j;
        return ((long) i) == j ? i : (int) (j ^ (j >>> 32));
    }

    public static int mix(int i, int i2) {
        return (Integer.rotateLeft(mixLast(i, i2), 13) * 5) - 430675100;
    }

    public static int mixLast(int i, int i2) {
        return i ^ (Integer.rotateLeft(i2 * (-862048943), 15) * 461845907);
    }
}
