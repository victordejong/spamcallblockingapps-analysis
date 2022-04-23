package com.explorestack.protobuf.ext;

import com.explorestack.protobuf.Duration;
import com.explorestack.protobuf.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/ext/Timestamps.class */
public final class Timestamps {
    static final long MILLIS_PER_SECOND = 1000;
    static final long NANOS_PER_MICROSECOND = 1000;
    static final long NANOS_PER_MILLISECOND = 1000000;
    static final long NANOS_PER_SECOND = 1000000000;
    static final long TIMESTAMP_SECONDS_MAX = 253402300799L;
    static final long TIMESTAMP_SECONDS_MIN = -62135596800L;
    private static final ThreadLocal<SimpleDateFormat> timestampFormat = new ThreadLocal<SimpleDateFormat>() { // from class: com.explorestack.protobuf.ext.Timestamps.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public final SimpleDateFormat initialValue() {
            return Timestamps.createTimestampFormat();
        }
    };

    private Timestamps() {
    }

    public static Timestamp add(Timestamp timestamp, Duration duration) {
        checkValid(timestamp);
        return normalizedTimestamp(checkedAdd(timestamp.getSeconds(), duration.getSeconds()), checkedAdd(timestamp.getNanos(), duration.getNanos()));
    }

    private static void checkNoOverflow(boolean z, String str, long j, long j2) {
        if (!z) {
            throw new ArithmeticException("overflow: " + str + "(" + j + ", " + j2 + ")");
        }
    }

    public static Timestamp checkValid(Timestamp.Builder builder) {
        return checkValid(builder.build());
    }

    public static Timestamp checkValid(Timestamp timestamp) {
        long seconds = timestamp.getSeconds();
        int nanos = timestamp.getNanos();
        if (isValid(seconds, nanos)) {
            return timestamp;
        }
        throw new IllegalArgumentException(String.format("Timestamp is not valid. See proto definition for valid values. Seconds (%s) must be in range [-62,135,596,800, +253,402,300,799]. Nanos (%s) must be in range [0, +999,999,999].", Long.valueOf(seconds), Integer.valueOf(nanos)));
    }

    private static int checkedAdd(long j, long j2) {
        long j3 = j + j2;
        int i = (int) j3;
        checkNoOverflow(j3 == ((long) i), "checkedAdd", j, j2);
        return i;
    }

    private static int checkedMultiply(long j, long j2) {
        long j3 = j * j2;
        int i = (int) j3;
        checkNoOverflow(j3 == ((long) i), "checkedMultiply", j, j2);
        return i;
    }

    private static int checkedSubtract(long j, long j2) {
        long j3 = j - j2;
        int i = (int) j3;
        checkNoOverflow(j3 == ((long) i), "checkedSubtract", j, j2);
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SimpleDateFormat createTimestampFormat() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.ENGLISH);
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("UTC"));
        gregorianCalendar.setGregorianChange(new Date(Long.MIN_VALUE));
        simpleDateFormat.setCalendar(gregorianCalendar);
        return simpleDateFormat;
    }

    private static String formatNanos(int i) {
        long j = i;
        return j % NANOS_PER_MILLISECOND == 0 ? String.format(Locale.ENGLISH, "%1$03d", Long.valueOf(j / NANOS_PER_MILLISECOND)) : j % 1000 == 0 ? String.format(Locale.ENGLISH, "%1$06d", Long.valueOf(j / 1000)) : String.format(Locale.ENGLISH, "%1$09d", Integer.valueOf(i));
    }

    public static Timestamp fromMillis(long j) {
        return normalizedTimestamp(j / 1000, (int) ((j % 1000) * NANOS_PER_MILLISECOND));
    }

    public static boolean isValid(long j, int i) {
        return j >= TIMESTAMP_SECONDS_MIN && j <= TIMESTAMP_SECONDS_MAX && i >= 0 && ((long) i) < NANOS_PER_SECOND;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
        if (r0 >= com.explorestack.protobuf.ext.Timestamps.NANOS_PER_SECOND) goto L_0x0016;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.explorestack.protobuf.Timestamp$Builder] */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.explorestack.protobuf.Timestamp normalizedTimestamp(long r7, int r9) {
        /*
            r0 = r9
            long r0 = (long) r0
            r10 = r0
            r0 = r10
            r1 = -1000000000(0xffffffffc4653600, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0016
            r0 = r7
            r12 = r0
            r0 = r10
            r1 = 1000000000(0x3b9aca00, double:4.94065646E-315)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0029
        L_0x0016:
            r0 = r7
            r1 = r10
            r2 = 1000000000(0x3b9aca00, double:4.94065646E-315)
            long r1 = r1 / r2
            int r0 = checkedAdd(r0, r1)
            long r0 = (long) r0
            r12 = r0
            r0 = r10
            r1 = 1000000000(0x3b9aca00, double:4.94065646E-315)
            long r0 = r0 % r1
            int r0 = (int) r0
            r9 = r0
        L_0x0029:
            r0 = r12
            r7 = r0
            r0 = r9
            r14 = r0
            r0 = r9
            if (r0 >= 0) goto L_0x0044
            r0 = r9
            long r0 = (long) r0
            r1 = 1000000000(0x3b9aca00, double:4.94065646E-315)
            long r0 = r0 + r1
            int r0 = (int) r0
            r14 = r0
            r0 = r12
            r1 = 1
            int r0 = checkedSubtract(r0, r1)
            long r0 = (long) r0
            r7 = r0
        L_0x0044:
            com.explorestack.protobuf.Timestamp$Builder r0 = com.explorestack.protobuf.Timestamp.newBuilder()
            r1 = r7
            com.explorestack.protobuf.Timestamp$Builder r0 = r0.setSeconds(r1)
            r1 = r14
            com.explorestack.protobuf.Timestamp$Builder r0 = r0.setNanos(r1)
            com.explorestack.protobuf.Timestamp r0 = r0.build()
            com.explorestack.protobuf.Timestamp r0 = checkValid(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.ext.Timestamps.normalizedTimestamp(long, int):com.explorestack.protobuf.Timestamp");
    }

    private static int parseNanos(String str) throws ParseException {
        int i = 0;
        for (int i2 = 0; i2 < 9; i2++) {
            int i3 = i * 10;
            i = i3;
            if (i2 < str.length()) {
                if (str.charAt(i2) < '0' || str.charAt(i2) > '9') {
                    throw new ParseException("Invalid nanoseconds.", 0);
                }
                i = i3 + (str.charAt(i2) - '0');
            }
        }
        return i;
    }

    private static long parseTimezoneOffset(String str) throws ParseException {
        int indexOf = str.indexOf(58);
        if (indexOf != -1) {
            return ((Long.parseLong(str.substring(0, indexOf)) * 60) + Long.parseLong(str.substring(indexOf + 1))) * 60;
        }
        throw new ParseException("Invalid offset value: ".concat(String.valueOf(str)), 0);
    }

    public static long toMillis(Timestamp timestamp) {
        checkValid(timestamp);
        return checkedAdd(checkedMultiply(timestamp.getSeconds(), 1000L), timestamp.getNanos() / NANOS_PER_MILLISECOND);
    }

    public static String toString(Timestamp timestamp) {
        checkValid(timestamp);
        long seconds = timestamp.getSeconds();
        int nanos = timestamp.getNanos();
        StringBuilder sb = new StringBuilder();
        sb.append(timestampFormat.get().format(new Date(seconds * 1000)));
        if (nanos != 0) {
            sb.append(".");
            sb.append(formatNanos(nanos));
        }
        sb.append("Z");
        return sb.toString();
    }
}
