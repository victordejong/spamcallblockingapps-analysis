package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.a;
import com.google.android.exoplayer2.util.u;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/s.class */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private final u f21323a = new u(10);

    public final Metadata a(i iVar, a.AbstractC0433a aVar) throws IOException {
        Metadata metadata = null;
        int i = 0;
        while (true) {
            try {
                iVar.d(this.f21323a.f22335a, 0, 10);
                this.f21323a.d(0);
                if (this.f21323a.g() != 4801587) {
                    break;
                }
                this.f21323a.e(3);
                int n = this.f21323a.n();
                int i2 = n + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.f21323a.f22335a, 0, bArr, 0, 10);
                    iVar.d(bArr, 10, n);
                    metadata = new a(aVar).a(bArr, i2);
                } else {
                    iVar.c(n);
                }
                i += i2;
            } catch (EOFException e) {
            }
        }
        iVar.a();
        iVar.c(i);
        return metadata;
    }
}
