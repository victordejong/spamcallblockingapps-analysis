package org.threeten.p040bp;

import com.apptentive.android.sdk.util.Constants;
import com.privacystar.core.util.DateUtil;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.cli.HelpFormatter;
import org.threeten.p040bp.format.DateTimeParseException;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.ChronoField;
import org.threeten.p040bp.temporal.ChronoUnit;
import org.threeten.p040bp.temporal.Temporal;
import org.threeten.p040bp.temporal.TemporalAmount;
import org.threeten.p040bp.temporal.TemporalUnit;
import org.threeten.p040bp.temporal.UnsupportedTemporalTypeException;
/* renamed from: org.threeten.bp.Duration */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/Duration.class */
public final class Duration implements TemporalAmount, Comparable<Duration>, Serializable {
    private static final int NANOS_PER_MILLI = 1000000;
    private static final int NANOS_PER_SECOND = 1000000000;
    private static final long serialVersionUID = 3078945930695997490L;
    private final int nanos;
    private final long seconds;
    public static final Duration ZERO = new Duration(0, 0);
    private static final BigInteger BI_NANOS_PER_SECOND = BigInteger.valueOf(1000000000);
    private static final Pattern PATTERN = Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?", 2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.Duration$1 */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/Duration$1.class */
    public static /* synthetic */ class C24881 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoUnit = new int[ChronoUnit.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private Duration(long j, int i) {
        this.seconds = j;
        this.nanos = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.threeten.p040bp.Duration between(org.threeten.p040bp.temporal.Temporal r6, org.threeten.p040bp.temporal.Temporal r7) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.Duration.between(org.threeten.bp.temporal.Temporal, org.threeten.bp.temporal.Temporal):org.threeten.bp.Duration");
    }

    private static Duration create(long j, int i) {
        return (((long) i) | j) == 0 ? ZERO : new Duration(j, i);
    }

    private static Duration create(BigDecimal bigDecimal) {
        BigInteger bigIntegerExact = bigDecimal.movePointRight(9).toBigIntegerExact();
        BigInteger[] divideAndRemainder = bigIntegerExact.divideAndRemainder(BI_NANOS_PER_SECOND);
        if (divideAndRemainder[0].bitLength() <= 63) {
            return ofSeconds(divideAndRemainder[0].longValue(), divideAndRemainder[1].intValue());
        }
        throw new ArithmeticException("Exceeds capacity of Duration: " + bigIntegerExact);
    }

    private static Duration create(boolean z, long j, long j2, long j3, long j4, int i) {
        long safeAdd = Jdk8Methods.safeAdd(j, Jdk8Methods.safeAdd(j2, Jdk8Methods.safeAdd(j3, j4)));
        return z ? ofSeconds(safeAdd, i).negated() : ofSeconds(safeAdd, i);
    }

    public static Duration from(TemporalAmount temporalAmount) {
        Jdk8Methods.requireNonNull(temporalAmount, "amount");
        Duration duration = ZERO;
        for (TemporalUnit temporalUnit : temporalAmount.getUnits()) {
            duration = duration.plus(temporalAmount.get(temporalUnit), temporalUnit);
        }
        return duration;
    }

    /* renamed from: of */
    public static Duration m92of(long j, TemporalUnit temporalUnit) {
        return ZERO.plus(j, temporalUnit);
    }

    public static Duration ofDays(long j) {
        return create(Jdk8Methods.safeMultiply(j, (int) Constants.CONFIG_DEFAULT_APP_CONFIG_EXPIRATION_DURATION_SECONDS), 0);
    }

    public static Duration ofHours(long j) {
        return create(Jdk8Methods.safeMultiply(j, 3600), 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [long] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.threeten.p040bp.Duration ofMillis(long r5) {
        /*
            r0 = r5
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 / r1
            r7 = r0
            r0 = r5
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 % r1
            int r0 = (int) r0
            r9 = r0
            r0 = r7
            r5 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 >= 0) goto L_0x0025
            r0 = r9
            r1 = 1000(0x3e8, float:1.401E-42)
            int r0 = r0 + r1
            r10 = r0
            r0 = r7
            r1 = 1
            long r0 = r0 - r1
            r5 = r0
        L_0x0025:
            r0 = r5
            r1 = r10
            r2 = 1000000(0xf4240, float:1.401298E-39)
            int r1 = r1 * r2
            org.threeten.bp.Duration r0 = create(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.Duration.ofMillis(long):org.threeten.bp.Duration");
    }

    public static Duration ofMinutes(long j) {
        return create(Jdk8Methods.safeMultiply(j, 60), 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [long] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.threeten.p040bp.Duration ofNanos(long r5) {
        /*
            r0 = r5
            r1 = 1000000000(0x3b9aca00, double:4.94065646E-315)
            long r0 = r0 / r1
            r7 = r0
            r0 = r5
            r1 = 1000000000(0x3b9aca00, double:4.94065646E-315)
            long r0 = r0 % r1
            int r0 = (int) r0
            r9 = r0
            r0 = r7
            r5 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            if (r0 >= 0) goto L_0x0024
            r0 = r9
            r1 = 1000000000(0x3b9aca00, float:0.0047237873)
            int r0 = r0 + r1
            r10 = r0
            r0 = r7
            r1 = 1
            long r0 = r0 - r1
            r5 = r0
        L_0x0024:
            r0 = r5
            r1 = r10
            org.threeten.bp.Duration r0 = create(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.Duration.ofNanos(long):org.threeten.bp.Duration");
    }

    public static Duration ofSeconds(long j) {
        return create(j, 0);
    }

    public static Duration ofSeconds(long j, long j2) {
        return create(Jdk8Methods.safeAdd(j, Jdk8Methods.floorDiv(j2, 1000000000L)), Jdk8Methods.floorMod(j2, (int) NANOS_PER_SECOND));
    }

    public static Duration parse(CharSequence charSequence) {
        Jdk8Methods.requireNonNull(charSequence, "text");
        Matcher matcher = PATTERN.matcher(charSequence);
        if (matcher.matches() && !"T".equals(matcher.group(3))) {
            int i = 1;
            boolean equals = HelpFormatter.DEFAULT_OPT_PREFIX.equals(matcher.group(1));
            String group = matcher.group(2);
            String group2 = matcher.group(4);
            String group3 = matcher.group(5);
            String group4 = matcher.group(6);
            String group5 = matcher.group(7);
            if (!(group == null && group2 == null && group3 == null && group4 == null)) {
                long parseNumber = parseNumber(charSequence, group, Constants.CONFIG_DEFAULT_APP_CONFIG_EXPIRATION_DURATION_SECONDS, "days");
                long parseNumber2 = parseNumber(charSequence, group2, 3600, "hours");
                long parseNumber3 = parseNumber(charSequence, group3, 60, "minutes");
                long parseNumber4 = parseNumber(charSequence, group4, 1, "seconds");
                if (group4 != null && group4.charAt(0) == '-') {
                    i = -1;
                }
                try {
                    return create(equals, parseNumber, parseNumber2, parseNumber3, parseNumber4, parseFraction(charSequence, group5, i));
                } catch (ArithmeticException e) {
                    throw ((DateTimeParseException) new DateTimeParseException("Text cannot be parsed to a Duration: overflow", charSequence, 0).initCause(e));
                }
            }
        }
        throw new DateTimeParseException("Text cannot be parsed to a Duration", charSequence, 0);
    }

    private static int parseFraction(CharSequence charSequence, String str, int i) {
        if (str == null || str.length() == 0) {
            return 0;
        }
        try {
            return Integer.parseInt((str + "000000000").substring(0, 9)) * i;
        } catch (ArithmeticException e) {
            throw ((DateTimeParseException) new DateTimeParseException("Text cannot be parsed to a Duration: fraction", charSequence, 0).initCause(e));
        } catch (NumberFormatException e2) {
            throw ((DateTimeParseException) new DateTimeParseException("Text cannot be parsed to a Duration: fraction", charSequence, 0).initCause(e2));
        }
    }

    private static long parseNumber(CharSequence charSequence, String str, int i, String str2) {
        if (str == null) {
            return 0L;
        }
        String str3 = str;
        try {
            if (str.startsWith("+")) {
                str3 = str.substring(1);
            }
            return Jdk8Methods.safeMultiply(Long.parseLong(str3), i);
        } catch (ArithmeticException e) {
            throw ((DateTimeParseException) new DateTimeParseException("Text cannot be parsed to a Duration: " + str2, charSequence, 0).initCause(e));
        } catch (NumberFormatException e2) {
            throw ((DateTimeParseException) new DateTimeParseException("Text cannot be parsed to a Duration: " + str2, charSequence, 0).initCause(e2));
        }
    }

    private Duration plus(long j, long j2) {
        return (j | j2) == 0 ? this : ofSeconds(Jdk8Methods.safeAdd(Jdk8Methods.safeAdd(this.seconds, j), j2 / 1000000000), this.nanos + (j2 % 1000000000));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Duration readExternal(DataInput dataInput) throws IOException {
        return ofSeconds(dataInput.readLong(), dataInput.readInt());
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private BigDecimal toSeconds() {
        return BigDecimal.valueOf(this.seconds).add(BigDecimal.valueOf(this.nanos, 9));
    }

    private Object writeReplace() {
        return new Ser((byte) 1, this);
    }

    public Duration abs() {
        return isNegative() ? negated() : this;
    }

    @Override // org.threeten.p040bp.temporal.TemporalAmount
    public Temporal addTo(Temporal temporal) {
        Temporal temporal2 = temporal;
        if (this.seconds != 0) {
            temporal2 = temporal.plus(this.seconds, ChronoUnit.SECONDS);
        }
        Temporal temporal3 = temporal2;
        if (this.nanos != 0) {
            temporal3 = temporal2.plus(this.nanos, ChronoUnit.NANOS);
        }
        return temporal3;
    }

    public int compareTo(Duration duration) {
        int compareLongs = Jdk8Methods.compareLongs(this.seconds, duration.seconds);
        return compareLongs != 0 ? compareLongs : this.nanos - duration.nanos;
    }

    public Duration dividedBy(long j) {
        if (j != 0) {
            return j == 1 ? this : create(toSeconds().divide(BigDecimal.valueOf(j), RoundingMode.DOWN));
        }
        throw new ArithmeticException("Cannot divide by zero");
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Duration)) {
            return false;
        }
        Duration duration = (Duration) obj;
        if (!(this.seconds == duration.seconds && this.nanos == duration.nanos)) {
            z = false;
        }
        return z;
    }

    @Override // org.threeten.p040bp.temporal.TemporalAmount
    public long get(TemporalUnit temporalUnit) {
        if (temporalUnit == ChronoUnit.SECONDS) {
            return this.seconds;
        }
        if (temporalUnit == ChronoUnit.NANOS) {
            return this.nanos;
        }
        throw new UnsupportedTemporalTypeException("Unsupported unit: " + temporalUnit);
    }

    public int getNano() {
        return this.nanos;
    }

    public long getSeconds() {
        return this.seconds;
    }

    @Override // org.threeten.p040bp.temporal.TemporalAmount
    public List<TemporalUnit> getUnits() {
        return Collections.unmodifiableList(Arrays.asList(ChronoUnit.SECONDS, ChronoUnit.NANOS));
    }

    public int hashCode() {
        return ((int) (this.seconds ^ (this.seconds >>> 32))) + (this.nanos * 51);
    }

    public boolean isNegative() {
        return this.seconds < 0;
    }

    public boolean isZero() {
        return (this.seconds | ((long) this.nanos)) == 0;
    }

    public Duration minus(long j, TemporalUnit temporalUnit) {
        return j == Long.MIN_VALUE ? plus(Long.MAX_VALUE, temporalUnit).plus(1L, temporalUnit) : plus(-j, temporalUnit);
    }

    public Duration minus(Duration duration) {
        long seconds = duration.getSeconds();
        int nano = duration.getNano();
        return seconds == Long.MIN_VALUE ? plus(Long.MAX_VALUE, -nano).plus(1L, 0L) : plus(-seconds, -nano);
    }

    public Duration minusDays(long j) {
        return j == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j);
    }

    public Duration minusHours(long j) {
        return j == Long.MIN_VALUE ? plusHours(Long.MAX_VALUE).plusHours(1L) : plusHours(-j);
    }

    public Duration minusMillis(long j) {
        return j == Long.MIN_VALUE ? plusMillis(Long.MAX_VALUE).plusMillis(1L) : plusMillis(-j);
    }

    public Duration minusMinutes(long j) {
        return j == Long.MIN_VALUE ? plusMinutes(Long.MAX_VALUE).plusMinutes(1L) : plusMinutes(-j);
    }

    public Duration minusNanos(long j) {
        return j == Long.MIN_VALUE ? plusNanos(Long.MAX_VALUE).plusNanos(1L) : plusNanos(-j);
    }

    public Duration minusSeconds(long j) {
        return j == Long.MIN_VALUE ? plusSeconds(Long.MAX_VALUE).plusSeconds(1L) : plusSeconds(-j);
    }

    public Duration multipliedBy(long j) {
        return j == 0 ? ZERO : j == 1 ? this : create(toSeconds().multiply(BigDecimal.valueOf(j)));
    }

    public Duration negated() {
        return multipliedBy(-1L);
    }

    public Duration plus(long j, TemporalUnit temporalUnit) {
        Jdk8Methods.requireNonNull(temporalUnit, "unit");
        if (temporalUnit == ChronoUnit.DAYS) {
            return plus(Jdk8Methods.safeMultiply(j, (int) Constants.CONFIG_DEFAULT_APP_CONFIG_EXPIRATION_DURATION_SECONDS), 0L);
        }
        if (temporalUnit.isDurationEstimated()) {
            throw new DateTimeException("Unit must not have an estimated duration");
        } else if (j == 0) {
            return this;
        } else {
            if (temporalUnit instanceof ChronoUnit) {
                switch (C24881.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((ChronoUnit) temporalUnit).ordinal()]) {
                    case 1:
                        return plusNanos(j);
                    case 2:
                        return plusSeconds((j / 1000000000) * 1000).plusNanos((j % 1000000000) * 1000);
                    case 3:
                        return plusMillis(j);
                    case 4:
                        return plusSeconds(j);
                    default:
                        return plusSeconds(Jdk8Methods.safeMultiply(temporalUnit.getDuration().seconds, j));
                }
            } else {
                Duration multipliedBy = temporalUnit.getDuration().multipliedBy(j);
                return plusSeconds(multipliedBy.getSeconds()).plusNanos(multipliedBy.getNano());
            }
        }
    }

    public Duration plus(Duration duration) {
        return plus(duration.getSeconds(), duration.getNano());
    }

    public Duration plusDays(long j) {
        return plus(Jdk8Methods.safeMultiply(j, (int) Constants.CONFIG_DEFAULT_APP_CONFIG_EXPIRATION_DURATION_SECONDS), 0L);
    }

    public Duration plusHours(long j) {
        return plus(Jdk8Methods.safeMultiply(j, 3600), 0L);
    }

    public Duration plusMillis(long j) {
        return plus(j / 1000, (j % 1000) * 1000000);
    }

    public Duration plusMinutes(long j) {
        return plus(Jdk8Methods.safeMultiply(j, 60), 0L);
    }

    public Duration plusNanos(long j) {
        return plus(0L, j);
    }

    public Duration plusSeconds(long j) {
        return plus(j, 0L);
    }

    @Override // org.threeten.p040bp.temporal.TemporalAmount
    public Temporal subtractFrom(Temporal temporal) {
        Temporal temporal2 = temporal;
        if (this.seconds != 0) {
            temporal2 = temporal.minus(this.seconds, ChronoUnit.SECONDS);
        }
        Temporal temporal3 = temporal2;
        if (this.nanos != 0) {
            temporal3 = temporal2.minus(this.nanos, ChronoUnit.NANOS);
        }
        return temporal3;
    }

    public long toDays() {
        return this.seconds / DateUtil.DAY_IN_SECONDS;
    }

    public long toHours() {
        return this.seconds / DateUtil.HOUR_IN_SECONDS;
    }

    public long toMillis() {
        return Jdk8Methods.safeAdd(Jdk8Methods.safeMultiply(this.seconds, 1000), this.nanos / NANOS_PER_MILLI);
    }

    public long toMinutes() {
        return this.seconds / 60;
    }

    public long toNanos() {
        return Jdk8Methods.safeAdd(Jdk8Methods.safeMultiply(this.seconds, (int) NANOS_PER_SECOND), this.nanos);
    }

    public String toString() {
        if (this == ZERO) {
            return "PT0S";
        }
        long j = this.seconds / DateUtil.HOUR_IN_SECONDS;
        int i = (int) ((this.seconds % DateUtil.HOUR_IN_SECONDS) / 60);
        int i2 = (int) (this.seconds % 60);
        StringBuilder sb = new StringBuilder(24);
        sb.append("PT");
        if (j != 0) {
            sb.append(j);
            sb.append('H');
        }
        if (i != 0) {
            sb.append(i);
            sb.append('M');
        }
        if (i2 == 0 && this.nanos == 0 && sb.length() > 2) {
            return sb.toString();
        }
        if (i2 >= 0 || this.nanos <= 0) {
            sb.append(i2);
        } else if (i2 == -1) {
            sb.append("-0");
        } else {
            sb.append(i2 + 1);
        }
        if (this.nanos > 0) {
            int length = sb.length();
            if (i2 < 0) {
                sb.append(2000000000 - this.nanos);
            } else {
                sb.append(this.nanos + NANOS_PER_SECOND);
            }
            while (sb.charAt(sb.length() - 1) == '0') {
                sb.setLength(sb.length() - 1);
            }
            sb.setCharAt(length, '.');
        }
        sb.append('S');
        return sb.toString();
    }

    public Duration withNanos(int i) {
        ChronoField.NANO_OF_SECOND.checkValidIntValue(i);
        return create(this.seconds, i);
    }

    public Duration withSeconds(long j) {
        return create(j, this.nanos);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeLong(this.seconds);
        dataOutput.writeInt(this.nanos);
    }
}
