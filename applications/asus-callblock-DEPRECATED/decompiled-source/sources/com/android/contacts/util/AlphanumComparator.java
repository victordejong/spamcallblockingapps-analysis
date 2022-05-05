package com.android.contacts.util;

import com.android.contacts.list.a;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AlphanumComparator.class */
public class AlphanumComparator<T extends a> implements Comparator<T> {
    private static String TAG = AlphanumComparator.class.getSimpleName();
    private int len1;
    private int len2;
    private int pos1;
    private int pos2;
    private String str1;
    private String str2;

    private int compareNumbers() {
        int i;
        char c;
        char c2;
        int i2;
        char c3 = 0;
        int i3 = 0;
        while (true) {
            if (this.pos1 >= this.len1) {
                c = 0;
                i = 0;
                break;
            }
            String str = this.str1;
            int i4 = this.pos1;
            this.pos1 = i4 + 1;
            c3 = str.charAt(i4);
            if (c3 != '0') {
                c = 0;
                i = 0;
                break;
            }
            i3++;
        }
        while (true) {
            if (this.pos2 >= this.len2) {
                i2 = 0;
                c2 = c3;
                break;
            }
            String str2 = this.str2;
            int i5 = this.pos2;
            this.pos2 = i5 + 1;
            c = str2.charAt(i5);
            if (c != '0') {
                i2 = 0;
                c = c;
                c2 = c3;
                break;
            }
            i++;
        }
        while (true) {
            boolean z = c2 == 0 || !Character.isDigit(c2);
            boolean z2 = c == 0 || !Character.isDigit(c);
            if (!z || !z2) {
                if (z) {
                    i2 = -1;
                    break;
                } else if (z2) {
                    i2 = 1;
                    break;
                } else {
                    if (i2 == 0 && c2 != c) {
                        i2 = c2 - c;
                    }
                    if (this.pos1 < this.len1) {
                        String str3 = this.str1;
                        int i6 = this.pos1;
                        this.pos1 = i6 + 1;
                        c2 = str3.charAt(i6);
                    } else {
                        c2 = 0;
                    }
                    if (this.pos2 < this.len2) {
                        String str4 = this.str2;
                        int i7 = this.pos2;
                        this.pos2 = i7 + 1;
                        c = str4.charAt(i7);
                    } else {
                        c = 0;
                    }
                }
            } else if (i2 == 0) {
                i2 = i3 - i;
            }
        }
        return i2;
    }

    private int compareOther(boolean z) {
        int i;
        String str = this.str1;
        int i2 = this.pos1;
        this.pos1 = i2 + 1;
        char charAt = str.charAt(i2);
        String str2 = this.str2;
        int i3 = this.pos2;
        this.pos2 = i3 + 1;
        char charAt2 = str2.charAt(i3);
        if (charAt == charAt2) {
            i = 0;
        } else {
            char c = charAt2;
            char c2 = charAt;
            if (z) {
                char upperCase = Character.toUpperCase(charAt);
                char upperCase2 = Character.toUpperCase(charAt2);
                c = upperCase2;
                c2 = upperCase;
                if (upperCase != upperCase2) {
                    c2 = Character.toLowerCase(upperCase);
                    c = Character.toLowerCase(upperCase2);
                }
            }
            i = c2 - c;
        }
        return i;
    }

    public int compare(T t, T t2) {
        int i = -1;
        this.str1 = t.f1756a;
        this.str2 = t2.f1756a;
        this.len1 = this.str1.length();
        this.len2 = this.str2.length();
        this.pos2 = 0;
        this.pos1 = 0;
        if (this.len1 == 0) {
            if (this.len2 == 0) {
                i = 0;
            }
        } else if (this.len2 == 0) {
            i = 1;
        } else {
            while (this.pos1 < this.len1 && this.pos2 < this.len2) {
                char charAt = this.str1.charAt(this.pos1);
                char charAt2 = this.str2.charAt(this.pos2);
                i = Character.isDigit(charAt) ? Character.isDigit(charAt2) ? compareNumbers() : 1 : Character.isLetter(charAt) ? Character.isLetter(charAt2) ? compareOther(true) : -1 : Character.isDigit(charAt2) ? 1 : Character.isLetter(charAt2) ? -1 : compareOther(false);
                if (i != 0) {
                    break;
                }
            }
            i = this.len1 - this.len2;
        }
        return i;
    }
}
