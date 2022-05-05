package org.mozilla.javascript;

import com.zendesk.service.HttpConstants;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.text.DateFormat;
import java.util.Date;
import java.util.TimeZone;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/NativeDate.class */
public final class NativeDate extends IdScriptableObject {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ConstructorId_UTC = -1;
    private static final int ConstructorId_now = -3;
    private static final int ConstructorId_parse = -2;
    private static final Object DATE_TAG = HttpRequest.HEADER_DATE;
    private static final double HalfTimeDomain = 8.64E15d;
    private static final double HoursPerDay = 24.0d;
    private static final int Id_constructor = 1;
    private static final int Id_getDate = 17;
    private static final int Id_getDay = 19;
    private static final int Id_getFullYear = 13;
    private static final int Id_getHours = 21;
    private static final int Id_getMilliseconds = 27;
    private static final int Id_getMinutes = 23;
    private static final int Id_getMonth = 15;
    private static final int Id_getSeconds = 25;
    private static final int Id_getTime = 11;
    private static final int Id_getTimezoneOffset = 29;
    private static final int Id_getUTCDate = 18;
    private static final int Id_getUTCDay = 20;
    private static final int Id_getUTCFullYear = 14;
    private static final int Id_getUTCHours = 22;
    private static final int Id_getUTCMilliseconds = 28;
    private static final int Id_getUTCMinutes = 24;
    private static final int Id_getUTCMonth = 16;
    private static final int Id_getUTCSeconds = 26;
    private static final int Id_getYear = 12;
    private static final int Id_setDate = 39;
    private static final int Id_setFullYear = 43;
    private static final int Id_setHours = 37;
    private static final int Id_setMilliseconds = 31;
    private static final int Id_setMinutes = 35;
    private static final int Id_setMonth = 41;
    private static final int Id_setSeconds = 33;
    private static final int Id_setTime = 30;
    private static final int Id_setUTCDate = 40;
    private static final int Id_setUTCFullYear = 44;
    private static final int Id_setUTCHours = 38;
    private static final int Id_setUTCMilliseconds = 32;
    private static final int Id_setUTCMinutes = 36;
    private static final int Id_setUTCMonth = 42;
    private static final int Id_setUTCSeconds = 34;
    private static final int Id_setYear = 45;
    private static final int Id_toDateString = 4;
    private static final int Id_toGMTString = 8;
    private static final int Id_toISOString = 46;
    private static final int Id_toJSON = 47;
    private static final int Id_toLocaleDateString = 7;
    private static final int Id_toLocaleString = 5;
    private static final int Id_toLocaleTimeString = 6;
    private static final int Id_toSource = 9;
    private static final int Id_toString = 2;
    private static final int Id_toTimeString = 3;
    private static final int Id_toUTCString = 8;
    private static final int Id_valueOf = 10;
    private static double LocalTZA = 0.0d;
    private static final int MAXARGS = 7;
    private static final int MAX_PROTOTYPE_ID = 47;
    private static final double MinutesPerDay = 1440.0d;
    private static final double MinutesPerHour = 60.0d;
    private static final double SecondsPerDay = 86400.0d;
    private static final double SecondsPerHour = 3600.0d;
    private static final double SecondsPerMinute = 60.0d;
    private static final String js_NaN_date_str = "Invalid Date";
    private static DateFormat localeDateFormatter;
    private static DateFormat localeDateTimeFormatter;
    private static DateFormat localeTimeFormatter;
    private static final double msPerDay = 8.64E7d;
    private static final double msPerHour = 3600000.0d;
    private static final double msPerMinute = 60000.0d;
    private static final double msPerSecond = 1000.0d;
    static final long serialVersionUID = -8307438915861678966L;
    private static TimeZone thisTimeZone;
    private static DateFormat timeZoneFormatter;
    private double date;

