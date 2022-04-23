package com.google.android.play.core.assetpacks;

import android.os.ParcelFileDescriptor;
import com.google.android.play.core.internal.ba;
import com.google.android.play.core.internal.x;
import com.google.android.play.core.tasks.b;
import com.google.android.play.core.tasks.c;
import com.google.android.play.core.tasks.d;
import com.google.android.play.core.tasks.e;
import com.google.android.play.core.tasks.f;
import com.google.android.play.core.tasks.t;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ad.class */
final class ad {

    /* renamed from: a  reason: collision with root package name */
    private final ba<cs> f31092a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(ba<cs> baVar) {
        this.f31092a = baVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final InputStream a(int i, String str, String str2, int i2) {
        d<ParcelFileDescriptor> b2 = this.f31092a.a().b(i, str, str2, i2);
        try {
            x.a(b2, "Task must not be null");
            if (!b2.a()) {
                t tVar = new t(null);
                b2.a(e.f31559b, (c<? super ParcelFileDescriptor>) tVar);
                b2.a(e.f31559b, (b) tVar);
                tVar.f31584a.await();
            }
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) f.a((d<Object>) b2);
            if (parcelFileDescriptor != null && parcelFileDescriptor.getFileDescriptor() != null) {
                return new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
            }
            throw new al(String.format("Corrupted ParcelFileDescriptor, session %s packName %s sliceId %s, chunkNumber %s", Integer.valueOf(i), str, str2, Integer.valueOf(i2)), i);
        } catch (InterruptedException e) {
            throw new al("Extractor was interrupted while waiting for chunk file.", e, i);
        } catch (ExecutionException e2) {
            throw new al(String.format("Error opening chunk file, session %s packName %s sliceId %s, chunkNumber %s", Integer.valueOf(i), str, str2, Integer.valueOf(i2)), e2, i);
        }
    }
}
