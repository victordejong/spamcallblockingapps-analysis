package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ao.class */
final class ao extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final bl f31121a = new bl();

    /* renamed from: b  reason: collision with root package name */
    private final File f31122b;

    /* renamed from: c  reason: collision with root package name */
    private final by f31123c;

    /* renamed from: d  reason: collision with root package name */
    private long f31124d;
    private long e;
    private FileOutputStream f;
    private cd g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(File file, by byVar) {
        this.f31122b = file;
        this.f31123c = byVar;
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
            if (this.f31124d == 0) {
                i5 = i4;
                i6 = i2;
                if (this.e == 0) {
                    int a2 = this.f31121a.a(bArr, i4, i2);
                    if (a2 != -1) {
                        i5 = i4 + a2;
                        i6 = i2 - a2;
                        cd a3 = this.f31121a.a();
                        this.g = a3;
                        if (a3.e) {
                            this.f31124d = 0L;
                            this.f31123c.b(this.g.f, this.g.f.length);
                            this.e = this.g.f.length;
                        } else if (!this.g.b() || this.g.a()) {
                            byte[] bArr2 = this.g.f;
                            this.f31123c.b(bArr2, bArr2.length);
                            this.f31124d = this.g.f31230b;
                        } else {
                            this.f31123c.a(this.g.f);
                            File file = new File(this.f31122b, this.g.f31229a);
                            file.getParentFile().mkdirs();
                            this.f31124d = this.g.f31230b;
                            this.f = new FileOutputStream(file);
                        }
                    } else {
                        return;
                    }
                }
            }
            if (this.g.a()) {
                i4 = i5;
                i2 = i6;
            } else {
                if (this.g.e) {
                    this.f31123c.a(this.e, bArr, i5, i6);
                    this.e += i6;
                    i3 = i6;
                } else if (this.g.b()) {
                    int min = (int) Math.min(i6, this.f31124d);
                    this.f.write(bArr, i5, min);
                    long j = this.f31124d - min;
                    this.f31124d = j;
                    i3 = min;
                    if (j == 0) {
                        this.f.close();
                        i3 = min;
                    }
                } else {
                    i3 = (int) Math.min(i6, this.f31124d);
                    this.f31123c.a((this.g.f.length + this.g.f31230b) - this.f31124d, bArr, i5, i3);
                    this.f31124d -= i3;
                }
                i4 = i5 + i3;
                i2 = i6 - i3;
            }
        }
    }
}
