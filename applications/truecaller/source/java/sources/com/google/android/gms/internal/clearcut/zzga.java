package com.google.android.gms.internal.clearcut;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.network.constant.Protocols;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzga.class */
public final class zzga {
    public static <T extends zzfz> String zza(T t) {
        if (t == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            zza(null, t, new StringBuffer(), stringBuffer);
            return stringBuffer.toString();
        } catch (IllegalAccessException e) {
            String valueOf = String.valueOf(e.getMessage());
            return valueOf.length() != 0 ? "Error printing proto: ".concat(valueOf) : new String("Error printing proto: ");
        } catch (InvocationTargetException e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            return valueOf2.length() != 0 ? "Error printing proto: ".concat(valueOf2) : new String("Error printing proto: ");
        }
    }

    private static void zza(String str, Object obj, StringBuffer stringBuffer, StringBuffer stringBuffer2) throws IllegalAccessException, InvocationTargetException {
        Field[] fields;
        if (obj != null) {
            if (!(obj instanceof zzfz)) {
                String zzl = zzl(str);
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(zzl);
                stringBuffer2.append(": ");
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    String str3 = str2;
                    if (!str2.startsWith(Protocols.HTTP)) {
                        str3 = str2;
                        if (str2.length() > 200) {
                            str3 = String.valueOf(str2.substring(0, 200)).concat("[...]");
                        }
                    }
                    int length = str3.length();
                    StringBuilder sb = new StringBuilder(length);
                    for (int i = 0; i < length; i++) {
                        char charAt = str3.charAt(i);
                        if (charAt < ' ' || charAt > '~' || charAt == '\"' || charAt == '\'') {
                            sb.append(String.format("\\u%04x", Integer.valueOf(charAt)));
                        } else {
                            sb.append(charAt);
                        }
                    }
                    String sb2 = sb.toString();
                    stringBuffer2.append("\"");
                    stringBuffer2.append(sb2);
                    stringBuffer2.append("\"");
                } else if (obj instanceof byte[]) {
                    stringBuffer2.append('\"');
                    for (byte b : (byte[]) obj) {
                        int i2 = b & 255;
                        if (i2 == 92 || i2 == 34) {
                            stringBuffer2.append('\\');
                        } else if (i2 < 32 || i2 >= 127) {
                            stringBuffer2.append(String.format("\\%03o", Integer.valueOf(i2)));
                        }
                        stringBuffer2.append((char) i2);
                    }
                    stringBuffer2.append('\"');
                } else {
                    stringBuffer2.append(obj);
                }
                stringBuffer2.append(StringConstant.NEW_LINE);
                return;
            }
            int length2 = stringBuffer.length();
            if (str != null) {
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(zzl(str));
                stringBuffer2.append(" <\n");
                stringBuffer.append("  ");
            }
            Class<?> cls = obj.getClass();
            for (Field field : cls.getFields()) {
                int modifiers = field.getModifiers();
                String name = field.getName();
                if (!"cachedSize".equals(name) && (modifiers & 1) == 1 && (modifiers & 8) != 8 && !name.startsWith(AnalyticsConstants.DELIMITER_MAIN) && !name.endsWith(AnalyticsConstants.DELIMITER_MAIN)) {
                    Class<?> type = field.getType();
                    Object obj2 = field.get(obj);
                    if (!type.isArray() || type.getComponentType() == Byte.TYPE) {
                        zza(name, obj2, stringBuffer, stringBuffer2);
                    } else {
                        int length3 = obj2 == null ? 0 : Array.getLength(obj2);
                        for (int i3 = 0; i3 < length3; i3++) {
                            zza(name, Array.get(obj2, i3), stringBuffer, stringBuffer2);
                        }
                    }
                }
            }
            for (Method method : cls.getMethods()) {
                String name2 = method.getName();
                if (name2.startsWith("set")) {
                    String substring = name2.substring(3);
                    try {
                        String valueOf = String.valueOf(substring);
                        if (((Boolean) cls.getMethod(valueOf.length() != 0 ? "has".concat(valueOf) : new String("has"), new Class[0]).invoke(obj, new Object[0])).booleanValue()) {
                            String valueOf2 = String.valueOf(substring);
                            zza(substring, cls.getMethod(valueOf2.length() != 0 ? "get".concat(valueOf2) : new String("get"), new Class[0]).invoke(obj, new Object[0]), stringBuffer, stringBuffer2);
                        }
                    } catch (NoSuchMethodException e) {
                    }
                }
            }
            if (str == null) {
                return;
            }
            stringBuffer.setLength(length2);
            stringBuffer2.append(stringBuffer);
            stringBuffer2.append(">\n");
        }
    }

    private static String zzl(String str) {
        char c;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (i != 0) {
                c = charAt;
                if (Character.isUpperCase(charAt)) {
                    stringBuffer.append('_');
                }
                stringBuffer.append(c);
            }
            c = Character.toLowerCase(charAt);
            stringBuffer.append(c);
        }
        return stringBuffer.toString();
    }
}
