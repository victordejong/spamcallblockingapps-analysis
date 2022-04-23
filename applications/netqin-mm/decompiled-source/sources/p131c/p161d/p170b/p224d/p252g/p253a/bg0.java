package p131c.p161d.p170b.p224d.p252g.p253a;

import android.util.Base64OutputStream;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbbq;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
@VisibleForTesting
/* renamed from: c.d.b.d.g.a.bg0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/bg0.class */
public final class bg0 {
    @VisibleForTesting

    /* renamed from: a */
    public ByteArrayOutputStream f12474a = new ByteArrayOutputStream(4096);
    @VisibleForTesting

    /* renamed from: b */
    public Base64OutputStream f12475b = new Base64OutputStream(this.f12474a, 10);

    /* renamed from: a */
    public final void m27119a(byte[] bArr) throws IOException {
        this.f12475b.write(bArr);
    }

    /* JADX WARN: Finally extract failed */
    public final String toString() {
        try {
            this.f12475b.close();
        } catch (IOException e) {
            zzbbq.m15855b("HashManager: Unable to convert to Base64.", e);
        }
        try {
            try {
                this.f12474a.close();
                String byteArrayOutputStream = this.f12474a.toString();
                this.f12474a = null;
                this.f12475b = null;
                return byteArrayOutputStream;
            } catch (IOException e2) {
                zzbbq.m15855b("HashManager: Unable to convert to Base64.", e2);
                this.f12474a = null;
                this.f12475b = null;
                return "";
            }
        } catch (Throwable th) {
            this.f12474a = null;
            this.f12475b = null;
            throw th;
        }
    }
}
