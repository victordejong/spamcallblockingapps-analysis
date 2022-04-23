package org.apache.commons.p018io;

import java.nio.charset.Charset;
import java.util.Collections;
import java.util.SortedMap;
import java.util.TreeMap;
import org.spongycastle.i18n.LocalizedMessage;
/* renamed from: org.apache.commons.io.Charsets */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/Charsets.class */
public class Charsets {
    @Deprecated
    public static final Charset ISO_8859_1 = Charset.forName(LocalizedMessage.DEFAULT_ENCODING);
    @Deprecated
    public static final Charset US_ASCII = Charset.forName("US-ASCII");
    @Deprecated
    public static final Charset UTF_16 = Charset.forName("UTF-16");
    @Deprecated
    public static final Charset UTF_16BE = Charset.forName("UTF-16BE");
    @Deprecated
    public static final Charset UTF_16LE = Charset.forName("UTF-16LE");
    @Deprecated
    public static final Charset UTF_8 = Charset.forName("UTF-8");

    public static SortedMap<String, Charset> requiredCharsets() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        treeMap.put(ISO_8859_1.name(), ISO_8859_1);
        treeMap.put(US_ASCII.name(), US_ASCII);
        treeMap.put(UTF_16.name(), UTF_16);
        treeMap.put(UTF_16BE.name(), UTF_16BE);
        treeMap.put(UTF_16LE.name(), UTF_16LE);
        treeMap.put(UTF_8.name(), UTF_8);
        return Collections.unmodifiableSortedMap(treeMap);
    }

    public static Charset toCharset(String str) {
        return str == null ? Charset.defaultCharset() : Charset.forName(str);
    }

    public static Charset toCharset(Charset charset) {
        Charset charset2 = charset;
        if (charset == null) {
            charset2 = Charset.defaultCharset();
        }
        return charset2;
    }
}
