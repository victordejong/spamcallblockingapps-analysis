package com.google.android.play.core.assetpacks;

import android.os.ParcelFileDescriptor;
import com.google.android.play.core.internal.AbstractC8509p0;
import com.google.android.play.core.tasks.C8573e;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
/* renamed from: com.google.android.play.core.assetpacks.c0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/c0.class */
public final class C8371c0 {

    /* renamed from: a */
    private final AbstractC8509p0<AbstractC8433r2> f37677a;

    public C8371c0(AbstractC8509p0<AbstractC8433r2> abstractC8509p0) {
        this.f37677a = abstractC8509p0;
    }

    /* renamed from: a */
    public final InputStream m3771a(int i, String str, String str2, int i2) {
        try {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) C8573e.m3326b(this.f37677a.m3482a().mo3681e(i, str, str2, i2));
            if (parcelFileDescriptor != null && parcelFileDescriptor.getFileDescriptor() != null) {
                return new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
            }
            throw new C8369bk(String.format("Corrupted ParcelFileDescriptor, session %s packName %s sliceId %s, chunkNumber %s", Integer.valueOf(i), str, str2, Integer.valueOf(i2)), i);
        } catch (InterruptedException e) {
            throw new C8369bk("Extractor was interrupted while waiting for chunk file.", e, i);
        } catch (ExecutionException e2) {
            throw new C8369bk(String.format("Error opening chunk file, session %s packName %s sliceId %s, chunkNumber %s", Integer.valueOf(i), str, str2, Integer.valueOf(i2)), e2, i);
        }
    }
}
