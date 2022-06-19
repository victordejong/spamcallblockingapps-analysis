package com.google.android.gms.internal.firebase_remote_config;

import java.io.Serializable;
import java.util.Arrays;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzbw.class */
public final class zzbw implements Serializable {
    private static final TimeZone GMT = TimeZone.getTimeZone("GMT");
    private static final Pattern zzfo = Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})([Tt](\\d{2}):(\\d{2}):(\\d{2})(\\.\\d+)?)?([Zz]|([+-])(\\d{2}):(\\d{2}))?");
    private final long value;
    private final boolean zzfp;
    private final int zzfq;

    public zzbw(long j) {
        this(false, 0L, null);
    }

    private zzbw(boolean z, long j, Integer num) {
        this.zzfp = z;
        this.value = j;
        this.zzfq = z ? 0 : num == null ? TimeZone.getDefault().getOffset(j) / 60000 : num.intValue();
    }

    private static void zza(StringBuilder sb, int i, int i2) {
        int i3 = i;
        if (i < 0) {
            sb.append('-');
            i3 = -i;
        }
        int i4 = i2;
        int i5 = i3;
        while (i5 > 0) {
            i5 /= 10;
            i4--;
        }
        for (int i6 = 0; i6 < i4; i6++) {
            sb.append('0');
        }
        if (i3 != 0) {
            sb.append(i3);
        }
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    public static zzbw zzaf(String str) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Matcher matcher = zzfo.matcher(str);
        if (!matcher.matches()) {
            String valueOf = String.valueOf(str);
            throw new NumberFormatException(valueOf.length() != 0 ? "Invalid date/time format: ".concat(valueOf) : new String("Invalid date/time format: "));
        }
        int parseInt = Integer.parseInt(matcher.group(1));
        int parseInt2 = Integer.parseInt(matcher.group(2));
        int parseInt3 = Integer.parseInt(matcher.group(3));
        boolean z = matcher.group(4) != null;
        String group = matcher.group(9);
        boolean z2 = group != null;
        if (z2 && !z) {
            String valueOf2 = String.valueOf(str);
            throw new NumberFormatException(valueOf2.length() != 0 ? "Invalid date/time format, cannot specify time zone shift without specifying time: ".concat(valueOf2) : new String("Invalid date/time format, cannot specify time zone shift without specifying time: "));
        }
        if (z) {
            i4 = Integer.parseInt(matcher.group(5));
            i3 = Integer.parseInt(matcher.group(6));
            i2 = Integer.parseInt(matcher.group(7));
            i = matcher.group(8) != null ? (int) (Integer.parseInt(matcher.group(8).substring(1)) / Math.pow(10.0d, matcher.group(8).substring(1).length() - 3)) : 0;
        } else {
            i4 = 0;
            i3 = 0;
            i2 = 0;
            i = 0;
        }
        boolean z3 = z;
        GregorianCalendar gregorianCalendar = new GregorianCalendar(GMT);
        gregorianCalendar.set(parseInt, parseInt2 - 1, parseInt3, i4, i3, i2);
        gregorianCalendar.set(14, i);
        char timeInMillis = gregorianCalendar.getTimeInMillis();
        char c = timeInMillis;
        Integer num = null;
        if (z3) {
            c = timeInMillis;
            num = null;
            if (z2) {
                if (Character.toUpperCase(group.charAt(0)) == 'Z') {
                    i5 = 0;
                } else {
                    i5 = (Integer.parseInt(matcher.group(11)) * 60) + Integer.parseInt(matcher.group(12));
                    if (matcher.group(10).charAt(0) == '-') {
                        i5 = -i5;
                    }
                    timeInMillis -= i5 * 60000;
                }
                num = Integer.valueOf(i5);
                c = timeInMillis;
            }
        }
        return new zzbw(!z3, c, num);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbw)) {
            return false;
        }
        zzbw zzbwVar = (zzbw) obj;
        return this.zzfp == zzbwVar.zzfp && this.value == zzbwVar.value && this.zzfq == zzbwVar.zzfq;
    }

    public final int hashCode() {
        return Arrays.hashCode(new long[]{this.value, (this.zzfp ? 1 : null) == 1 ? 1 : 0, this.zzfq});
    }

    public final String toString() {
        return zzbx();
    }

    public final String zzbx() {
        StringBuilder sb = new StringBuilder();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(GMT);
        gregorianCalendar.setTimeInMillis(this.value + (this.zzfq * 60000));
        zza(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        zza(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        zza(sb, gregorianCalendar.get(5), 2);
        if (!this.zzfp) {
            sb.append('T');
            zza(sb, gregorianCalendar.get(11), 2);
            sb.append(':');
            zza(sb, gregorianCalendar.get(12), 2);
            sb.append(':');
            zza(sb, gregorianCalendar.get(13), 2);
            if (gregorianCalendar.isSet(14)) {
                sb.append('.');
                zza(sb, gregorianCalendar.get(14), 3);
            }
            int i = this.zzfq;
            if (i == 0) {
                sb.append('Z');
            } else {
                if (i > 0) {
                    sb.append('+');
                } else {
                    sb.append('-');
                    i = -i;
                }
                zza(sb, i / 60, 2);
                sb.append(':');
                zza(sb, i % 60, 2);
            }
        }
        return sb.toString();
    }
}
