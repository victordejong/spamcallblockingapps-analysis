package com.android.contacts.j;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    public final p f1576a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean[] f1577b;
    public final int c;

    public r(p pVar, boolean[] zArr, int i) {
        this.f1576a = pVar;
        this.f1577b = Arrays.copyOf(zArr, zArr.length);
        this.c = i;
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f1576a.f1568a).append('-').append(' ');
        char[] charArray = this.f1576a.c.toCharArray();
        int length = charArray.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            char c = charArray[i];
            if (this.f1577b[i2]) {
                stringBuffer.append('[').append(c).append(']');
            } else {
                stringBuffer.append(c);
            }
            i++;
            i2++;
        }
        return stringBuffer.toString();
    }
}
