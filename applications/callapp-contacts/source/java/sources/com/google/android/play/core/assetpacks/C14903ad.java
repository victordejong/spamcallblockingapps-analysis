package com.google.android.play.core.assetpacks;

import android.os.ParcelFileDescriptor;
import com.google.android.play.core.internal.AbstractC15037ba;
import com.google.android.play.core.internal.C15088x;
import com.google.android.play.core.tasks.AbstractC15178b;
import com.google.android.play.core.tasks.AbstractC15179c;
import com.google.android.play.core.tasks.AbstractC15180d;
import com.google.android.play.core.tasks.C15181e;
import com.google.android.play.core.tasks.C15182f;
import com.google.android.play.core.tasks.C15196t;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
/* renamed from: com.google.android.play.core.assetpacks.ad */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ad.class */
public final class C14903ad {

    /* renamed from: a */
    private final AbstractC15037ba<AbstractC14972cs> f54384a;

    public C14903ad(AbstractC15037ba<AbstractC14972cs> abstractC15037ba) {
        this.f54384a = abstractC15037ba;
    }

    /* renamed from: a */
    public final InputStream m9787a(int i, String str, String str2, int i2) {
        AbstractC15180d<ParcelFileDescriptor> mo9682b = this.f54384a.mo9335a().mo9682b(i, str, str2, i2);
        try {
            C15088x.m9480a(mo9682b, "Task must not be null");
            if (!mo9682b.mo9321a()) {
                C15196t c15196t = new C15196t(null);
                mo9682b.mo9314a(C15181e.f55006b, (AbstractC15179c<? super ParcelFileDescriptor>) c15196t);
                mo9682b.mo9315a(C15181e.f55006b, (AbstractC15178b) c15196t);
                c15196t.f55032a.await();
            }
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) C15182f.m9330a((AbstractC15180d<Object>) mo9682b);
            if (parcelFileDescriptor != null && parcelFileDescriptor.getFileDescriptor() != null) {
                return new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
            }
            throw new C14911al(String.format("Corrupted ParcelFileDescriptor, session %s packName %s sliceId %s, chunkNumber %s", Integer.valueOf(i), str, str2, Integer.valueOf(i2)), i);
        } catch (InterruptedException e) {
            throw new C14911al("Extractor was interrupted while waiting for chunk file.", e, i);
        } catch (ExecutionException e2) {
            throw new C14911al(String.format("Error opening chunk file, session %s packName %s sliceId %s, chunkNumber %s", Integer.valueOf(i), str, str2, Integer.valueOf(i2)), e2, i);
        }
    }
}
