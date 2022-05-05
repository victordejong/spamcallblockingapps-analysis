package com.android.contacts.util;

import com.android.contacts.list.c;
import java.text.Collator;
import java.util.Comparator;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AlphapinyinComparator.class */
public class AlphapinyinComparator<T extends c> implements Comparator<T> {
    private static String TAG = AlphanumComparator.class.getSimpleName();
    private String name1;
    private String name2;
    private Character pinyin1;
    private Character pinyin2;

    public int compare(T t, T t2) {
        int i = 0;
        this.pinyin1 = Character.valueOf(Character.toLowerCase(t.c));
        this.pinyin2 = Character.valueOf(Character.toLowerCase(t2.c));
        this.name1 = t.f1817a;
        this.name2 = t2.f1817a;
        if (!this.pinyin1.equals(this.pinyin2)) {
            i = this.pinyin1.compareTo(this.pinyin2);
        } else if (t.d) {
            i = t2.d ? Collator.getInstance(Locale.CHINESE).compare(String.valueOf(this.name1.charAt(0)), String.valueOf(this.name2.charAt(0))) : -1;
        } else if (t2.d) {
            i = 1;
        }
        return i;
    }
}
