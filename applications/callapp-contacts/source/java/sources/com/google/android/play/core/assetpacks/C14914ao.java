package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.google.android.play.core.assetpacks.ao */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ao.class */
final class C14914ao extends OutputStream {

    /* renamed from: a */
    private final C14938bl f54455a = new C14938bl();

    /* renamed from: b */
    private final File f54456b;

    /* renamed from: c */
    private final C14951by f54457c;

    /* renamed from: d */
    private long f54458d;

    /* renamed from: e */
    private long f54459e;

    /* renamed from: f */
    private FileOutputStream f54460f;

    /* renamed from: g */
    private C14957cd f54461g;

    public C14914ao(File file, C14951by c14951by) {
        this.f54456b = file;
        this.f54457c = c14951by;
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        write(new byte[]{(byte) i});
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4 = i;
        while (i2 > 0) {
            int i5 = i4;
            int i6 = i2;
            if (this.f54458d == 0) {
                i5 = i4;
                i6 = i2;
                if (this.f54459e == 0) {
                    int m9738a = this.f54455a.m9738a(bArr, i4, i2);
                    if (m9738a == -1) {
                        return;
                    }
                    i5 = i4 + m9738a;
                    i6 = i2 - m9738a;
                    C14957cd m9740a = this.f54455a.m9740a();
                    this.f54461g = m9740a;
                    if (m9740a.f54604e) {
                        this.f54458d = 0L;
                        this.f54457c.m9722b(this.f54461g.f54605f, this.f54461g.f54605f.length);
                        this.f54459e = this.f54461g.f54605f.length;
                    } else if (!this.f54461g.m9709b() || this.f54461g.m9711a()) {
                        byte[] bArr2 = this.f54461g.f54605f;
                        this.f54457c.m9722b(bArr2, bArr2.length);
                        this.f54458d = this.f54461g.f54601b;
                    } else {
                        this.f54457c.m9727a(this.f54461g.f54605f);
                        File file = new File(this.f54456b, this.f54461g.f54600a);
                        file.getParentFile().mkdirs();
                        this.f54458d = this.f54461g.f54601b;
                        this.f54460f = new FileOutputStream(file);
                    }
                }
            }
            if (this.f54461g.m9711a()) {
                i4 = i5;
                i2 = i6;
            } else {
                if (this.f54461g.f54604e) {
                    this.f54457c.m9730a(this.f54459e, bArr, i5, i6);
                    this.f54459e += i6;
                    i3 = i6;
                } else if (this.f54461g.m9709b()) {
                    int min = (int) Math.min(i6, this.f54458d);
                    this.f54460f.write(bArr, i5, min);
                    long j = this.f54458d - min;
                    this.f54458d = j;
                    i3 = min;
                    if (j == 0) {
                        this.f54460f.close();
                        i3 = min;
                    }
                } else {
                    i3 = (int) Math.min(i6, this.f54458d);
                    this.f54457c.m9730a((this.f54461g.f54605f.length + this.f54461g.f54601b) - this.f54458d, bArr, i5, i3);
                    this.f54458d -= i3;
                }
                i4 = i5 + i3;
                i2 = i6 - i3;
            }
        }
    }
}
