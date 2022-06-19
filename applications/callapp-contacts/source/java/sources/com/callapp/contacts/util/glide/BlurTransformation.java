package com.callapp.contacts.util.glide;

import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import com.bumptech.glide.load.resource.bitmap.AbstractC3865f;
import com.callapp.contacts.CallAppApplication;
import java.security.MessageDigest;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/BlurTransformation.class */
public class BlurTransformation extends AbstractC3865f {

    /* renamed from: b */
    private static final byte[] f28198b = "com.callapp.contacts.util.glide.BlurTransformation".getBytes(f14176a);

    /* renamed from: c */
    private static final BlurTransformation f28199c = new BlurTransformation();

    private BlurTransformation() {
    }

    public static BlurTransformation getInstance() {
        return f28199c;
    }

    @Override // com.bumptech.glide.load.resource.bitmap.AbstractC3865f
    /* renamed from: a */
    public final Bitmap mo27006a(AbstractC3712e abstractC3712e, Bitmap bitmap, int i, int i2) {
        Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        RenderScript create = RenderScript.create(CallAppApplication.get());
        Allocation createFromBitmap = Allocation.createFromBitmap(create, copy, Allocation.MipmapControl.MIPMAP_FULL, 128);
        Allocation createTyped = Allocation.createTyped(create, createFromBitmap.getType());
        ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
        create2.setInput(createFromBitmap);
        create2.setRadius(25.0f);
        create2.forEach(createTyped);
        createTyped.copyTo(copy);
        create.destroy();
        createFromBitmap.destroy();
        createTyped.destroy();
        create2.destroy();
        return copy;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public boolean equals(Object obj) {
        return obj instanceof BlurTransformation;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public int hashCode() {
        return -344380990;
    }

    @Override // com.bumptech.glide.load.AbstractC3818f
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(f28198b);
    }
}
