package org.threeten.p040bp.chrono;

import com.privacystar.core.service.analytics.p009fo.FOAnalyticsConstants;
import java.io.BufferedReader;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.text.ParseException;
import java.util.HashMap;
import java.util.StringTokenizer;
import org.threeten.p040bp.Clock;
import org.threeten.p040bp.DateTimeException;
import org.threeten.p040bp.DayOfWeek;
import org.threeten.p040bp.LocalDate;
import org.threeten.p040bp.LocalTime;
import org.threeten.p040bp.ZoneId;
import org.threeten.p040bp.jdk8.Jdk8Methods;
import org.threeten.p040bp.temporal.ChronoField;
import org.threeten.p040bp.temporal.Temporal;
import org.threeten.p040bp.temporal.TemporalAccessor;
import org.threeten.p040bp.temporal.TemporalAdjuster;
import org.threeten.p040bp.temporal.TemporalAmount;
import org.threeten.p040bp.temporal.TemporalField;
import org.threeten.p040bp.temporal.TemporalUnit;
import org.threeten.p040bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.p040bp.temporal.ValueRange;
/* renamed from: org.threeten.bp.chrono.HijrahDate */
/* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/HijrahDate.class */
public final class HijrahDate extends ChronoDateImpl<HijrahDate> implements Serializable {
    private static final Long[] ADJUSTED_CYCLES;
    private static final Integer[] ADJUSTED_LEAST_MAX_VALUES;
    private static final Integer[] ADJUSTED_MAX_VALUES;
    private static final Integer[] ADJUSTED_MIN_VALUES;
    private static final String DEFAULT_CONFIG_FILENAME = "hijrah_deviation.cfg";
    private static final Integer[] DEFAULT_CYCLE_YEARS;
    private static final Integer[] DEFAULT_LEAP_MONTH_DAYS;
    private static final Integer[] DEFAULT_LEAP_MONTH_LENGTHS;
    private static final Integer[] DEFAULT_MONTH_LENGTHS;
    private static final int HIJRAH_JAN_1_1_GREGORIAN_DAY = -492148;
    private static final int MAX_ADJUSTED_CYCLE = 334;
    public static final int MIN_VALUE_OF_ERA = 1;
    private static final int POSITION_DAY_OF_MONTH = 5;
    private static final int POSITION_DAY_OF_YEAR = 6;
    private static final long serialVersionUID = -5207853542612002020L;
    private final transient int dayOfMonth;
    private final transient DayOfWeek dayOfWeek;
    private final transient int dayOfYear;
    private final transient HijrahEra era;
    private final long gregorianEpochDay;
    private final transient boolean isLeapYear;
    private final transient int monthOfYear;
    private final transient int yearOfEra;
    private static final int[] NUM_DAYS = {0, 30, 59, 89, 118, 148, 177, 207, 236, 266, 295, 325};
    private static final int[] LEAP_NUM_DAYS = {0, 30, 59, 89, 118, 148, 177, 207, 236, 266, 295, 325};
    private static final int[] MONTH_LENGTH = {30, 29, 30, 29, 30, 29, 30, 29, 30, 29, 30, 29};
    private static final int[] LEAP_MONTH_LENGTH = {30, 29, 30, 29, 30, 29, 30, 29, 30, 29, 30, 30};
    private static final int[] MIN_VALUES = {0, 1, 0, 1, 0, 1, 1};
    public static final int MAX_VALUE_OF_ERA = 9999;
    private static final int[] LEAST_MAX_VALUES = {1, MAX_VALUE_OF_ERA, 11, 51, 5, 29, 354};
    private static final int[] MAX_VALUES = {1, MAX_VALUE_OF_ERA, 11, 52, 6, 30, 355};
    private static final int[] CYCLEYEAR_START_DATE = {0, 354, 709, FOAnalyticsConstants.PERMISSIONS_MANAGE_CALLS_DENY, 1417, 1772, 2126, 2481, 2835, 3189, 3544, 3898, 4252, 4607, 4961, 5315, 5670, 6024, 6379, 6733, 7087, 7442, 7796, 8150, 8505, 8859, 9214, 9568, 9922, 10277};
    private static final char FILE_SEP = File.separatorChar;
    private static final String PATH_SEP = File.pathSeparator;
    private static final String DEFAULT_CONFIG_PATH = "org" + FILE_SEP + "threeten" + FILE_SEP + "bp" + FILE_SEP + "chrono";
    private static final HashMap<Integer, Integer[]> ADJUSTED_MONTH_DAYS = new HashMap<>();
    private static final HashMap<Integer, Integer[]> ADJUSTED_MONTH_LENGTHS = new HashMap<>();
    private static final HashMap<Integer, Integer[]> ADJUSTED_CYCLE_YEARS = new HashMap<>();
    private static final Integer[] DEFAULT_MONTH_DAYS = new Integer[NUM_DAYS.length];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.threeten.bp.chrono.HijrahDate$1 */
    /* loaded from: classes3-dex2jar.jar:org/threeten/bp/chrono/HijrahDate$1.class */
    public static /* synthetic */ class C25241 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField = new int[ChronoField.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:49:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:43:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:61:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:53:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:47:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:41:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:59:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:51:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:45:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:39:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:57:0x0088). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.DAY_OF_YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.YEAR_OF_ERA.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.DAY_OF_WEEK.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.EPOCH_DAY.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ALIGNED_WEEK_OF_YEAR.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.MONTH_OF_YEAR.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.YEAR.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ERA.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    static {
        for (int i = 0; i < NUM_DAYS.length; i++) {
            DEFAULT_MONTH_DAYS[i] = new Integer(NUM_DAYS[i]);
        }
        DEFAULT_LEAP_MONTH_DAYS = new Integer[LEAP_NUM_DAYS.length];
        for (int i2 = 0; i2 < LEAP_NUM_DAYS.length; i2++) {
            DEFAULT_LEAP_MONTH_DAYS[i2] = new Integer(LEAP_NUM_DAYS[i2]);
        }
        DEFAULT_MONTH_LENGTHS = new Integer[MONTH_LENGTH.length];
        for (int i3 = 0; i3 < MONTH_LENGTH.length; i3++) {
            DEFAULT_MONTH_LENGTHS[i3] = new Integer(MONTH_LENGTH[i3]);
        }
        DEFAULT_LEAP_MONTH_LENGTHS = new Integer[LEAP_MONTH_LENGTH.length];
        for (int i4 = 0; i4 < LEAP_MONTH_LENGTH.length; i4++) {
            DEFAULT_LEAP_MONTH_LENGTHS[i4] = new Integer(LEAP_MONTH_LENGTH[i4]);
        }
        DEFAULT_CYCLE_YEARS = new Integer[CYCLEYEAR_START_DATE.length];
        for (int i5 = 0; i5 < CYCLEYEAR_START_DATE.length; i5++) {
            DEFAULT_CYCLE_YEARS[i5] = new Integer(CYCLEYEAR_START_DATE[i5]);
        }
        ADJUSTED_CYCLES = new Long[MAX_ADJUSTED_CYCLE];
        for (int i6 = 0; i6 < ADJUSTED_CYCLES.length; i6++) {
            ADJUSTED_CYCLES[i6] = new Long(i6 * 10631);
        }
        ADJUSTED_MIN_VALUES = new Integer[MIN_VALUES.length];
        for (int i7 = 0; i7 < MIN_VALUES.length; i7++) {
            ADJUSTED_MIN_VALUES[i7] = new Integer(MIN_VALUES[i7]);
        }
        ADJUSTED_LEAST_MAX_VALUES = new Integer[LEAST_MAX_VALUES.length];
        for (int i8 = 0; i8 < LEAST_MAX_VALUES.length; i8++) {
            ADJUSTED_LEAST_MAX_VALUES[i8] = new Integer(LEAST_MAX_VALUES[i8]);
        }
        ADJUSTED_MAX_VALUES = new Integer[MAX_VALUES.length];
        for (int i9 = 0; i9 < MAX_VALUES.length; i9++) {
            ADJUSTED_MAX_VALUES[i9] = new Integer(MAX_VALUES[i9]);
        }
        try {
            readDeviationConfig();
        } catch (IOException | ParseException e) {
        }
    }

