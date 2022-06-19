package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.b5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/b5.class */
final class C7308b5 extends C7322c5 {

    /* renamed from: a */
    private final byte[] f34345a;

    /* renamed from: c */
    private int f34347c;

    /* renamed from: d */
    private int f34348d = Integer.MAX_VALUE;

    /* renamed from: b */
    private int f34346b = 0;

    public /* synthetic */ C7308b5(byte[] bArr, int i, int i2, boolean z, C7294a5 c7294a5) {
        super(null);
        this.f34345a = bArr;
    }

    /* renamed from: c */
    public final int m7666c(int i) {
        int i2 = this.f34348d;
        this.f34348d = 0;
        int i3 = this.f34346b + this.f34347c;
        this.f34346b = i3;
        if (i3 > 0) {
            this.f34347c = i3;
            this.f34346b = 0;
        } else {
            this.f34347c = 0;
        }
        return i2;
    }
}
