package org.slf4j.impl;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.slf4j.ILoggerFactory;
import org.slf4j.Logger;
/* loaded from: classes3-dex2jar.jar:org/slf4j/impl/AndroidLoggerFactory.class */
class AndroidLoggerFactory implements ILoggerFactory {
    static final String ANONYMOUS_TAG = "null";
    static final int TAG_MAX_LENGTH = 23;
    private final ConcurrentMap<String, Logger> loggerMap = new ConcurrentHashMap();

    private static String getSimpleName(String str) {
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

    static String loggerNameToTag(String str) {
        int length;
        if (str == null) {
            return ANONYMOUS_TAG;
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
                    return getSimpleName(str);
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
        return getSimpleName(str);
    }

    @Override // org.slf4j.ILoggerFactory
    public Logger getLogger(String str) {
        String loggerNameToTag = loggerNameToTag(str);
        Logger logger = this.loggerMap.get(loggerNameToTag);
        AndroidLoggerAdapter androidLoggerAdapter = logger;
        if (logger == null) {
            androidLoggerAdapter = new AndroidLoggerAdapter(loggerNameToTag);
            Logger putIfAbsent = this.loggerMap.putIfAbsent(loggerNameToTag, androidLoggerAdapter);
            if (putIfAbsent != null) {
                androidLoggerAdapter = putIfAbsent;
            }
        }
        return androidLoggerAdapter;
    }
}
