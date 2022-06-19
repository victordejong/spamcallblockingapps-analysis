package com.bytedance.sdk.openadsdk.p176k;

import com.bytedance.sdk.openadsdk.p176k.p183g.C5030d;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* renamed from: com.bytedance.sdk.openadsdk.k.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/h.class */
class C5032h {

    /* renamed from: a */
    private final RandomAccessFile f18224a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.k.h$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/h$a.class */
    public static class C5033a extends Exception {
        C5033a(Throwable th) {
            super(th);
        }
    }

    public C5032h(File file, String str) throws C5033a {
        try {
            this.f18224a = new RandomAccessFile(file, str);
        } catch (FileNotFoundException e) {
            throw new C5033a(e);
        }
    }

    /* renamed from: a */
    public int m33208a(byte[] bArr) throws C5033a {
        try {
            return this.f18224a.read(bArr);
        } catch (IOException e) {
            throw new C5033a(e);
        }
    }

    /* renamed from: a */
    public void m33210a() {
        C5030d.m33226a(this.f18224a);
    }

    /* renamed from: a */
    public void m33209a(long j) throws C5033a {
        try {
            this.f18224a.seek(j);
        } catch (IOException e) {
            throw new C5033a(e);
        }
    }

    /* renamed from: a */
    public void m33207a(byte[] bArr, int i, int i2) throws C5033a {
        try {
            this.f18224a.write(bArr, i, i2);
        } catch (IOException e) {
            throw new C5033a(e);
        }
    }
}