    private NativeDate() {
        if (thisTimeZone == null) {
            thisTimeZone = TimeZone.getDefault();
            LocalTZA = thisTimeZone.getRawOffset();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int DateFromTime(double d) {
        int YearFromTime = YearFromTime(d);
        int Day = ((int) (Day(d) - DayFromYear(YearFromTime))) - 59;
        int i = 31;
        if (Day < 0) {
            int i2 = Day;
            if (Day < -28) {
                i2 = Day + 31;
            }
            return i2 + 28 + 1;
        }
        int i3 = Day;
        if (IsLeapYear(YearFromTime)) {
            if (Day == 0) {
                return 29;
            }
            i3 = Day - 1;
        }
        int i4 = 30;
        switch (i3 / 30) {
            case 0:
                return i3 + 1;
            case 1:
                i4 = 31;
                break;
            case 2:
                i = 61;
                break;
            case 3:
                i = 92;
                i4 = 31;
                break;
            case 4:
                i = 122;
                break;
            case 5:
                i = 153;
                i4 = 31;
                break;
            case 6:
                i = 184;
                i4 = 31;
                break;
            case 7:
                i = 214;
                break;
            case 8:
                i = 245;
                i4 = 31;
                break;
            case 9:
                i = 275;
                break;
            case 10:
                return (i3 - 275) + 1;
            default:
                throw Kit.codeBug();
        }
        int i5 = i3 - i;
        int i6 = i5;
        if (i5 < 0) {
            i6 = i5 + i4;
        }
        return i6 + 1;
    }

    private static double Day(double d) {
        return Math.floor(d / msPerDay);
    }

    private static double DayFromMonth(int i, int i2) {
        int i3 = i * 30;
        int i4 = i >= 7 ? i3 + ((i / 2) - 1) : i >= 2 ? i3 + (((i - 1) / 2) - 1) : i3 + i;
        int i5 = i4;
        if (i >= 2) {
            i5 = i4;
            if (IsLeapYear(i2)) {
                i5 = i4 + 1;
            }
        }
        return i5;
    }

    private static double DayFromYear(double d) {
        return ((((d - 1970.0d) * 365.0d) + Math.floor((d - 1969.0d) / 4.0d)) - Math.floor((d - 1901.0d) / 100.0d)) + Math.floor((d - 1601.0d) / 400.0d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [double] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [double] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static double DaylightSavingTA(double r7) {
        /*
            r0 = r7
            r9 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0025
            r0 = r7
            int r0 = YearFromTime(r0)
            int r0 = EquivalentYear(r0)
            double r0 = (double) r0
            r1 = r7
            int r1 = MonthFromTime(r1)
            double r1 = (double) r1
            r2 = r7
            int r2 = DateFromTime(r2)
            double r2 = (double) r2
            double r0 = MakeDay(r0, r1, r2)
            r1 = r7
            double r1 = TimeWithinDay(r1)
            double r0 = MakeDate(r0, r1)
            r9 = r0
        L_0x0025:
            java.util.Date r0 = new java.util.Date
            r1 = r0
            r2 = r9
            long r2 = (long) r2
            r1.<init>(r2)
            r11 = r0
            java.util.TimeZone r0 = org.mozilla.javascript.NativeDate.thisTimeZone
            r1 = r11
            boolean r0 = r0.inDaylightTime(r1)
            if (r0 == 0) goto L_0x003f
            r0 = 4704985352480227328(0x414b774000000000, double:3600000.0)
            return r0
        L_0x003f:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.DaylightSavingTA(double):double");
    }

    private static int DaysInMonth(int i, int i2) {
        if (i2 == 2) {
            return IsLeapYear(i) ? 29 : 28;
        }
        return i2 >= 8 ? 31 - (i2 & 1) : (i2 & 1) + 30;
    }

    private static int EquivalentYear(int i) {
        int DayFromYear = (((int) DayFromYear(i)) + 4) % 7;
        int i2 = DayFromYear;
        if (DayFromYear < 0) {
            i2 = DayFromYear + 7;
        }
        if (IsLeapYear(i)) {
            switch (i2) {
                case 0:
                    return 1984;
                case 1:
                    return 1996;
                case 2:
                    return 1980;
                case 3:
                    return 1992;
                case 4:
                    return 1976;
                case 5:
                    return 1988;
                case 6:
                    return 1972;
            }
        } else {
            switch (i2) {
                case 0:
                    return 1978;
                case 1:
                    return 1973;
                case 2:
                    return 1985;
                case 3:
                    return 1986;
                case 4:
                    return 1981;
                case 5:
                    return 1971;
                case 6:
                    return 1977;
            }
        }
        throw Kit.codeBug();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [double] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [double] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int HourFromTime(double r5) {
        /*
            r0 = r5
            r1 = 4704985352480227328(0x414b774000000000, double:3600000.0)
            double r0 = r0 / r1
            double r0 = java.lang.Math.floor(r0)
            r1 = 4627448617123184640(0x4038000000000000, double:24.0)
            double r0 = r0 % r1
            r7 = r0
            r0 = r7
            r5 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x001b
            r0 = r7
            r1 = 4627448617123184640(0x4038000000000000, double:24.0)
            double r0 = r0 + r1
            r5 = r0
        L_0x001b:
            r0 = r5
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.HourFromTime(double):int");
    }

    private static boolean IsLeapYear(int i) {
        return i % 4 == 0 && (i % 100 != 0 || i % HttpConstants.HTTP_BAD_REQUEST == 0);
    }

    private static double LocalTime(double d) {
        return LocalTZA + d + DaylightSavingTA(d);
    }

    private static double MakeDate(double d, double d2) {
        return (d * msPerDay) + d2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [double] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [double] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static double MakeDay(double r7, double r9, double r11) {
        /*
            r0 = r7
            r1 = r9
            r2 = 4622945017495814144(0x4028000000000000, double:12.0)
            double r1 = r1 / r2
            double r1 = java.lang.Math.floor(r1)
            double r0 = r0 + r1
            r13 = r0
            r0 = r9
            r1 = 4622945017495814144(0x4028000000000000, double:12.0)
            double r0 = r0 % r1
            r9 = r0
            r0 = r9
            r7 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0020
            r0 = r9
            r1 = 4622945017495814144(0x4028000000000000, double:12.0)
            double r0 = r0 + r1
            r7 = r0
        L_0x0020:
            r0 = r13
            double r0 = TimeFromYear(r0)
            r1 = 4725570615333879808(0x4194997000000000, double:8.64E7)
            double r0 = r0 / r1
            double r0 = java.lang.Math.floor(r0)
            r1 = r7
            int r1 = (int) r1
            r2 = r13
            int r2 = (int) r2
            double r1 = DayFromMonth(r1, r2)
            double r0 = r0 + r1
            r1 = r11
            double r0 = r0 + r1
            r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            double r0 = r0 - r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.MakeDay(double, double, double):double");
    }

    private static double MakeTime(double d, double d2, double d3, double d4) {
        return (((((d * 60.0d) + d2) * 60.0d) + d3) * msPerSecond) + d4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [double] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [double] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int MinFromTime(double r5) {
        /*
            r0 = r5
            r1 = 4678479150791524352(0x40ed4c0000000000, double:60000.0)
            double r0 = r0 / r1
            double r0 = java.lang.Math.floor(r0)
            r1 = 4633641066610819072(0x404e000000000000, double:60.0)
            double r0 = r0 % r1
            r7 = r0
            r0 = r7
            r5 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x001b
            r0 = r7
            r1 = 4633641066610819072(0x404e000000000000, double:60.0)
            double r0 = r0 + r1
            r5 = r0
        L_0x001b:
            r0 = r5
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.MinFromTime(double):int");
    }

    private static int MonthFromTime(double d) {
        int i;
        int YearFromTime = YearFromTime(d);
        int Day = ((int) (Day(d) - DayFromYear(YearFromTime))) - 59;
        int i2 = 1;
        if (Day < 0) {
            if (Day < -28) {
                i2 = 0;
            }
            return i2;
        }
        int i3 = Day;
        if (IsLeapYear(YearFromTime)) {
            if (Day == 0) {
                return 1;
            }
            i3 = Day - 1;
        }
        int i4 = i3 / 30;
        switch (i4) {
            case 0:
                return 2;
            case 1:
                i = 31;
                break;
            case 2:
                i = 61;
                break;
            case 3:
                i = 92;
                break;
            case 4:
                i = 122;
                break;
            case 5:
                i = 153;
                break;
            case 6:
                i = 184;
                break;
            case 7:
                i = 214;
                break;
            case 8:
                i = 245;
                break;
            case 9:
                i = 275;
                break;
            case 10:
                return 11;
            default:
                throw Kit.codeBug();
        }
        return i3 >= i ? i4 + 2 : i4 + 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [double] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [double] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int SecFromTime(double r5) {
        /*
            r0 = r5
            r1 = 4652007308841189376(0x408f400000000000, double:1000.0)
            double r0 = r0 / r1
            double r0 = java.lang.Math.floor(r0)
            r1 = 4633641066610819072(0x404e000000000000, double:60.0)
            double r0 = r0 % r1
            r7 = r0
            r0 = r7
            r5 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x001b
            r0 = r7
            r1 = 4633641066610819072(0x404e000000000000, double:60.0)
            double r0 = r0 + r1
            r5 = r0
        L_0x001b:
            r0 = r5
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.SecFromTime(double):int");
    }

    private static double TimeClip(double d) {
        return (d != d || d == Double.POSITIVE_INFINITY || d == Double.NEGATIVE_INFINITY || Math.abs(d) > HalfTimeDomain) ? ScriptRuntime.NaN : d > 0.0d ? Math.floor(d + 0.0d) : Math.ceil(d + 0.0d);
    }

    private static double TimeFromYear(double d) {
        return DayFromYear(d) * msPerDay;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [double] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [double] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static double TimeWithinDay(double r5) {
        /*
            r0 = r5
            r1 = 4725570615333879808(0x4194997000000000, double:8.64E7)
            double r0 = r0 % r1
            r7 = r0
            r0 = r7
            r5 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0014
            r0 = r7
            r1 = 4725570615333879808(0x4194997000000000, double:8.64E7)
            double r0 = r0 + r1
            r5 = r0
        L_0x0014:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.TimeWithinDay(double):double");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [double] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [double] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int WeekDay(double r5) {
        /*
            r0 = r5
            double r0 = Day(r0)
            r1 = 4616189618054758400(0x4010000000000000, double:4.0)
            double r0 = r0 + r1
            r1 = 4619567317775286272(0x401c000000000000, double:7.0)
            double r0 = r0 % r1
            r7 = r0
            r0 = r7
            r5 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x001b
            r0 = r7
            r1 = 4619567317775286272(0x401c000000000000, double:7.0)
            double r0 = r0 + r1
            r5 = r0
        L_0x001b:
            r0 = r5
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.WeekDay(double):int");
    }

    private static int YearFromTime(double d) {
        double d2 = d / msPerDay;
        int floor = ((int) Math.floor(d2 / 366.0d)) + 1970;
        int floor2 = ((int) Math.floor(d2 / 365.0d)) + 1970;
        if (floor2 >= floor) {
            floor2 = floor;
            floor = floor2;
        }
        while (floor > floor2) {
            int i = (floor + floor2) / 2;
            if (TimeFromYear(i) > d) {
                floor = i - 1;
            } else {
                int i2 = i + 1;
                floor2 = i2;
                if (TimeFromYear(i2) > d) {
                    return i;
                }
            }
        }
        return floor2;
    }

    private static void append0PaddedUint(StringBuilder sb, int i, int i2) {
        int i3;
        if (i < 0) {
            Kit.codeBug();
        }
        int i4 = i2 - 1;
        int i5 = 1000000000;
        if (i < 10) {
            i5 = 1;
        } else if (i < 1000000000) {
            i5 = 1;
            while (true) {
                int i6 = i5 * 10;
                if (i < i6) {
                    break;
                }
                i4--;
                i5 = i6;
            }
        } else {
            i4 -= 9;
        }
        while (true) {
            i3 = i;
            if (i4 > 0) {
                sb.append('0');
                i4--;
            }
        }
        while (i5 != 1) {
            sb.append((char) ((i3 / i5) + 48));
            i3 %= i5;
            i5 /= 10;
        }
        sb.append((char) (i3 + 48));
    }

    private static void appendMonthName(StringBuilder sb, int i) {
        for (int i2 = 0; i2 != 3; i2++) {
            sb.append("JanFebMarAprMayJunJulAugSepOctNovDec".charAt((i * 3) + i2));
        }
    }

    private static void appendWeekDayName(StringBuilder sb, int i) {
        for (int i2 = 0; i2 != 3; i2++) {
            sb.append("SunMonTueWedThuFriSat".charAt((i * 3) + i2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [double] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [double] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String date_format(double r7, int r9) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.date_format(double, int):java.lang.String");
    }

    private static double date_msecFromArgs(Object[] objArr) {
        double[] dArr = new double[7];
        for (int i = 0; i < 7; i++) {
            if (i < objArr.length) {
                double number = ScriptRuntime.toNumber(objArr[i]);
                if (number != number || Double.isInfinite(number)) {
                    return ScriptRuntime.NaN;
                }
                dArr[i] = ScriptRuntime.toInteger(objArr[i]);
            } else if (i == 2) {
                dArr[i] = 1.0d;
            } else {
                dArr[i] = 0.0d;
            }
        }
        if (dArr[0] >= 0.0d && dArr[0] <= 99.0d) {
            dArr[0] = dArr[0] + 1900.0d;
        }
        return date_msecFromDate(dArr[0], dArr[1], dArr[2], dArr[3], dArr[4], dArr[5], dArr[6]);
    }

    private static double date_msecFromDate(double d, double d2, double d3, double d4, double d5, double d6, double d7) {
        return MakeDate(MakeDay(d, d2, d3), MakeTime(d4, d5, d6, d7));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0268  */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v12 */
    /* JADX WARN: Type inference failed for: r16v14 */
    /* JADX WARN: Type inference failed for: r16v15 */
    /* JADX WARN: Type inference failed for: r16v19 */
    /* JADX WARN: Type inference failed for: r16v2, types: [double] */
    /* JADX WARN: Type inference failed for: r16v20 */
    /* JADX WARN: Type inference failed for: r16v21 */
    /* JADX WARN: Type inference failed for: r16v22 */
    /* JADX WARN: Type inference failed for: r16v23 */
    /* JADX WARN: Type inference failed for: r16v24 */
    /* JADX WARN: Type inference failed for: r16v25 */
    /* JADX WARN: Type inference failed for: r16v26 */
    /* JADX WARN: Type inference failed for: r16v27 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r16v9 */
    /* JADX WARN: Type inference failed for: r34v1 */
    /* JADX WARN: Type inference failed for: r34v2 */
    /* JADX WARN: Type inference failed for: r34v3 */
    /* JADX WARN: Type inference failed for: r34v4 */
    /* JADX WARN: Type inference failed for: r34v5 */
    /* JADX WARN: Type inference failed for: r34v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static double date_parseString(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 1269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.date_parseString(java.lang.String):double");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void init(Scriptable scriptable, boolean z) {
        NativeDate nativeDate = new NativeDate();
        nativeDate.date = ScriptRuntime.NaN;
        nativeDate.exportAsJSClass(47, scriptable, z);
    }

    private static double internalUTC(double d) {
        return (d - LocalTZA) - DaylightSavingTA(d - LocalTZA);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [double] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [double] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Object jsConstructor(java.lang.Object[] r4) {
        /*
            org.mozilla.javascript.NativeDate r0 = new org.mozilla.javascript.NativeDate
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r4
            int r0 = r0.length
            if (r0 != 0) goto L_0x0016
            r0 = r5
            double r1 = now()
            r0.date = r1
            r0 = r5
            return r0
        L_0x0016:
            r0 = r4
            int r0 = r0.length
            r1 = 1
            if (r0 != r1) goto L_0x0055
            r0 = r4
            r1 = 0
            r0 = r0[r1]
            r6 = r0
            r0 = r6
            r4 = r0
            r0 = r6
            boolean r0 = r0 instanceof org.mozilla.javascript.Scriptable
            if (r0 == 0) goto L_0x0034
            r0 = r6
            org.mozilla.javascript.Scriptable r0 = (org.mozilla.javascript.Scriptable) r0
            r1 = 0
            java.lang.Object r0 = r0.getDefaultValue(r1)
            r4 = r0
        L_0x0034:
            r0 = r4
            boolean r0 = r0 instanceof java.lang.CharSequence
            if (r0 == 0) goto L_0x0046
            r0 = r4
            java.lang.String r0 = r0.toString()
            double r0 = date_parseString(r0)
            r7 = r0
            goto L_0x004b
        L_0x0046:
            r0 = r4
            double r0 = org.mozilla.javascript.ScriptRuntime.toNumber(r0)
            r7 = r0
        L_0x004b:
            r0 = r5
            r1 = r7
            double r1 = TimeClip(r1)
            r0.date = r1
            r0 = r5
            return r0
        L_0x0055:
            r0 = r4
            double r0 = date_msecFromArgs(r0)
            r9 = r0
            r0 = r9
            r7 = r0
            r0 = r9
            boolean r0 = java.lang.Double.isNaN(r0)
            if (r0 != 0) goto L_0x007a
            r0 = r9
            r7 = r0
            r0 = r9
            boolean r0 = java.lang.Double.isInfinite(r0)
            if (r0 != 0) goto L_0x007a
            r0 = r9
            double r0 = internalUTC(r0)
            double r0 = TimeClip(r0)
            r7 = r0
        L_0x007a:
            r0 = r5
            r1 = r7
            r0.date = r1
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.jsConstructor(java.lang.Object[]):java.lang.Object");
    }

    private static double jsStaticFunction_UTC(Object[] objArr) {
        return TimeClip(date_msecFromArgs(objArr));
    }

    private static String js_toISOString(double d) {
        StringBuilder sb = new StringBuilder(27);
        int YearFromTime = YearFromTime(d);
        if (YearFromTime < 0) {
            sb.append('-');
            append0PaddedUint(sb, -YearFromTime, 6);
        } else if (YearFromTime > 9999) {
            append0PaddedUint(sb, YearFromTime, 6);
        } else {
            append0PaddedUint(sb, YearFromTime, 4);
        }
        sb.append('-');
        append0PaddedUint(sb, MonthFromTime(d) + 1, 2);
        sb.append('-');
        append0PaddedUint(sb, DateFromTime(d), 2);
        sb.append('T');
        append0PaddedUint(sb, HourFromTime(d), 2);
        sb.append(':');
        append0PaddedUint(sb, MinFromTime(d), 2);
        sb.append(':');
        append0PaddedUint(sb, SecFromTime(d), 2);
        sb.append('.');
        append0PaddedUint(sb, msFromTime(d), 3);
        sb.append('Z');
        return sb.toString();
    }

    private static String js_toUTCString(double d) {
        StringBuilder sb = new StringBuilder(60);
        appendWeekDayName(sb, WeekDay(d));
        sb.append(", ");
        append0PaddedUint(sb, DateFromTime(d), 2);
        sb.append(' ');
        appendMonthName(sb, MonthFromTime(d));
        sb.append(' ');
        int YearFromTime = YearFromTime(d);
        int i = YearFromTime;
        if (YearFromTime < 0) {
            sb.append('-');
            i = -YearFromTime;
        }
        append0PaddedUint(sb, i, 4);
        sb.append(' ');
        append0PaddedUint(sb, HourFromTime(d), 2);
        sb.append(':');
        append0PaddedUint(sb, MinFromTime(d), 2);
        sb.append(':');
        append0PaddedUint(sb, SecFromTime(d), 2);
        sb.append(" GMT");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c3  */
    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [double] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static double makeDate(double r7, java.lang.Object[] r9, int r10) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.makeDate(double, java.lang.Object[], int):double");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d6  */
    /* JADX WARN: Type inference failed for: r0v24, types: [double] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [double] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static double makeTime(double r9, java.lang.Object[] r11, int r12) {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.makeTime(double, java.lang.Object[], int):double");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [double] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [double] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int msFromTime(double r5) {
        /*
            r0 = r5
            r1 = 4652007308841189376(0x408f400000000000, double:1000.0)
            double r0 = r0 % r1
            r7 = r0
            r0 = r7
            r5 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0014
            r0 = r7
            r1 = 4652007308841189376(0x408f400000000000, double:1000.0)
            double r0 = r0 + r1
            r5 = r0
        L_0x0014:
            r0 = r5
            int r0 = (int) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.msFromTime(double):int");
    }

    private static double now() {
        return System.currentTimeMillis();
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0273, code lost:
        r24 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01d0, code lost:
        if (r0 != '-') goto L_0x0245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01f1, code lost:
        if (r0 != '-') goto L_0x0245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x020e, code lost:
        if (r0 != '-') goto L_0x0245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0224, code lost:
        if (r0 == 'T') goto L_0x0240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x023d, code lost:
        if (r0 == 'T') goto L_0x0240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0240, code lost:
        r18 = 3;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0273 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static double parseISOString(java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 883
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.parseISOString(java.lang.String):double");
    }

    private static String toLocale_helper(double d, int i) {
        DateFormat dateFormat;
        String format;
        switch (i) {
            case 5:
                if (localeDateTimeFormatter == null) {
                    localeDateTimeFormatter = DateFormat.getDateTimeInstance(1, 1);
                }
                dateFormat = localeDateTimeFormatter;
                break;
            case 6:
                if (localeTimeFormatter == null) {
                    localeTimeFormatter = DateFormat.getTimeInstance(1);
                }
                dateFormat = localeTimeFormatter;
                break;
            case 7:
                if (localeDateFormatter == null) {
                    localeDateFormatter = DateFormat.getDateInstance(1);
                }
                dateFormat = localeDateFormatter;
                break;
            default:
                throw new AssertionError();
        }
        synchronized (dateFormat) {
            format = dateFormat.format(new Date((long) d));
        }
        return format;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v221, types: [double] */
    /* JADX WARN: Type inference failed for: r0v58, types: [double] */
    /* JADX WARN: Type inference failed for: r0v95, types: [double] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [double] */
    /* JADX WARN: Type inference failed for: r18v10 */
    /* JADX WARN: Type inference failed for: r18v11, types: [double] */
    /* JADX WARN: Type inference failed for: r18v12 */
    /* JADX WARN: Type inference failed for: r18v13, types: [double] */
    /* JADX WARN: Type inference failed for: r18v16 */
    /* JADX WARN: Type inference failed for: r18v17, types: [double] */
    /* JADX WARN: Type inference failed for: r18v18 */
    /* JADX WARN: Type inference failed for: r18v19, types: [double] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v22 */
    /* JADX WARN: Type inference failed for: r18v23, types: [double] */
    /* JADX WARN: Type inference failed for: r18v24 */
    /* JADX WARN: Type inference failed for: r18v25, types: [double] */
    /* JADX WARN: Type inference failed for: r18v28 */
    /* JADX WARN: Type inference failed for: r18v29, types: [double] */
    /* JADX WARN: Type inference failed for: r18v3, types: [double] */
    /* JADX WARN: Type inference failed for: r18v30 */
    /* JADX WARN: Type inference failed for: r18v31, types: [double] */
    /* JADX WARN: Type inference failed for: r18v34 */
    /* JADX WARN: Type inference failed for: r18v35, types: [double] */
    /* JADX WARN: Type inference failed for: r18v36 */
    /* JADX WARN: Type inference failed for: r18v37, types: [double] */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v40 */
    /* JADX WARN: Type inference failed for: r18v41, types: [double] */
    /* JADX WARN: Type inference failed for: r18v42 */
    /* JADX WARN: Type inference failed for: r18v43, types: [double] */
    /* JADX WARN: Type inference failed for: r18v46 */
    /* JADX WARN: Type inference failed for: r18v47, types: [double] */
    /* JADX WARN: Type inference failed for: r18v48 */
    /* JADX WARN: Type inference failed for: r18v49, types: [double] */
    /* JADX WARN: Type inference failed for: r18v52 */
    /* JADX WARN: Type inference failed for: r18v53, types: [double] */
    /* JADX WARN: Type inference failed for: r18v55 */
    /* JADX WARN: Type inference failed for: r18v56, types: [double] */
    /* JADX WARN: Type inference failed for: r18v57 */
    /* JADX WARN: Type inference failed for: r18v59 */
    /* JADX WARN: Type inference failed for: r18v6 */
    /* JADX WARN: Type inference failed for: r18v60 */
    /* JADX WARN: Type inference failed for: r18v61 */
    /* JADX WARN: Type inference failed for: r18v62 */
    /* JADX WARN: Type inference failed for: r18v63 */
    /* JADX WARN: Type inference failed for: r18v64 */
    /* JADX WARN: Type inference failed for: r18v65 */
    /* JADX WARN: Type inference failed for: r18v66 */
    /* JADX WARN: Type inference failed for: r18v67 */
    /* JADX WARN: Type inference failed for: r18v68 */
    /* JADX WARN: Type inference failed for: r18v69 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r18v70 */
    /* JADX WARN: Type inference failed for: r18v71 */
    /* JADX WARN: Type inference failed for: r18v72 */
    /* JADX WARN: Type inference failed for: r18v73 */
    /* JADX WARN: Type inference failed for: r18v74 */
    /* JADX WARN: Type inference failed for: r18v75 */
    /* JADX WARN: Type inference failed for: r18v76 */
    /* JADX WARN: Type inference failed for: r18v77 */
    /* JADX WARN: Unknown variable types count: 21 */
    @Override // org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object execIdCall(org.mozilla.javascript.IdFunctionObject r8, org.mozilla.javascript.Context r9, org.mozilla.javascript.Scriptable r10, org.mozilla.javascript.Scriptable r11, java.lang.Object[] r12) {
        /*
            Method dump skipped, instructions count: 1274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.execIdCall(org.mozilla.javascript.IdFunctionObject, org.mozilla.javascript.Context, org.mozilla.javascript.Scriptable, org.mozilla.javascript.Scriptable, java.lang.Object[]):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.mozilla.javascript.IdScriptableObject
    public void fillConstructorProperties(IdFunctionObject idFunctionObject) {
        addIdFunctionProperty(idFunctionObject, DATE_TAG, -3, "now", 0);
        addIdFunctionProperty(idFunctionObject, DATE_TAG, -2, "parse", 1);
        addIdFunctionProperty(idFunctionObject, DATE_TAG, -1, "UTC", 7);
        super.fillConstructorProperties(idFunctionObject);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0472 A[FALL_THROUGH] */
    @Override // org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected int findPrototypeId(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 1171
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.NativeDate.findPrototypeId(java.lang.String):int");
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public String getClassName() {
        return HttpRequest.HEADER_DATE;
    }

    @Override // org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public Object getDefaultValue(Class<?> cls) {
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = ScriptRuntime.StringClass;
        }
        return super.getDefaultValue(cls2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double getJSTimeValue() {
        return this.date;
    }

    @Override // org.mozilla.javascript.IdScriptableObject
    protected void initPrototypeId(int i) {
        String str;
        int i2 = 0;
        switch (i) {
            case 1:
                str = "constructor";
                i2 = 7;
                break;
            case 2:
                str = "toString";
                break;
            case 3:
                str = "toTimeString";
                break;
            case 4:
                str = "toDateString";
                break;
            case 5:
                str = "toLocaleString";
                break;
            case 6:
                str = "toLocaleTimeString";
                break;
            case 7:
                str = "toLocaleDateString";
                break;
            case 8:
                str = "toUTCString";
                break;
            case 9:
                str = "toSource";
                break;
            case 10:
                str = "valueOf";
                break;
            case 11:
                str = "getTime";
                break;
            case 12:
                str = "getYear";
                break;
            case 13:
                str = "getFullYear";
                break;
            case 14:
                str = "getUTCFullYear";
                break;
            case 15:
                str = "getMonth";
                break;
            case 16:
                str = "getUTCMonth";
                break;
            case 17:
                str = "getDate";
                break;
            case 18:
                str = "getUTCDate";
                break;
            case 19:
                str = "getDay";
                break;
            case 20:
                str = "getUTCDay";
                break;
            case 21:
                str = "getHours";
                break;
            case 22:
                str = "getUTCHours";
                break;
            case 23:
                str = "getMinutes";
                break;
            case 24:
                str = "getUTCMinutes";
                break;
            case 25:
                str = "getSeconds";
                break;
            case 26:
                str = "getUTCSeconds";
                break;
            case 27:
                str = "getMilliseconds";
                break;
            case 28:
                str = "getUTCMilliseconds";
                break;
            case 29:
                str = "getTimezoneOffset";
                break;
            case 30:
                str = "setTime";
                i2 = 1;
                break;
            case 31:
                str = "setMilliseconds";
                i2 = 1;
                break;
            case 32:
                str = "setUTCMilliseconds";
                i2 = 1;
                break;
            case 33:
                str = "setSeconds";
                i2 = 2;
                break;
            case 34:
                str = "setUTCSeconds";
                i2 = 2;
                break;
            case 35:
                str = "setMinutes";
                i2 = 3;
                break;
            case 36:
                str = "setUTCMinutes";
                i2 = 3;
                break;
            case 37:
                str = "setHours";
                i2 = 4;
                break;
            case 38:
                str = "setUTCHours";
                i2 = 4;
                break;
            case 39:
                str = "setDate";
                i2 = 1;
                break;
            case 40:
                str = "setUTCDate";
                i2 = 1;
                break;
            case 41:
                str = "setMonth";
                i2 = 2;
                break;
            case 42:
                str = "setUTCMonth";
                i2 = 2;
                break;
            case 43:
                str = "setFullYear";
                i2 = 3;
                break;
            case 44:
                str = "setUTCFullYear";
                i2 = 3;
                break;
            case 45:
                str = "setYear";
                i2 = 1;
                break;
            case 46:
                str = "toISOString";
                break;
            case 47:
                str = "toJSON";
                i2 = 1;
                break;
            default:
                throw new IllegalArgumentException(String.valueOf(i));
        }
        initPrototypeMethod(DATE_TAG, i, str, i2);
    }
}