    private HijrahDate(long j) {
        int[] hijrahDateInfo = getHijrahDateInfo(j);
        checkValidYearOfEra(hijrahDateInfo[1]);
        checkValidMonth(hijrahDateInfo[2]);
        checkValidDayOfMonth(hijrahDateInfo[3]);
        checkValidDayOfYear(hijrahDateInfo[4]);
        this.era = HijrahEra.m56of(hijrahDateInfo[0]);
        this.yearOfEra = hijrahDateInfo[1];
        this.monthOfYear = hijrahDateInfo[2];
        this.dayOfMonth = hijrahDateInfo[3];
        this.dayOfYear = hijrahDateInfo[4];
        this.dayOfWeek = DayOfWeek.m93of(hijrahDateInfo[5]);
        this.gregorianEpochDay = j;
        this.isLeapYear = isLeapYear(this.yearOfEra);
    }

    private static void addDeviationAsHijrah(int i, int i2, int i3, int i4, int i5) {
        if (i < 1) {
            throw new IllegalArgumentException("startYear < 1");
        } else if (i3 < 1) {
            throw new IllegalArgumentException("endYear < 1");
        } else if (i2 < 0 || i2 > 11) {
            throw new IllegalArgumentException("startMonth < 0 || startMonth > 11");
        } else if (i4 < 0 || i4 > 11) {
            throw new IllegalArgumentException("endMonth < 0 || endMonth > 11");
        } else if (i3 > 9999) {
            throw new IllegalArgumentException("endYear > 9999");
        } else if (i3 < i) {
            throw new IllegalArgumentException("startYear > endYear");
        } else if (i3 != i || i4 >= i2) {
            boolean isLeapYear = isLeapYear(i);
            Integer[] numArr = ADJUSTED_MONTH_DAYS.get(new Integer(i));
            Integer[] numArr2 = numArr;
            if (numArr == null) {
                if (!isLeapYear) {
                    Integer[] numArr3 = new Integer[NUM_DAYS.length];
                    int i6 = 0;
                    while (true) {
                        numArr2 = numArr3;
                        if (i6 >= NUM_DAYS.length) {
                            break;
                        }
                        numArr3[i6] = new Integer(NUM_DAYS[i6]);
                        i6++;
                    }
                } else {
                    Integer[] numArr4 = new Integer[LEAP_NUM_DAYS.length];
                    int i7 = 0;
                    while (true) {
                        numArr2 = numArr4;
                        if (i7 >= LEAP_NUM_DAYS.length) {
                            break;
                        }
                        numArr4[i7] = new Integer(LEAP_NUM_DAYS[i7]);
                        i7++;
                    }
                }
            }
            Integer[] numArr5 = new Integer[numArr2.length];
            for (int i8 = 0; i8 < 12; i8++) {
                if (i8 > i2) {
                    numArr5[i8] = new Integer(numArr2[i8].intValue() - i5);
                } else {
                    numArr5[i8] = new Integer(numArr2[i8].intValue());
                }
            }
            ADJUSTED_MONTH_DAYS.put(new Integer(i), numArr5);
            Integer[] numArr6 = ADJUSTED_MONTH_LENGTHS.get(new Integer(i));
            Integer[] numArr7 = numArr6;
            if (numArr6 == null) {
                if (!isLeapYear) {
                    Integer[] numArr8 = new Integer[MONTH_LENGTH.length];
                    int i9 = 0;
                    while (true) {
                        numArr7 = numArr8;
                        if (i9 >= MONTH_LENGTH.length) {
                            break;
                        }
                        numArr8[i9] = new Integer(MONTH_LENGTH[i9]);
                        i9++;
                    }
                } else {
                    Integer[] numArr9 = new Integer[LEAP_MONTH_LENGTH.length];
                    int i10 = 0;
                    while (true) {
                        numArr7 = numArr9;
                        if (i10 >= LEAP_MONTH_LENGTH.length) {
                            break;
                        }
                        numArr9[i10] = new Integer(LEAP_MONTH_LENGTH[i10]);
                        i10++;
                    }
                }
            }
            Integer[] numArr10 = new Integer[numArr7.length];
            for (int i11 = 0; i11 < 12; i11++) {
                if (i11 == i2) {
                    numArr10[i11] = new Integer(numArr7[i11].intValue() - i5);
                } else {
                    numArr10[i11] = new Integer(numArr7[i11].intValue());
                }
            }
            ADJUSTED_MONTH_LENGTHS.put(new Integer(i), numArr10);
            if (i != i3) {
                int i12 = i - 1;
                int i13 = i12 / 30;
                Integer[] numArr11 = ADJUSTED_CYCLE_YEARS.get(new Integer(i13));
                Integer[] numArr12 = numArr11;
                if (numArr11 == null) {
                    Integer[] numArr13 = new Integer[CYCLEYEAR_START_DATE.length];
                    int i14 = 0;
                    while (true) {
                        numArr12 = numArr13;
                        if (i14 >= numArr13.length) {
                            break;
                        }
                        numArr13[i14] = new Integer(CYCLEYEAR_START_DATE[i14]);
                        i14++;
                    }
                }
                for (int i15 = (i12 % 30) + 1; i15 < CYCLEYEAR_START_DATE.length; i15++) {
                    numArr12[i15] = new Integer(numArr12[i15].intValue() - i5);
                }
                ADJUSTED_CYCLE_YEARS.put(new Integer(i13), numArr12);
                int i16 = i3 - 1;
                int i17 = i16 / 30;
                int i18 = i17;
                if (i13 != i17) {
                    for (int i19 = i13 + 1; i19 < ADJUSTED_CYCLES.length; i19++) {
                        ADJUSTED_CYCLES[i19] = new Long(ADJUSTED_CYCLES[i19].longValue() - i5);
                    }
                    int i20 = i17 + 1;
                    while (true) {
                        i18 = i17;
                        if (i20 >= ADJUSTED_CYCLES.length) {
                            break;
                        }
                        ADJUSTED_CYCLES[i20] = new Long(ADJUSTED_CYCLES[i20].longValue() + i5);
                        i20++;
                    }
                }
                Integer[] numArr14 = ADJUSTED_CYCLE_YEARS.get(new Integer(i18));
                Integer[] numArr15 = numArr14;
                if (numArr14 == null) {
                    Integer[] numArr16 = new Integer[CYCLEYEAR_START_DATE.length];
                    int i21 = 0;
                    while (true) {
                        numArr15 = numArr16;
                        if (i21 >= numArr16.length) {
                            break;
                        }
                        numArr16[i21] = new Integer(CYCLEYEAR_START_DATE[i21]);
                        i21++;
                    }
                }
                for (int i22 = (i16 % 30) + 1; i22 < CYCLEYEAR_START_DATE.length; i22++) {
                    numArr15[i22] = new Integer(numArr15[i22].intValue() + i5);
                }
                ADJUSTED_CYCLE_YEARS.put(new Integer(i18), numArr15);
            }
            boolean isLeapYear2 = isLeapYear(i3);
            Integer[] numArr17 = ADJUSTED_MONTH_DAYS.get(new Integer(i3));
            Integer[] numArr18 = numArr17;
            if (numArr17 == null) {
                if (!isLeapYear2) {
                    Integer[] numArr19 = new Integer[NUM_DAYS.length];
                    int i23 = 0;
                    while (true) {
                        numArr18 = numArr19;
                        if (i23 >= NUM_DAYS.length) {
                            break;
                        }
                        numArr19[i23] = new Integer(NUM_DAYS[i23]);
                        i23++;
                    }
                } else {
                    Integer[] numArr20 = new Integer[LEAP_NUM_DAYS.length];
                    int i24 = 0;
                    while (true) {
                        numArr18 = numArr20;
                        if (i24 >= LEAP_NUM_DAYS.length) {
                            break;
                        }
                        numArr20[i24] = new Integer(LEAP_NUM_DAYS[i24]);
                        i24++;
                    }
                }
            }
            Integer[] numArr21 = new Integer[numArr18.length];
            for (int i25 = 0; i25 < 12; i25++) {
                if (i25 > i4) {
                    numArr21[i25] = new Integer(numArr18[i25].intValue() + i5);
                } else {
                    numArr21[i25] = new Integer(numArr18[i25].intValue());
                }
            }
            ADJUSTED_MONTH_DAYS.put(new Integer(i3), numArr21);
            Integer[] numArr22 = ADJUSTED_MONTH_LENGTHS.get(new Integer(i3));
            Integer[] numArr23 = numArr22;
            if (numArr22 == null) {
                if (!isLeapYear2) {
                    Integer[] numArr24 = new Integer[MONTH_LENGTH.length];
                    int i26 = 0;
                    while (true) {
                        numArr23 = numArr24;
                        if (i26 >= MONTH_LENGTH.length) {
                            break;
                        }
                        numArr24[i26] = new Integer(MONTH_LENGTH[i26]);
                        i26++;
                    }
                } else {
                    Integer[] numArr25 = new Integer[LEAP_MONTH_LENGTH.length];
                    int i27 = 0;
                    while (true) {
                        numArr23 = numArr25;
                        if (i27 >= LEAP_MONTH_LENGTH.length) {
                            break;
                        }
                        numArr25[i27] = new Integer(LEAP_MONTH_LENGTH[i27]);
                        i27++;
                    }
                }
            }
            Integer[] numArr26 = new Integer[numArr23.length];
            for (int i28 = 0; i28 < 12; i28++) {
                if (i28 == i4) {
                    numArr26[i28] = new Integer(numArr23[i28].intValue() + i5);
                } else {
                    numArr26[i28] = new Integer(numArr23[i28].intValue());
                }
            }
            ADJUSTED_MONTH_LENGTHS.put(new Integer(i3), numArr26);
            Integer[] numArr27 = ADJUSTED_MONTH_LENGTHS.get(new Integer(i));
            Integer[] numArr28 = ADJUSTED_MONTH_LENGTHS.get(new Integer(i3));
            Integer[] numArr29 = ADJUSTED_MONTH_DAYS.get(new Integer(i));
            Integer[] numArr30 = ADJUSTED_MONTH_DAYS.get(new Integer(i3));
            int intValue = numArr27[i2].intValue();
            int intValue2 = numArr28[i4].intValue();
            int intValue3 = numArr29[11].intValue() + numArr27[11].intValue();
            int intValue4 = numArr30[11].intValue() + numArr28[11].intValue();
            int intValue5 = ADJUSTED_MAX_VALUES[5].intValue();
            int intValue6 = ADJUSTED_LEAST_MAX_VALUES[5].intValue();
            int i29 = intValue5;
            if (intValue5 < intValue) {
                i29 = intValue;
            }
            int i30 = i29;
            if (i29 < intValue2) {
                i30 = intValue2;
            }
            ADJUSTED_MAX_VALUES[5] = new Integer(i30);
            int i31 = intValue6 > intValue ? intValue : intValue6;
            int i32 = i31;
            if (i31 > intValue2) {
                i32 = intValue2;
            }
            ADJUSTED_LEAST_MAX_VALUES[5] = new Integer(i32);
            int intValue7 = ADJUSTED_MAX_VALUES[6].intValue();
            int intValue8 = ADJUSTED_LEAST_MAX_VALUES[6].intValue();
            int i33 = intValue7;
            if (intValue7 < intValue3) {
                i33 = intValue3;
            }
            int i34 = i33;
            if (i33 < intValue4) {
                i34 = intValue4;
            }
            ADJUSTED_MAX_VALUES[6] = new Integer(i34);
            int i35 = intValue8 > intValue3 ? intValue3 : intValue8;
            int i36 = i35;
            if (i35 > intValue4) {
                i36 = intValue4;
            }
            ADJUSTED_LEAST_MAX_VALUES[6] = new Integer(i36);
        } else {
            throw new IllegalArgumentException("startYear == endYear && endMonth < startMonth");
        }
    }

