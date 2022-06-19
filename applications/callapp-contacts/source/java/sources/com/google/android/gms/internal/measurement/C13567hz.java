package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.hz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hz.class */
final class C13567hz implements AbstractC13553hl {

    /* renamed from: a */
    final AbstractC13556ho f50820a;

    /* renamed from: b */
    final String f50821b;

    /* renamed from: c */
    final Object[] f50822c;

    /* renamed from: d */
    private final int f50823d;

    public C13567hz(AbstractC13556ho abstractC13556ho, String str, Object[] objArr) {
        int i;
        Throwable e;
        String str2;
        this.f50820a = abstractC13556ho;
        this.f50821b = str;
        this.f50822c = objArr;
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
            this.f50823d = i;
            return;
        }
        int i2 = i & 8191;
        int i3 = 1;
        int i4 = 13;
        while (true) {
            int charAt = str.charAt(i3);
            if (charAt < 55296) {
                this.f50823d = (charAt << i4) | i2;
                return;
            }
            i2 |= (charAt & 8191) << i4;
            i3++;
            i4 += 13;
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13553hl
    /* renamed from: a */
    public final boolean mo12659a() {
        return (this.f50823d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13553hl
    /* renamed from: b */
    public final AbstractC13556ho mo12658b() {
        return this.f50820a;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13553hl
    /* renamed from: c */
    public final int mo12657c() {
        return (this.f50823d & 1) == 1 ? 1 : 2;
    }
}
