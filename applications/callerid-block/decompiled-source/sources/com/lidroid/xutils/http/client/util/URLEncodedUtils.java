package com.lidroid.xutils.http.client.util;

import android.text.TextUtils;
import java.net.URI;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicHeaderValueParser;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/util/URLEncodedUtils.class */
public class URLEncodedUtils {
    public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";
    private static final String NAME_VALUE_SEPARATOR = "=";
    private static final String PARAMETER_SEPARATOR = "&";
    private static final int RADIX = 16;
    private static final char[] DELIM = {'&'};
    private static final BitSet UNRESERVED = new BitSet(256);
    private static final BitSet PUNCT = new BitSet(256);
    private static final BitSet USERINFO = new BitSet(256);
    private static final BitSet PATHSAFE = new BitSet(256);
    private static final BitSet FRAGMENT = new BitSet(256);
    private static final BitSet RESERVED = new BitSet(256);
    private static final BitSet URLENCODER = new BitSet(256);

    static {
        for (int i = 97; i <= 122; i++) {
            UNRESERVED.set(i);
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            UNRESERVED.set(i2);
        }
        for (int i3 = 48; i3 <= 57; i3++) {
            UNRESERVED.set(i3);
        }
        BitSet bitSet = UNRESERVED;
        bitSet.set(95);
        bitSet.set(45);
        bitSet.set(46);
        bitSet.set(42);
        URLENCODER.or(bitSet);
        bitSet.set(33);
        bitSet.set(126);
        bitSet.set(39);
        bitSet.set(40);
        bitSet.set(41);
        BitSet bitSet2 = PUNCT;
        bitSet2.set(44);
        bitSet2.set(59);
        bitSet2.set(58);
        bitSet2.set(36);
        bitSet2.set(38);
        bitSet2.set(43);
        bitSet2.set(61);
        BitSet bitSet3 = USERINFO;
        bitSet3.or(bitSet);
        bitSet3.or(bitSet2);
        BitSet bitSet4 = PATHSAFE;
        bitSet4.or(bitSet);
        bitSet4.set(47);
        bitSet4.set(59);
        bitSet4.set(58);
        bitSet4.set(64);
        bitSet4.set(38);
        bitSet4.set(61);
        bitSet4.set(43);
        bitSet4.set(36);
        bitSet4.set(44);
        BitSet bitSet5 = RESERVED;
        bitSet5.set(59);
        bitSet5.set(47);
        bitSet5.set(63);
        bitSet5.set(58);
        bitSet5.set(64);
        bitSet5.set(38);
        bitSet5.set(61);
        bitSet5.set(43);
        bitSet5.set(36);
        bitSet5.set(44);
        bitSet5.set(91);
        bitSet5.set(93);
        BitSet bitSet6 = FRAGMENT;
        bitSet6.or(bitSet5);
        bitSet6.or(bitSet);
    }

    private static String decodeFormFields(String str, String str2) {
        if (str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = "UTF-8";
        }
        return urldecode(str, Charset.forName(str2), true);
    }