    private static void checkValidDayOfMonth(int i) {
        if (i < 1 || i > getMaximumDayOfMonth()) {
            throw new DateTimeException("Invalid day of month of Hijrah date, day " + i + " greater than " + getMaximumDayOfMonth() + " or less than 1");
        }
    }

    private static void checkValidDayOfYear(int i) {
        if (i < 1 || i > getMaximumDayOfYear()) {
            throw new DateTimeException("Invalid day of year of Hijrah date");
        }
    }

    private static void checkValidMonth(int i) {
        if (i < 1 || i > 12) {
            throw new DateTimeException("Invalid month of Hijrah date");
        }
    }

    private static void checkValidYearOfEra(int i) {
        if (i < 1 || i > 9999) {
            throw new DateTimeException("Invalid year of Hijrah Era");
        }
    }

    public static HijrahDate from(TemporalAccessor temporalAccessor) {
        return HijrahChronology.INSTANCE.date(temporalAccessor);
    }

    private static Integer[] getAdjustedCycle(int i) {
        Integer[] numArr;
        try {
            numArr = ADJUSTED_CYCLE_YEARS.get(new Integer(i));
        } catch (ArrayIndexOutOfBoundsException e) {
            numArr = null;
        }
        Integer[] numArr2 = numArr;
        if (numArr == null) {
            numArr2 = DEFAULT_CYCLE_YEARS;
        }
        return numArr2;
    }

