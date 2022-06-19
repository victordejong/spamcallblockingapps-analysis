package com.google.android.play.core.assetpacks;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.ae */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ae.class */
public final class C14904ae extends FilterInputStream {

    /* renamed from: a */
    long f54385a;

    /* renamed from: d */
    private final C14938bl f54388d = new C14938bl();

    /* renamed from: e */
    private byte[] f54389e = new byte[4096];

    /* renamed from: b */
    boolean f54386b = false;

    /* renamed from: c */
    boolean f54387c = false;

    public C14904ae(InputStream inputStream) {
        super(inputStream);
    }

    /* renamed from: a */
    private final int m9784a(byte[] bArr, int i, int i2) throws IOException {
        return Math.max(0, super.read(bArr, i, i2));
    }

    /* renamed from: a */
    private final boolean m9785a(int i) throws IOException {
        int m9784a = m9784a(this.f54389e, 0, i);
        if (m9784a != i) {
            int i2 = i - m9784a;
            if (m9784a(this.f54389e, m9784a, i2) != i2) {
                this.f54388d.m9738a(this.f54389e, 0, m9784a);
                return false;
            }
        }
        this.f54388d.m9738a(this.f54389e, 0, i);
        return true;
    }

    /* renamed from: a */
    public final C14957cd m9786a() throws IOException {
        int i;
        byte[] bArr;
        if (this.f54385a <= 0) {
            if (!this.f54386b) {
            }
            return new C14957cd(null, -1L, -1, false, false, null);
        }
        do {
            bArr = this.f54389e;
        } while (read(bArr, 0, bArr.length) != -1);
        if (!this.f54386b || this.f54387c) {
            return new C14957cd(null, -1L, -1, false, false, null);
        }
        if (!m9785a(30)) {
            this.f54386b = true;
            return this.f54388d.m9740a();
        }
        C14957cd m9740a = this.f54388d.m9740a();
        if (m9740a.f54604e) {
            this.f54387c = true;
            return m9740a;
        } else if (m9740a.f54601b == 4294967295L) {
            throw new C14911al("Files bigger than 4GiB are not supported.");
        } else {
            int i2 = this.f54388d.f54531a - 30;
            long j = i2;
            int length = this.f54389e.length;
            if (j > length) {
                do {
                    i = length + length;
                    length = i;
                } while (i < j);
                this.f54389e = Arrays.copyOf(this.f54389e, i);
            }
            if (!m9785a(i2)) {
                this.f54386b = true;
                return this.f54388d.m9740a();
            }
            C14957cd m9740a2 = this.f54388d.m9740a();
            this.f54385a = m9740a2.f54601b;
            return m9740a2;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.f54385a;
        if (j <= 0 || this.f54386b) {
            return -1;
        }
        int m9784a = m9784a(bArr, i, (int) Math.min(j, i2));
        this.f54385a -= m9784a;
        int i3 = m9784a;
        if (m9784a == 0) {
            this.f54386b = true;
            i3 = 0;
        }
        return i3;
    }
}
