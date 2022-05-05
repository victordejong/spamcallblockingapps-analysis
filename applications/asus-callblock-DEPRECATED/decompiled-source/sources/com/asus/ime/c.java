package com.asus.ime;
/* loaded from: classes-dex2jar.jar:com/asus/ime/c.class */
public final class c extends a {

    /* renamed from: b  reason: collision with root package name */
    public String f2902b;

    /* renamed from: a  reason: collision with root package name */
    public int f2901a = 0;
    public char[] c = new char[e.f2905a + 1];
    public int[] d = new int[e.f2905a + 1];

    public c(String str) {
        this.f2902b = null;
        this.f2902b = str;
    }

    public static int a(char[] cArr) {
        int i = 0;
        while (i < cArr.length && cArr[i] != 0) {
            i++;
        }
        return i;
    }

    public final boolean a(e eVar, int i) {
        return NativeWriteChinese.Write_Chinese_start(this.f2901a, eVar, i) == 0;
    }
}