    private static Integer[] getAdjustedMonthDays(int i) {
        Integer[] numArr;
        try {
            numArr = ADJUSTED_MONTH_DAYS.get(new Integer(i));
        } catch (ArrayIndexOutOfBoundsException e) {
            numArr = null;
        }
        Integer[] numArr2 = numArr;
        if (numArr == null) {
            numArr2 = isLeapYear((long) i) ? DEFAULT_LEAP_MONTH_DAYS : DEFAULT_MONTH_DAYS;
        }
        return numArr2;
    }

    private static Integer[] getAdjustedMonthLength(int i) {
        Integer[] numArr;
        try {
            numArr = ADJUSTED_MONTH_LENGTHS.get(new Integer(i));
        } catch (ArrayIndexOutOfBoundsException e) {
            numArr = null;
        }
        Integer[] numArr2 = numArr;
        if (numArr == null) {
            numArr2 = isLeapYear((long) i) ? DEFAULT_LEAP_MONTH_LENGTHS : DEFAULT_MONTH_LENGTHS;
        }
        return numArr2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002e, code lost:
        if (r0.endsWith(java.lang.System.getProperty("file.separator")) == false) goto L_0x0031;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.io.InputStream getConfigFileInputStream() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.threeten.p040bp.chrono.HijrahDate.getConfigFileInputStream():java.io.InputStream");
    }

