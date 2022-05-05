package kotlin.time;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020��H\u0002¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H��¢\u0006\u0004\b\b\u0010\t\u001a\u001f\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020��H��¢\u0006\u0004\b\n\u0010\u000b\u001a\u001f\u0010\f\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020��H��¢\u0006\u0004\b\f\u0010\u000b\"\"\u0010\u000f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u000e0\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010\"\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013\"\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0013\"\u001c\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"", "decimals", "Ljava/text/DecimalFormat;", "createFormatForDecimals", "(I)Ljava/text/DecimalFormat;", "", FirebaseAnalytics.Param.VALUE, "", "formatScientific", "(D)Ljava/lang/String;", "formatToExactDecimals", "(DI)Ljava/lang/String;", "formatUpToDecimals", "", "Ljava/lang/ThreadLocal;", "precisionFormats", "[Ljava/lang/ThreadLocal;", "Ljava/text/DecimalFormatSymbols;", "rootNegativeExpFormatSymbols", "Ljava/text/DecimalFormatSymbols;", "rootPositiveExpFormatSymbols", "scientificFormat", "Ljava/lang/ThreadLocal;", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/time/FormatToDecimalsKt.class */
public final class FormatToDecimalsKt {

    /* renamed from: a */
    private static final DecimalFormatSymbols f21066a;

    /* renamed from: b */
    private static final DecimalFormatSymbols f21067b;

    /* renamed from: c */
    private static final ThreadLocal<DecimalFormat>[] f21068c;

    /* renamed from: d */
    private static final ThreadLocal<DecimalFormat> f21069d;

    static {
        DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.ROOT);
        decimalFormatSymbols.setExponentSeparator("e");
        f21066a = decimalFormatSymbols;
        DecimalFormatSymbols decimalFormatSymbols2 = new DecimalFormatSymbols(Locale.ROOT);
        decimalFormatSymbols2.setExponentSeparator("e+");
        f21067b = decimalFormatSymbols2;
        ThreadLocal<DecimalFormat>[] threadLocalArr = new ThreadLocal[4];
        for (int i = 0; i < 4; i++) {
            threadLocalArr[i] = new ThreadLocal<>();
        }
        f21068c = threadLocalArr;
        f21069d = new ThreadLocal<>();
    }

    /* renamed from: a */
    private static final DecimalFormat m1391a(int i) {
        DecimalFormat decimalFormat = new DecimalFormat("0", f21066a);
        if (i > 0) {
            decimalFormat.setMinimumFractionDigits(i);
        }
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        return decimalFormat;
    }

    @NotNull
    /* renamed from: b */
    public static final String m1390b(double d) {
        ThreadLocal<DecimalFormat> threadLocal = f21069d;
        DecimalFormat decimalFormat = threadLocal.get();
        if (decimalFormat == null) {
            decimalFormat = new DecimalFormat("0E0", f21066a);
            decimalFormat.setMinimumFractionDigits(2);
            threadLocal.set(decimalFormat);
        }
        DecimalFormat decimalFormat2 = decimalFormat;
        decimalFormat2.setDecimalFormatSymbols((d >= ((double) 1) || d <= ((double) (-1))) ? f21067b : f21066a);
        String format = decimalFormat2.format(d);
        Intrinsics.m1831d(format, "scientificFormat.getOrSe… }\n        .format(value)");
        return format;
    }

    @NotNull
    /* renamed from: c */
    public static final String m1389c(double d, int i) {
        DecimalFormat decimalFormat;
        ThreadLocal<DecimalFormat>[] threadLocalArr = f21068c;
        if (i < threadLocalArr.length) {
            ThreadLocal<DecimalFormat> threadLocal = threadLocalArr[i];
            DecimalFormat decimalFormat2 = threadLocal.get();
            if (decimalFormat2 == null) {
                decimalFormat2 = m1391a(i);
                threadLocal.set(decimalFormat2);
            }
            decimalFormat = decimalFormat2;
        } else {
            decimalFormat = m1391a(i);
        }
        String format = decimalFormat.format(d);
        Intrinsics.m1831d(format, "format.format(value)");
        return format;
    }

    @NotNull
    /* renamed from: d */
    public static final String m1388d(double d, int i) {
        DecimalFormat a = m1391a(0);
        a.setMaximumFractionDigits(i);
        String format = a.format(d);
        Intrinsics.m1831d(format, "createFormatForDecimals(… }\n        .format(value)");
        return format;
    }
}
