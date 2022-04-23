package com.android.contacts.j;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final i f1508a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1509b;
    public final boolean[] c;
    public boolean d = false;

    public a(i iVar, int i) {
        this.f1508a = iVar;
        this.f1509b = i;
        this.c = new boolean[this.f1508a.f1546b[this.f1509b].length()];
        Arrays.fill(this.c, false);
    }

    public final String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f1508a.f1545a).append(' ');
        char[] charArray = this.f1508a.f1546b[this.f1509b].toCharArray();
        int length = charArray.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            char c = charArray[i];
            if (this.c[i2]) {
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
