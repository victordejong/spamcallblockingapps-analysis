package com.asus.ime;

import android.graphics.Point;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/asus/ime/NativeWriteChinese.class */
public final class NativeWriteChinese {
    public static native int Write_Chinese_addArc(int i, List<Point> list);

    public static native int Write_Chinese_beginArc(int i);

    public static native int Write_Chinese_create(String str, String str2);

    public static native int Write_Chinese_destroy(int i);

    public static native int Write_Chinese_endArc(int i);

    public static native int Write_Chinese_finish(int i);

    public static native int Write_Chinese_recognize(int i, char c, char[] cArr, int[] iArr);

    public static native int Write_Chinese_start(int i, e eVar, int i2);
}
