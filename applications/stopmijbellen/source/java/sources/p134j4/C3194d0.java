package p134j4;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
import p189o4.AbstractC3879p;
import p220r4.C4195d;
/* renamed from: j4.d0 */
/* loaded from: classes-dex2jar.jar:j4/d0.class */
public final class C3194d0 {

    /* renamed from: a */
    public final AbstractC3879p f10758a;

    public C3194d0(AbstractC3879p abstractC3879p) {
        this.f10758a = abstractC3879p;
    }

    /* renamed from: a */
    public final InputStream m2559a(int i, String str, String str2, int i2) {
        try {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) C4195d.m1299a(((AbstractC3228l2) this.f10758a.zza()).mo2522d(i, str, str2, i2));
            if (parcelFileDescriptor != null && parcelFileDescriptor.getFileDescriptor() != null) {
                return new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
            }
            throw new C3233n0(String.format("Corrupted ParcelFileDescriptor, session %s packName %s sliceId %s, chunkNumber %s", Integer.valueOf(i), str, str2, Integer.valueOf(i2)), i);
        } catch (InterruptedException e) {
            throw new C3233n0("Extractor was interrupted while waiting for chunk file.", e, i);
        } catch (ExecutionException e2) {
            throw new C3233n0(String.format("Error opening chunk file, session %s packName %s sliceId %s, chunkNumber %s", Integer.valueOf(i), str, str2, Integer.valueOf(i2)), e2, i);
        }
    }
}
