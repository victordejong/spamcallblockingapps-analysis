package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/hz.class */
final class hz implements hl {

    /* renamed from: a  reason: collision with root package name */
    final ho f29106a;

    /* renamed from: b  reason: collision with root package name */
    final String f29107b;

    /* renamed from: c  reason: collision with root package name */
    final Object[] f29108c;

    /* renamed from: d  reason: collision with root package name */
    private final int f29109d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hz(ho hoVar, String str, Object[] objArr) {
        char c2;
        Throwable e;
        String str2;
        this.f29106a = hoVar;
        this.f29107b = str;
        this.f29108c = objArr;
        int i = 1;
        try {
            c2 = str.charAt(0);
        } catch (StringIndexOutOfBoundsException e2) {
            char[] charArray = str.toCharArray();
            str = new String(charArray);
            try {
                c2 = str.charAt(0);
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
                    c2 = str2.charAt(0);
                    str = str2;
                } catch (ArrayIndexOutOfBoundsException | StringIndexOutOfBoundsException e6) {
                    e = e6;
                    str = str2;
                    throw new IllegalStateException(String.format("Failed parsing '%s' with charArray.length of %d", str, Integer.valueOf(charArray.length)), e);
                }
            }
        }
        if (c2 < 55296) {
            this.f29109d = c2;
            return;
        }
        int i2 = c2 & 8191;
        int i3 = 13;
        while (true) {
            char charAt = str.charAt(i);
            if (charAt >= 55296) {
                i2 |= (charAt & 8191) << i3;
                i3 += 13;
                i++;
            } else {
                this.f29109d = (charAt << i3) | i2;
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.hl
    public final boolean a() {
        return (this.f29109d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.measurement.hl
    public final ho b() {
        return this.f29106a;
    }

    @Override // com.google.android.gms.internal.measurement.hl
    public final int c() {
        return (this.f29109d & 1) == 1 ? 1 : 2;
    }
}
