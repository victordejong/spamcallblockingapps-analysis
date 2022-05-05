package com.flurry.sdk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.do */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/do.class */
public final class C2987do implements AbstractC3417kl<Bitmap> {
    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ Bitmap mo32526a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        return BitmapFactory.decodeStream(inputStream);
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public final /* synthetic */ void mo32525a(OutputStream outputStream, Bitmap bitmap) throws IOException {
        Bitmap bitmap2 = bitmap;
        if (outputStream != null && bitmap2 != null) {
            throw new UnsupportedOperationException("Serialization for bitmaps is not yet implemented");
        }
    }
}
