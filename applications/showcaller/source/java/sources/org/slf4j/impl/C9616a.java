package org.slf4j.impl;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.slf4j.AbstractC9604a;
import org.slf4j.AbstractC9605b;
/* renamed from: org.slf4j.impl.a */
/* loaded from: classes2-dex2jar.jar:org/slf4j/impl/a.class */
class C9616a implements AbstractC9604a {

    /* renamed from: a */
    private final ConcurrentMap<String, AbstractC9605b> f40527a = new ConcurrentHashMap();

    /* renamed from: b */
    private static String m291b(String str) {
        String str2;
        int length = str.length();
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            int i = lastIndexOf + 1;
            if (length - i <= 23) {
                str2 = str.substring(i);
                return str2;
            }
        }
        str2 = '*' + str.substring((length - 23) + 1);
        return str2;
    }

    /* renamed from: c */
    static String m290c(String str) {
        int length;
        if (str == null) {
            return "null";
        }
        int length2 = str.length();
        if (length2 <= 23) {
            return str;
        }
        StringBuilder sb = new StringBuilder(26);
        int i = 0;
        int i2 = 0;
        do {
            int indexOf = str.indexOf(46, i);
            if (indexOf == -1) {
                if (i2 == 0 || i2 + (length2 - i) > 23) {
                    return m291b(str);
                }
                sb.append((CharSequence) str, i, length2);
                return sb.toString();
            }
            sb.append(str.charAt(i));
            if (indexOf - i > 1) {
                sb.append('*');
            }
            sb.append('.');
            i = indexOf + 1;
            length = sb.length();
            i2 = length;
        } while (length <= 23);
        return m291b(str);
    }

    @Override // org.slf4j.AbstractC9604a
    /* renamed from: a */
    public AbstractC9605b mo292a(String str) {
        String m290c = m290c(str);
        AbstractC9605b abstractC9605b = this.f40527a.get(m290c);
        AndroidLoggerAdapter androidLoggerAdapter = abstractC9605b;
        if (abstractC9605b == null) {
            androidLoggerAdapter = new AndroidLoggerAdapter(m290c);
            AbstractC9605b putIfAbsent = this.f40527a.putIfAbsent(m290c, androidLoggerAdapter);
            if (putIfAbsent != null) {
                androidLoggerAdapter = putIfAbsent;
            }
        }
        return androidLoggerAdapter;
    }
}
