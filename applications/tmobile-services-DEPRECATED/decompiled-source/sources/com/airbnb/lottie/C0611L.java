package com.airbnb.lottie;

import androidx.annotation.RestrictTo;
import androidx.core.p004os.TraceCompat;
@RestrictTo
/* renamed from: com.airbnb.lottie.L */
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/L.class */
public class C0611L {

    /* renamed from: a */
    public static boolean f5670a = false;

    /* renamed from: b */
    private static boolean f5671b = false;

    /* renamed from: c */
    private static String[] f5672c;

    /* renamed from: d */
    private static long[] f5673d;

    /* renamed from: e */
    private static int f5674e;

    /* renamed from: f */
    private static int f5675f;

    /* renamed from: a */
    public static void m16372a(String str) {
        if (f5671b) {
            int i = f5674e;
            if (i == 20) {
                f5675f++;
                return;
            }
            f5672c[i] = str;
            f5673d[i] = System.nanoTime();
            TraceCompat.m19438a(str);
            f5674e++;
        }
    }

    /* renamed from: b */
    public static float m16371b(String str) {
        int i = f5675f;
        if (i > 0) {
            f5675f = i - 1;
            return 0.0f;
        } else if (!f5671b) {
            return 0.0f;
        } else {
            int i2 = f5674e - 1;
            f5674e = i2;
            if (i2 == -1) {
                throw new IllegalStateException("Can't end trace section. There are none.");
            } else if (str.equals(f5672c[i2])) {
                TraceCompat.m19437b();
                return ((float) (System.nanoTime() - f5673d[f5674e])) / 1000000.0f;
            } else {
                throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + f5672c[f5674e] + ".");
            }
        }
    }
}
