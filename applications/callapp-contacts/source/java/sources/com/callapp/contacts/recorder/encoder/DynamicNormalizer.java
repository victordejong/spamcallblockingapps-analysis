package com.callapp.contacts.recorder.encoder;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/recorder/encoder/DynamicNormalizer.class */
public class DynamicNormalizer {

    /* renamed from: a */
    private long f27436a;

    /* renamed from: b */
    private final double[] f27437b;

    /* renamed from: c */
    private final int f27438c;

    /* renamed from: d */
    private final int f27439d;

    /* renamed from: e */
    private final double f27440e;

    /* renamed from: f */
    private final double f27441f;

    /* renamed from: g */
    private final double f27442g;

    /* renamed from: h */
    private final double f27443h;

    /* renamed from: i */
    private final double f27444i;

    /* renamed from: j */
    private final double[] f27445j;

    /* renamed from: k */
    private int f27446k;

    /* renamed from: l */
    private double f27447l;

    /* renamed from: m */
    private double f27448m;

    /* renamed from: n */
    private double f27449n;

    public DynamicNormalizer(int i, int i2, double d, double d2, double d3, double d4, double d5) {
        this.f27438c = i;
        this.f27439d = i2;
        this.f27440e = d;
        this.f27441f = d2;
        this.f27442g = d3;
        this.f27443h = d4;
        this.f27444i = d5;
        this.f27437b = new double[i * i2];
        this.f27445j = new double[i2];
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [double] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* renamed from: a */
    public final double m27835a(double d) {
        ?? r0 = (this.f27436a + 1) % this.f27438c;
        if (r0 == 1) {
            int i = this.f27446k + 1;
            this.f27446k = i;
            int i2 = this.f27439d;
            if (i > i2) {
                this.f27446k = i2;
                double[] dArr = this.f27445j;
                System.arraycopy(dArr, 1, dArr, 0, i2 - 1);
            }
            this.f27447l = 0.0d;
        }
        double d2 = this.f27447l + (d * d);
        this.f27447l = d2;
        char c = r0;
        if (r0 == 0) {
            c = this.f27438c;
        }
        double sqrt = Math.sqrt(d2) / c;
        double[] dArr2 = this.f27445j;
        int i3 = this.f27446k;
        dArr2[i3 - 1] = sqrt;
        double[] copyOfRange = Arrays.copyOfRange(dArr2, 0, i3);
        Arrays.sort(copyOfRange);
        int i4 = this.f27446k;
        double max = Math.max(copyOfRange[i4 / 2], this.f27445j[i4 / 2]);
        this.f27448m = max;
        char max2 = max < this.f27440e ? this.f27441f / Math.max(max, this.f27442g) : (char) 0;
        double d3 = this.f27449n;
        if (d3 < max2) {
            this.f27449n = Math.min(max2, d3 + this.f27443h);
        } else if (d3 > max2) {
            this.f27449n = Math.max(max2, d3 - this.f27444i);
        }
        double[] dArr3 = this.f27437b;
        long j = this.f27436a;
        long j2 = 1 + j;
        this.f27436a = j2;
        dArr3[(int) (j % dArr3.length)] = d;
        if (j2 < dArr3.length / 2) {
            return 0.0d;
        }
        double d4 = this.f27449n * dArr3[(int) ((j2 + (dArr3.length / 2)) % dArr3.length)];
        if (d4 > 1.0d) {
            return 1.0d;
        }
        if (d4 >= -1.0d) {
            return d4;
        }
        return -1.0d;
    }
}
