package com.zendesk.util;

import java.util.Locale;
import java.util.NavigableMap;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:com/zendesk/util/NumberFormatUtil.class */
public class NumberFormatUtil {
    private static long MILLION_PRECISION = 1000000;
    private static final NavigableMap<Long, NumberSuffix> SUFFIXES = new TreeMap();

    /* loaded from: classes2-dex2jar.jar:com/zendesk/util/NumberFormatUtil$NumberSuffix.class */
    public enum NumberSuffix {
        NONE(""),
        KILO("k"),
        MEGA("M"),
        GIGA("G"),
        TERA("T"),
        PETA("P"),
        EXA("E");
        
        private String suffix;

        NumberSuffix(String str) {
            this.suffix = str;
        }

        public String getSuffix() {
            return this.suffix;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/zendesk/util/NumberFormatUtil$SuffixFormatDelegate.class */
    public interface SuffixFormatDelegate {
        String getSuffix(NumberSuffix numberSuffix);
    }

    static {
        SUFFIXES.put(1000L, NumberSuffix.KILO);
        SUFFIXES.put(1000000L, NumberSuffix.MEGA);
        SUFFIXES.put(1000000000L, NumberSuffix.GIGA);
        SUFFIXES.put(1000000000000L, NumberSuffix.TERA);
        SUFFIXES.put(1000000000000000L, NumberSuffix.PETA);
        SUFFIXES.put(1000000000000000000L, NumberSuffix.EXA);
    }

    private NumberFormatUtil() {
    }

    public static String format(long j) {
        return processValue(j, null);
    }

    public static String format(long j, SuffixFormatDelegate suffixFormatDelegate) {
        return processValue(j, suffixFormatDelegate);
    }

    private static String formatValue(String str, NumberSuffix numberSuffix, SuffixFormatDelegate suffixFormatDelegate) {
        String suffix = numberSuffix.getSuffix();
        if (suffixFormatDelegate != null) {
            suffix = suffixFormatDelegate.getSuffix(numberSuffix);
        }
        return String.format(Locale.US, "%1$s%2$s", str, suffix);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r17v0, types: [double] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [double] */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String processValue(long r7, com.zendesk.util.NumberFormatUtil.SuffixFormatDelegate r9) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.zendesk.util.NumberFormatUtil.processValue(long, com.zendesk.util.NumberFormatUtil$SuffixFormatDelegate):java.lang.String");
    }

    private static String stringValue(double d) {
        return d % 1.0d == 0.0d ? String.format(Locale.US, "%1.0f", Double.valueOf(d)) : String.format(Locale.US, "%.1f", Double.valueOf(d));
    }
}
