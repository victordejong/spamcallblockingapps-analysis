package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.j7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/j7.class */
final class C7422j7 implements AbstractC7584v6 {

    /* renamed from: a */
    private final AbstractC7623y6 f34557a;

    /* renamed from: b */
    private final String f34558b;

    /* renamed from: c */
    private final Object[] f34559c;

    /* renamed from: d */
    private final int f34560d;

    public C7422j7(AbstractC7623y6 abstractC7623y6, String str, Object[] objArr) {
        int i;
        Throwable e;
        String str2;
        this.f34557a = abstractC7623y6;
        this.f34558b = str;
        this.f34559c = objArr;
        try {
            i = str.charAt(0);
        } catch (StringIndexOutOfBoundsException e2) {
            char[] charArray = str.toCharArray();
            str = new String(charArray);
            try {
                i = str.charAt(0);
            } catch (StringIndexOutOfBoundsException e3) {
                try {
                    char[] cArr = new char[str.length()];
                    str.getChars(0, str.length(), cArr, 0);
                    str2 = new String(cArr);
                } catch (ArrayIndexOutOfBoundsException e4) {
                    e = e4;
                } catch (StringIndexOutOfBoundsException e5) {
                    e = e5;
                }
                try {
                    i = str2.charAt(0);
                    str = str2;
                } catch (ArrayIndexOutOfBoundsException | StringIndexOutOfBoundsException e6) {
                    e = e6;
                    str = str2;
                    throw new IllegalStateException(String.format("Failed parsing '%s' with charArray.length of %d", str, Integer.valueOf(charArray.length)), e);
                }
            }
        }
        if (i < 55296) {
            this.f34560d = i;
            return;
        }
        int i2 = i & 8191;
        int i3 = 1;
        int i4 = 13;
        while (true) {
            int charAt = str.charAt(i3);
            if (charAt < 55296) {
                this.f34560d = (charAt << i4) | i2;
                return;
            }
            i2 |= (charAt & 8191) << i4;
            i3++;
            i4 += 13;
        }
    }

    /* renamed from: a */
    public final String m7242a() {
        return this.f34558b;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7584v6
    /* renamed from: b */
    public final AbstractC7623y6 mo6831b() {
        return this.f34557a;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7584v6
    /* renamed from: c */
    public final int mo6830c() {
        return (this.f34560d & 1) == 1 ? 1 : 2;
    }

    /* renamed from: d */
    public final Object[] m7241d() {
        return this.f34559c;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7584v6
    public final boolean zza() {
        return (this.f34560d & 2) == 2;
    }
}
