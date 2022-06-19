package scala.compat;

import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Arrays;
import scala.util.Properties$;
/* loaded from: classes3-dex2jar.jar:scala/compat/Platform$.class */
public final class Platform$ {
    public static final Platform$ MODULE$ = null;
    private final String EOL = Properties$.MODULE$.lineSeparator();

    static {
        new Platform$();
    }

    private Platform$() {
        MODULE$ = this;
    }

    public String EOL() {
        return this.EOL;
    }

    public void arrayclear(int[] iArr) {
        Arrays.fill(iArr, 0);
    }

    public void arraycopy(Object obj, int i, Object obj2, int i2, int i3) {
        System.arraycopy(obj, i, obj2, i2, i3);
    }

    public void collectGarbage() {
        System.gc();
    }

    public Object createArray(Class<?> cls, int i) {
        return Array.newInstance(cls, i);
    }

    public long currentTime() {
        return System.currentTimeMillis();
    }

    public String defaultCharsetName() {
        return Charset.defaultCharset().name();
    }

    public Class<?> getClassForName(String str) {
        return Class.forName(str);
    }
}