    private static int getCycleNumber(long j) {
        int i;
        Long[] lArr = ADJUSTED_CYCLES;
        for (int i2 = 0; i2 < lArr.length; i2++) {
            try {
                if (j < lArr[i2].longValue()) {
                    return i2 - 1;
                }
            } catch (ArrayIndexOutOfBoundsException e) {
                i = ((int) j) / 10631;
            }
        }
        i = ((int) j) / 10631;
        return i;
    }

    private static int getDayOfCycle(long j, int i) {
        Long l;
        try {
            l = ADJUSTED_CYCLES[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            l = null;
        }
        Long l2 = l;
        if (l == null) {
            l2 = new Long(i * 10631);
        }
        return (int) (j - l2.longValue());
    }

    private static int getDayOfMonth(int i, int i2, int i3) {
        Integer[] adjustedMonthDays = getAdjustedMonthDays(i3);
        if (i >= 0) {
            return i2 > 0 ? i - adjustedMonthDays[i2].intValue() : i;
        }
        int i4 = isLeapYear((long) i3) ? i + 355 : i + 354;
        return i2 > 0 ? i4 - adjustedMonthDays[i2].intValue() : i4;
    }

    private static int getDayOfYear(int i, int i2, int i3) {
        Integer[] adjustedCycle = getAdjustedCycle(i);
        return i2 > 0 ? i2 - adjustedCycle[i3].intValue() : adjustedCycle[i3].intValue() + i2;
    }

    private static long getGregorianEpochDay(int i, int i2, int i3) {
        return yearToGregorianEpochDay(i) + getMonthDays(i2 - 1, i) + i3;
    }

    private static int[] getHijrahDateInfo(long j) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        long j2 = j + 492148;
        if (j2 >= 0) {
            int cycleNumber = getCycleNumber(j2);
            int dayOfCycle = getDayOfCycle(j2, cycleNumber);
            int yearInCycle = getYearInCycle(cycleNumber, dayOfCycle);
            i4 = getDayOfYear(cycleNumber, dayOfCycle, yearInCycle);
            i2 = (cycleNumber * 30) + yearInCycle + 1;
            i5 = getMonthOfYear(i4, i2);
            i3 = getDayOfMonth(i4, i5, i2) + 1;
            i = HijrahEra.AH.getValue();
        } else {
            int i6 = (int) j2;
            int i7 = i6 / 10631;
            int i8 = i6 % 10631;
            int i9 = i8;
            int i10 = i7;
            if (i8 == 0) {
                i9 = -10631;
                i10 = i7 + 1;
            }
            int yearInCycle2 = getYearInCycle(i10, i9);
            int dayOfYear = getDayOfYear(i10, i9, yearInCycle2);
            i2 = 1 - ((i10 * 30) - yearInCycle2);
            int i11 = isLeapYear((long) i2) ? dayOfYear + 355 : dayOfYear + 354;
            i5 = getMonthOfYear(i11, i2);
            i3 = getDayOfMonth(i11, i5, i2) + 1;
            i = HijrahEra.BEFORE_AH.getValue();
            i4 = i11;
        }
        int i12 = (int) ((j2 + 5) % 7);
        return new int[]{i, i2, i5 + 1, i3, i4 + 1, i12 + (i12 <= 0 ? 7 : 0)};
    }

    static int getMaximumDayOfMonth() {
        return ADJUSTED_MAX_VALUES[5].intValue();
    }

    static int getMaximumDayOfYear() {
        return ADJUSTED_MAX_VALUES[6].intValue();
    }

    private static int getMonthDays(int i, int i2) {
        return getAdjustedMonthDays(i2)[i].intValue();
    }

    static int getMonthLength(int i, int i2) {
        return getAdjustedMonthLength(i2)[i].intValue();
    }

