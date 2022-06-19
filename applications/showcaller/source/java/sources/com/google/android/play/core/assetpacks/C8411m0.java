package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
/* renamed from: com.google.android.play.core.assetpacks.m0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/m0.class */
final class C8411m0 extends OutputStream {

    /* renamed from: d */
    private final C8400j1 f37846d = new C8400j1();

    /* renamed from: e */
    private final File f37847e;

    /* renamed from: f */
    private final C8451w1 f37848f;

    /* renamed from: g */
    private long f37849g;

    /* renamed from: h */
    private long f37850h;

    /* renamed from: i */
    private FileOutputStream f37851i;

    /* renamed from: j */
    private C8368b2 f37852j;

    public C8411m0(File file, C8451w1 c8451w1) {
        this.f37847e = file;
        this.f37848f = c8451w1;
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        write(new byte[]{(byte) i});
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = i;
        while (i2 > 0) {
            int i5 = i4;
            int i6 = i2;
            if (this.f37849g == 0) {
                i5 = i4;
                i6 = i2;
                if (this.f37850h == 0) {
                    int m3728a = this.f37846d.m3728a(bArr, i4, i2);
                    if (m3728a == -1) {
                        return;
                    }
                    i5 = i4 + m3728a;
                    i6 = i2 - m3728a;
                    C8368b2 m3727b = this.f37846d.m3727b();
                    this.f37852j = m3727b;
                    if (m3727b.m3773h()) {
                        this.f37849g = 0L;
                        this.f37848f.m3618m(this.f37852j.m3772i(), this.f37852j.m3772i().length);
                        this.f37850h = this.f37852j.m3772i().length;
                    } else if (!this.f37852j.m3778c() || this.f37852j.m3779b()) {
                        byte[] m3772i = this.f37852j.m3772i();
                        this.f37848f.m3618m(m3772i, m3772i.length);
                        this.f37849g = this.f37852j.m3776e();
                    } else {
                        this.f37848f.m3624g(this.f37852j.m3772i());
                        File file = new File(this.f37847e, this.f37852j.m3777d());
                        file.getParentFile().mkdirs();
                        this.f37849g = this.f37852j.m3776e();
                        this.f37851i = new FileOutputStream(file);
                    }
                }
            }
            if (this.f37852j.m3779b()) {
                i4 = i5;
                i2 = i6;
            } else {
                if (this.f37852j.m3773h()) {
                    this.f37848f.m3622i(this.f37850h, bArr, i5, i6);
                    this.f37850h += i6;
                    i3 = i6;
                } else if (this.f37852j.m3778c()) {
                    int min = (int) Math.min(i6, this.f37849g);
                    this.f37851i.write(bArr, i5, min);
                    long j = this.f37849g - min;
                    this.f37849g = j;
                    i3 = min;
                    if (j == 0) {
                        this.f37851i.close();
                        i3 = min;
                    }
                } else {
                    i3 = (int) Math.min(i6, this.f37849g);
                    this.f37848f.m3622i((this.f37852j.m3772i().length + this.f37852j.m3776e()) - this.f37849g, bArr, i5, i3);
                    this.f37849g -= i3;
                }
                i4 = i5 + i3;
                i2 = i6 - i3;
            }
        }
    }
}
