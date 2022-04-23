package com.google.android.play.core.assetpacks;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ae.class */
final class ae extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    long f31093a;

    /* renamed from: d  reason: collision with root package name */
    private final bl f31096d = new bl();
    private byte[] e = new byte[4096];

    /* renamed from: b  reason: collision with root package name */
    boolean f31094b = false;

    /* renamed from: c  reason: collision with root package name */
    boolean f31095c = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(InputStream inputStream) {
        super(inputStream);
    }

    private final int a(byte[] bArr, int i, int i2) throws IOException {
        return Math.max(0, super.read(bArr, i, i2));
    }

    private final boolean a(int i) throws IOException {
        int a2 = a(this.e, 0, i);
        if (a2 != i) {
            int i2 = i - a2;
            if (a(this.e, a2, i2) != i2) {
                this.f31096d.a(this.e, 0, a2);
                return false;
            }
        }
        this.f31096d.a(this.e, 0, i);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final cd a() throws IOException {
        int i;
        byte[] bArr;
        if (this.f31093a > 0) {
            do {
                bArr = this.e;
            } while (read(bArr, 0, bArr.length) != -1);
            if (!this.f31094b || this.f31095c) {
                return new cd(null, -1L, -1, false, false, null);
            }
            if (!a(30)) {
                this.f31094b = true;
                return this.f31096d.a();
            }
            cd a2 = this.f31096d.a();
            if (a2.e) {
                this.f31095c = true;
                return a2;
            } else if (a2.f31230b != 4294967295L) {
                int i2 = this.f31096d.f31179a - 30;
                long j = i2;
                int length = this.e.length;
                if (j > length) {
                    do {
                        i = length + length;
                        length = i;
                    } while (i < j);
                    this.e = Arrays.copyOf(this.e, i);
                }
                if (!a(i2)) {
                    this.f31094b = true;
                    return this.f31096d.a();
                }
                cd a3 = this.f31096d.a();
                this.f31093a = a3.f31230b;
                return a3;
            } else {
                throw new al("Files bigger than 4GiB are not supported.");
            }
        } else {
            if (!this.f31094b) {
            }
            return new cd(null, -1L, -1, false, false, null);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.f31093a;
        if (j <= 0 || this.f31094b) {
            return -1;
        }
        int a2 = a(bArr, i, (int) Math.min(j, i2));
        this.f31093a -= a2;
        int i3 = a2;
        if (a2 == 0) {
            this.f31094b = true;
            i3 = 0;
        }
        return i3;
    }
}