    private static int getMonthOfYear(int i, int i2) {
        int i3;
        int i4;
        Integer[] adjustedMonthDays = getAdjustedMonthDays(i2);
        if (i >= 0) {
            for (int i5 = 0; i5 < adjustedMonthDays.length; i5++) {
                if (i < adjustedMonthDays[i5].intValue()) {
                    return i5 - 1;
                }
            }
            return 11;
        }
        if (isLeapYear(i2)) {
            i4 = i + 355;
            i3 = 0;
        } else {
            i4 = i + 354;
            i3 = 0;
        }
        while (i3 < adjustedMonthDays.length) {
            if (i4 < adjustedMonthDays[i3].intValue()) {
                return i3 - 1;
            }
            i3++;
        }
        return 11;
    }

    static int getSmallestMaximumDayOfMonth() {
        return ADJUSTED_LEAST_MAX_VALUES[5].intValue();
    }

    static int getSmallestMaximumDayOfYear() {
        return ADJUSTED_LEAST_MAX_VALUES[6].intValue();
    }

    private static int getYearInCycle(int i, long j) {
        Integer[] adjustedCycle = getAdjustedCycle(i);
        int i2 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i2 == 0) {
            return 0;
        }
        if (i2 > 0) {
            for (int i3 = 0; i3 < adjustedCycle.length; i3++) {
                if (j < adjustedCycle[i3].intValue()) {
                    return i3 - 1;
                }
            }
            return 29;
        }
        long j2 = -j;
        for (int i4 = 0; i4 < adjustedCycle.length; i4++) {
            if (j2 <= adjustedCycle[i4].intValue()) {
                return i4 - 1;
            }
        }
        return 29;
    }

    static int getYearLength(int i) {
        Integer[] numArr;
        int i2 = i - 1;
        int i3 = i2 / 30;
        try {
            numArr = ADJUSTED_CYCLE_YEARS.get(Integer.valueOf(i3));
        } catch (ArrayIndexOutOfBoundsException e) {
            numArr = null;
        }
        if (numArr != null) {
            int i4 = i2 % 30;
            return i4 == 29 ? (ADJUSTED_CYCLES[i3 + 1].intValue() - ADJUSTED_CYCLES[i3].intValue()) - numArr[i4].intValue() : numArr[i4 + 1].intValue() - numArr[i4].intValue();
        }
        return isLeapYear((long) i) ? 355 : 354;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isLeapYear(long j) {
        if (j <= 0) {
            j = -j;
        }
        return ((j * 11) + 14) % 30 < 11;
    }

    public static HijrahDate now() {
        return now(Clock.systemDefaultZone());
    }

    public static HijrahDate now(Clock clock) {
        return HijrahChronology.INSTANCE.dateNow(clock);
    }

    public static HijrahDate now(ZoneId zoneId) {
        return now(Clock.system(zoneId));
    }

    /* renamed from: of */
    public static HijrahDate m59of(int i, int i2, int i3) {
        return i >= 1 ? m57of(HijrahEra.AH, i, i2, i3) : m57of(HijrahEra.BEFORE_AH, 1 - i, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: of */
    public static HijrahDate m58of(LocalDate localDate) {
        return new HijrahDate(localDate.toEpochDay());
    }

    /* renamed from: of */
    static HijrahDate m57of(HijrahEra hijrahEra, int i, int i2, int i3) {
        Jdk8Methods.requireNonNull(hijrahEra, "era");
        checkValidYearOfEra(i);
        checkValidMonth(i2);
        checkValidDayOfMonth(i3);
        return new HijrahDate(getGregorianEpochDay(hijrahEra.prolepticYear(i), i2, i3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HijrahDate ofEpochDay(long j) {
        return new HijrahDate(j);
    }

    private static void parseLine(String str, int i) throws ParseException {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ";");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            int indexOf = nextToken.indexOf(58);
            if (indexOf != -1) {
                try {
                    int parseInt = Integer.parseInt(nextToken.substring(indexOf + 1, nextToken.length()));
                    int indexOf2 = nextToken.indexOf(45);
                    if (indexOf2 != -1) {
                        String substring = nextToken.substring(0, indexOf2);
                        String substring2 = nextToken.substring(indexOf2 + 1, indexOf);
                        int indexOf3 = substring.indexOf(47);
                        int indexOf4 = substring2.indexOf(47);
                        if (indexOf3 != -1) {
                            String substring3 = substring.substring(0, indexOf3);
                            String substring4 = substring.substring(indexOf3 + 1, substring.length());
                            try {
                                int parseInt2 = Integer.parseInt(substring3);
                                try {
                                    int parseInt3 = Integer.parseInt(substring4);
                                    if (indexOf4 != -1) {
                                        String substring5 = substring2.substring(0, indexOf4);
                                        String substring6 = substring2.substring(indexOf4 + 1, substring2.length());
                                        try {
                                            int parseInt4 = Integer.parseInt(substring5);
                                            try {
                                                int parseInt5 = Integer.parseInt(substring6);
                                                if (parseInt2 == -1 || parseInt3 == -1 || parseInt4 == -1 || parseInt5 == -1) {
                                                    throw new ParseException("Unknown error at line " + i + ".", i);
                                                }
                                                addDeviationAsHijrah(parseInt2, parseInt3, parseInt4, parseInt5, parseInt);
                                            } catch (NumberFormatException e) {
                                                throw new ParseException("End month is not properly set at line " + i + ".", i);
                                            }
                                        } catch (NumberFormatException e2) {
                                            throw new ParseException("End year is not properly set at line " + i + ".", i);
                                        }
                                    } else {
                                        throw new ParseException("End year/month has incorrect format at line " + i + ".", i);
                                    }
                                } catch (NumberFormatException e3) {
                                    throw new ParseException("Start month is not properly set at line " + i + ".", i);
                                }
                            } catch (NumberFormatException e4) {
                                throw new ParseException("Start year is not properly set at line " + i + ".", i);
                            }
                        } else {
                            throw new ParseException("Start year/month has incorrect format at line " + i + ".", i);
                        }
                    } else {
                        throw new ParseException("Start and end year/month has incorrect format at line " + i + ".", i);
                    }
                } catch (NumberFormatException e5) {
                    throw new ParseException("Offset is not properly set at line " + i + ".", i);
                }
            } else {
                throw new ParseException("Offset has incorrect format at line " + i + ".", i);
            }
        }
    }

    private static void readDeviationConfig() throws IOException, ParseException {
        Throwable th;
        InputStream configFileInputStream = getConfigFileInputStream();
        if (configFileInputStream != null) {
            BufferedReader bufferedReader = null;
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(configFileInputStream));
                int i = 0;
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        i++;
                        parseLine(readLine.trim(), i);
                    } catch (Throwable th2) {
                        th = th2;
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        throw th;
                    }
                }
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ChronoLocalDate readExternal(DataInput dataInput) throws IOException {
        return HijrahChronology.INSTANCE.date(dataInput.readInt(), (int) dataInput.readByte(), (int) dataInput.readByte());
    }

    private Object readResolve() {
        return new HijrahDate(this.gregorianEpochDay);
    }

    private static HijrahDate resolvePreviousValid(int i, int i2, int i3) {
        int monthDays = getMonthDays(i2 - 1, i);
        int i4 = i3;
        if (i3 > monthDays) {
            i4 = monthDays;
        }
        return m59of(i, i2, i4);
    }

    private Object writeReplace() {
        return new Ser((byte) 3, this);
    }

    private static long yearToGregorianEpochDay(int i) {
        Long l;
        int i2 = i - 1;
        int i3 = i2 / 30;
        int i4 = i2 % 30;
        int intValue = getAdjustedCycle(i3)[Math.abs(i4)].intValue();
        int i5 = intValue;
        if (i4 < 0) {
            i5 = -intValue;
        }
        try {
            l = ADJUSTED_CYCLES[i3];
        } catch (ArrayIndexOutOfBoundsException e) {
            l = null;
        }
        Long l2 = l;
        if (l == null) {
            l2 = new Long(i3 * 10631);
        }
        return ((l2.longValue() + i5) - 492148) - 1;
    }

    @Override // org.threeten.p040bp.chrono.ChronoDateImpl, org.threeten.p040bp.chrono.ChronoLocalDate
    public final ChronoLocalDateTime<HijrahDate> atTime(LocalTime localTime) {
        return super.atTime(localTime);
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate
    public HijrahChronology getChronology() {
        return HijrahChronology.INSTANCE;
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate
    public HijrahEra getEra() {
        return this.era;
    }

    @Override // org.threeten.p040bp.temporal.TemporalAccessor
    public long getLong(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.getFrom(this);
        }
        switch (C25241.$SwitchMap$org$threeten$bp$temporal$ChronoField[((ChronoField) temporalField).ordinal()]) {
            case 1:
                return this.dayOfMonth;
            case 2:
                return this.dayOfYear;
            case 3:
                return ((this.dayOfMonth - 1) / 7) + 1;
            case 4:
                return this.yearOfEra;
            case 5:
                return this.dayOfWeek.getValue();
            case 6:
                return ((this.dayOfMonth - 1) % 7) + 1;
            case 7:
                return ((this.dayOfYear - 1) % 7) + 1;
            case 8:
                return toEpochDay();
            case 9:
                return ((this.dayOfYear - 1) / 7) + 1;
            case 10:
                return this.monthOfYear;
            case 11:
                return this.yearOfEra;
            case 12:
                return this.era.getValue();
            default:
                throw new UnsupportedTemporalTypeException("Unsupported field: " + temporalField);
        }
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate
    public boolean isLeapYear() {
        return this.isLeapYear;
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate
    public int lengthOfMonth() {
        return getMonthLength(this.monthOfYear - 1, this.yearOfEra);
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate
    public int lengthOfYear() {
        return getYearLength(this.yearOfEra);
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate, org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public HijrahDate minus(long j, TemporalUnit temporalUnit) {
        return (HijrahDate) super.minus(j, temporalUnit);
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate, org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public HijrahDate minus(TemporalAmount temporalAmount) {
        return (HijrahDate) super.minus(temporalAmount);
    }

    @Override // org.threeten.p040bp.chrono.ChronoDateImpl, org.threeten.p040bp.chrono.ChronoLocalDate, org.threeten.p040bp.temporal.Temporal
    public HijrahDate plus(long j, TemporalUnit temporalUnit) {
        return (HijrahDate) super.plus(j, temporalUnit);
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate, org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public HijrahDate plus(TemporalAmount temporalAmount) {
        return (HijrahDate) super.plus(temporalAmount);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.p040bp.chrono.ChronoDateImpl
    public ChronoDateImpl<HijrahDate> plusDays(long j) {
        return new HijrahDate(this.gregorianEpochDay + j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.p040bp.chrono.ChronoDateImpl
    public ChronoDateImpl<HijrahDate> plusMonths(long j) {
        if (j == 0) {
            return this;
        }
        int i = (this.monthOfYear - 1) + ((int) j);
        int i2 = i / 12;
        int i3 = i % 12;
        while (i3 < 0) {
            i3 += 12;
            i2 = Jdk8Methods.safeSubtract(i2, 1);
        }
        return m57of(this.era, Jdk8Methods.safeAdd(this.yearOfEra, i2), i3 + 1, this.dayOfMonth);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.threeten.p040bp.chrono.ChronoDateImpl
    public ChronoDateImpl<HijrahDate> plusYears(long j) {
        if (j == 0) {
            return this;
        }
        return m57of(this.era, Jdk8Methods.safeAdd(this.yearOfEra, (int) j), this.monthOfYear, this.dayOfMonth);
    }

    @Override // org.threeten.p040bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.p040bp.temporal.TemporalAccessor
    public ValueRange range(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.rangeRefinedBy(this);
        }
        if (isSupported(temporalField)) {
            ChronoField chronoField = (ChronoField) temporalField;
            switch (C25241.$SwitchMap$org$threeten$bp$temporal$ChronoField[chronoField.ordinal()]) {
                case 1:
                    return ValueRange.m46of(1L, lengthOfMonth());
                case 2:
                    return ValueRange.m46of(1L, lengthOfYear());
                case 3:
                    return ValueRange.m46of(1L, 5L);
                case 4:
                    return ValueRange.m46of(1L, 1000L);
                default:
                    return getChronology().range(chronoField);
            }
        } else {
            throw new UnsupportedTemporalTypeException("Unsupported field: " + temporalField);
        }
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate
    public long toEpochDay() {
        return getGregorianEpochDay(this.yearOfEra, this.monthOfYear, this.dayOfMonth);
    }

    @Override // org.threeten.p040bp.chrono.ChronoDateImpl, org.threeten.p040bp.temporal.Temporal
    public /* bridge */ /* synthetic */ long until(Temporal temporal, TemporalUnit temporalUnit) {
        return super.until(temporal, temporalUnit);
    }

    @Override // org.threeten.p040bp.chrono.ChronoDateImpl, org.threeten.p040bp.chrono.ChronoLocalDate
    public /* bridge */ /* synthetic */ ChronoPeriod until(ChronoLocalDate chronoLocalDate) {
        return super.until(chronoLocalDate);
    }

    @Override // org.threeten.p040bp.chrono.ChronoLocalDate, org.threeten.p040bp.jdk8.DefaultInterfaceTemporal, org.threeten.p040bp.temporal.Temporal
    public HijrahDate with(TemporalAdjuster temporalAdjuster) {
        return (HijrahDate) super.with(temporalAdjuster);
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [org.threeten.bp.chrono.HijrahDate] */
    /* JADX WARN: Type inference failed for: r0v29, types: [org.threeten.bp.chrono.HijrahDate] */
    /* JADX WARN: Type inference failed for: r0v31, types: [org.threeten.bp.chrono.HijrahDate] */
    /* JADX WARN: Type inference failed for: r0v33, types: [org.threeten.bp.chrono.HijrahDate] */
    /* JADX WARN: Type inference failed for: r0v36, types: [org.threeten.bp.chrono.HijrahDate] */
    @Override // org.threeten.p040bp.chrono.ChronoLocalDate, org.threeten.p040bp.temporal.Temporal
    public HijrahDate with(TemporalField temporalField, long j) {
        if (!(temporalField instanceof ChronoField)) {
            return (HijrahDate) temporalField.adjustInto(this, j);
        }
        ChronoField chronoField = (ChronoField) temporalField;
        chronoField.checkValidValue(j);
        int i = (int) j;
        switch (C25241.$SwitchMap$org$threeten$bp$temporal$ChronoField[chronoField.ordinal()]) {
            case 1:
                return resolvePreviousValid(this.yearOfEra, this.monthOfYear, i);
            case 2:
                int i2 = i - 1;
                return resolvePreviousValid(this.yearOfEra, (i2 / 30) + 1, (i2 % 30) + 1);
            case 3:
                return plusDays((j - getLong(ChronoField.ALIGNED_WEEK_OF_MONTH)) * 7);
            case 4:
                if (this.yearOfEra < 1) {
                    i = 1 - i;
                }
                return resolvePreviousValid(i, this.monthOfYear, this.dayOfMonth);
            case 5:
                return plusDays(j - this.dayOfWeek.getValue());
            case 6:
                return plusDays(j - getLong(ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 7:
                return plusDays(j - getLong(ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 8:
                return new HijrahDate(i);
            case 9:
                return plusDays((j - getLong(ChronoField.ALIGNED_WEEK_OF_YEAR)) * 7);
            case 10:
                return resolvePreviousValid(this.yearOfEra, i, this.dayOfMonth);
            case 11:
                return resolvePreviousValid(i, this.monthOfYear, this.dayOfMonth);
            case 12:
                return resolvePreviousValid(1 - this.yearOfEra, this.monthOfYear, this.dayOfMonth);
            default:
                throw new UnsupportedTemporalTypeException("Unsupported field: " + temporalField);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(get(ChronoField.YEAR));
        dataOutput.writeByte(get(ChronoField.MONTH_OF_YEAR));
        dataOutput.writeByte(get(ChronoField.DAY_OF_MONTH));
    }
}
