package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fv2.class */
abstract class fv2 extends eu2<String> {

    /* renamed from: f */
    final CharSequence f23153f;

    /* renamed from: g */
    final ku2 f23154g;

    /* renamed from: h */
    int f23155h = 0;

    /* renamed from: i */
    int f23156i = Integer.MAX_VALUE;

    public fv2(hv2 hv2Var, CharSequence charSequence) {
        ku2 ku2Var;
        ku2Var = hv2Var.f24052a;
        this.f23154g = ku2Var;
        this.f23153f = charSequence;
    }

    @Override // com.google.android.gms.internal.ads.eu2
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ String mo15043a() {
        String str;
        int i;
        int i2 = this.f23155h;
        while (true) {
            int i3 = this.f23155h;
            if (i3 == -1) {
                m15374b();
                str = null;
                break;
            }
            int mo8172c = mo8172c(i3);
            if (mo8172c == -1) {
                mo8172c = this.f23153f.length();
                this.f23155h = -1;
                i = -1;
            } else {
                i = mo8171d(mo8172c);
                this.f23155h = i;
            }
            if (i == i2) {
                int i4 = i + 1;
                this.f23155h = i4;
                if (i4 > this.f23153f.length()) {
                    this.f23155h = -1;
                }
            } else {
                if (i2 < mo8172c) {
                    this.f23153f.charAt(i2);
                }
                if (i2 < mo8172c) {
                    this.f23153f.charAt(mo8172c - 1);
                }
                int i5 = this.f23156i;
                if (i5 == 1) {
                    int length = this.f23153f.length();
                    this.f23155h = -1;
                    mo8172c = length;
                    if (length > i2) {
                        this.f23153f.charAt(length - 1);
                        mo8172c = length;
                    }
                } else {
                    this.f23156i = i5 - 1;
                }
                str = this.f23153f.subSequence(i2, mo8172c).toString();
            }
        }
        return str;
    }

    /* renamed from: c */
    abstract int mo8172c(int i);

    /* renamed from: d */
    abstract int mo8171d(int i);
}
