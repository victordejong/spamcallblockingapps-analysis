package com.tenor.android.core.loader.asset;

import android.content.Context;
import android.widget.ImageView;
import com.tenor.android.core.util.AbstractWeakReferenceUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/loader/asset/AssetLoader.class */
public class AssetLoader {
    public static <CTX extends Context> void loadAsset(CTX ctx, ImageView imageView, String str) {
        loadAsset(new WeakReference(ctx), imageView, str);
    }

    public static <CTX extends Context> void loadAsset(WeakReference<CTX> weakReference, ImageView imageView, String str) {
        byte[] byteArray;
        if (AbstractWeakReferenceUtils.isAlive(weakReference) && (byteArray = toByteArray(weakReference.get(), str)) != null) {
            ComponentCallbacks2C22222c.m8446e(weakReference.get()).load(byteArray).asGif().diskCacheStrategy(AbstractC22364k.f62124a).into(imageView);
        }
    }

    public static byte[] toByteArray(Context context, String str) {
        byte[] bArr;
        byte[] bArr2 = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            InputStream open = context.getAssets().open(str);
            byte[] bArr3 = new byte[65536];
            while (open.read(bArr3) != -1) {
                byteArrayOutputStream.write(bArr3);
            }
            bArr = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            bArr2 = bArr;
            open.close();
        } catch (IOException e) {
            bArr = bArr2;
        }
        return bArr;
    }
}
