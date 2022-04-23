package com.bytedance.sdk.openadsdk.k;

import com.bytedance.sdk.openadsdk.k.g.d;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/h.class */
class h {

    /* renamed from: a  reason: collision with root package name */
    private final RandomAccessFile f9777a;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/k/h$a.class */
    static class a extends Exception {
        a(Throwable th) {
            super(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(File file, String str) throws a {
        try {
            this.f9777a = new RandomAccessFile(file, str);
        } catch (FileNotFoundException e) {
            throw new a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(byte[] bArr) throws a {
        try {
            return this.f9777a.read(bArr);
        } catch (IOException e) {
            throw new a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        d.a(this.f9777a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j) throws a {
        try {
            this.f9777a.seek(j);
        } catch (IOException e) {
            throw new a(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(byte[] bArr, int i, int i2) throws a {
        try {
            this.f9777a.write(bArr, i, i2);
        } catch (IOException e) {
            throw new a(e);
        }
    }
}