    private static String decodeFormFields(String str, Charset charset) {
        if (str == null) {
            return null;
        }
        if (charset == null) {
            charset = Charset.forName("UTF-8");
        }
        return urldecode(str, charset, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String encFragment(String str, Charset charset) {
        return urlencode(str, charset, FRAGMENT, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String encPath(String str, Charset charset) {
        return urlencode(str, charset, PATHSAFE, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String encUserInfo(String str, Charset charset) {
        return urlencode(str, charset, USERINFO, false);
    }

    private static String encodeFormFields(String str, String str2) {
        if (str == null) {
            return null;
        }
        if (str2 == null) {
            str2 = "UTF-8";
        }
        return urlencode(str, Charset.forName(str2), URLENCODER, true);
    }

    private static String encodeFormFields(String str, Charset charset) {
        if (str == null) {
            return null;
        }
        if (charset == null) {
            charset = Charset.forName("UTF-8");
        }
        return urlencode(str, charset, URLENCODER, true);
    }

    public static String format(Iterable<? extends NameValuePair> iterable, Charset charset) {
        StringBuilder sb = new StringBuilder();
        for (NameValuePair nameValuePair : iterable) {
            String encodeFormFields = encodeFormFields(nameValuePair.getName(), charset);
            String encodeFormFields2 = encodeFormFields(nameValuePair.getValue(), charset);
            if (sb.length() > 0) {
                sb.append(PARAMETER_SEPARATOR);
            }
            sb.append(encodeFormFields);
            if (encodeFormFields2 != null) {
                sb.append(NAME_VALUE_SEPARATOR);
                sb.append(encodeFormFields2);
            }
        }
        return sb.toString();
    }

    public static String format(List<? extends NameValuePair> list, String str) {
        StringBuilder sb = new StringBuilder();
        for (NameValuePair nameValuePair : list) {
            String encodeFormFields = encodeFormFields(nameValuePair.getName(), str);
            String encodeFormFields2 = encodeFormFields(nameValuePair.getValue(), str);
            if (sb.length() > 0) {
                sb.append(PARAMETER_SEPARATOR);
            }
            sb.append(encodeFormFields);
            if (encodeFormFields2 != null) {
                sb.append(NAME_VALUE_SEPARATOR);
                sb.append(encodeFormFields2);
            }
        }
        return sb.toString();
    }

    public static boolean isEncoded(HttpEntity httpEntity) {
        Header contentType = httpEntity.getContentType();
        if (contentType == null) {
            return false;
        }
        HeaderElement[] elements = contentType.getElements();
        if (elements.length > 0) {
            return elements[0].getName().equalsIgnoreCase(CONTENT_TYPE);
        }
        return false;
    }

    public static List<NameValuePair> parse(String str) {
        if (str == null) {
            return Collections.emptyList();
        }
        BasicHeaderValueParser basicHeaderValueParser = BasicHeaderValueParser.DEFAULT;
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        ParserCursor parserCursor = new ParserCursor(0, charArrayBuffer.length());
        ArrayList arrayList = new ArrayList();
        while (!parserCursor.atEnd()) {
            NameValuePair parseNameValuePair = basicHeaderValueParser.parseNameValuePair(charArrayBuffer, parserCursor, DELIM);
            if (parseNameValuePair.getName().length() > 0) {
                arrayList.add(new BasicNameValuePair(parseNameValuePair.getName(), parseNameValuePair.getValue()));
            }
        }
        return arrayList;
    }

    public static List<NameValuePair> parse(URI uri) {
        String rawQuery = uri.getRawQuery();
        if (TextUtils.isEmpty(rawQuery)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        parse(arrayList, new Scanner(rawQuery));
        return arrayList;
    }

    public static void parse(List<NameValuePair> list, Scanner scanner) {
        String str;
        String str2;
        scanner.useDelimiter(PARAMETER_SEPARATOR);
        while (scanner.hasNext()) {
            String next = scanner.next();
            int indexOf = next.indexOf(NAME_VALUE_SEPARATOR);
            if (indexOf != -1) {
                str = next.substring(0, indexOf).trim();
                str2 = next.substring(indexOf + 1).trim();
            } else {
                str = next.trim();
                str2 = null;
            }
            list.add(new BasicNameValuePair(str, str2));
        }
    }

    private static String urldecode(String str, Charset charset, boolean z) {
        int i;
        byte b;
        if (str == null) {
            return null;
        }
        ByteBuffer allocate = ByteBuffer.allocate(str.length());
        CharBuffer wrap = CharBuffer.wrap(str);
        while (wrap.hasRemaining()) {
            char c = wrap.get();
            if (c != '%' || wrap.remaining() < 2) {
                i = c;
                if (z) {
                    i = c;
                    if (c == '+') {
                        b = 32;
                        allocate.put(b);
                    }
                }
                b = (byte) i;
                allocate.put(b);
            } else {
                char c2 = wrap.get();
                char c3 = wrap.get();
                int digit = Character.digit(c2, 16);
                int digit2 = Character.digit(c3, 16);
                if (digit == -1 || digit2 == -1) {
                    allocate.put((byte) 37);
                    allocate.put((byte) c2);
                    b = (byte) c3;
                    allocate.put(b);
                } else {
                    i = (digit << 4) + digit2;
                    b = (byte) i;
                    allocate.put(b);
                }
            }
        }
        allocate.flip();
        return charset.decode(allocate).toString();
    }

    private static String urlencode(String str, Charset charset, BitSet bitSet, boolean z) {
        char upperCase;
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        ByteBuffer encode = charset.encode(str);
        while (encode.hasRemaining()) {
            int i = encode.get() & 255;
            if (bitSet.get(i)) {
                upperCase = (char) i;
            } else if (!z || i != 32) {
                sb.append("%");
                char upperCase2 = Character.toUpperCase(Character.forDigit((i >> 4) & 15, 16));
                upperCase = Character.toUpperCase(Character.forDigit(i & 15, 16));
                sb.append(upperCase2);
            } else {
                upperCase = '+';
            }
            sb.append(upperCase);
        }
        return sb.toString();
    }
}
