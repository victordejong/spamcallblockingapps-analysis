package com.callapp.contacts.util.glide;

import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.resource.bitmap.f;
import com.callapp.contacts.CallAppApplication;
import java.security.MessageDigest;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/BlurTransformation.class */
public class BlurTransformation extends f {

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f16181b = "com.callapp.contacts.util.glide.BlurTransformation".getBytes(f7619a);

    /* renamed from: c  reason: collision with root package name */
    private static final BlurTransformation f16182c = new BlurTransformation();

    private BlurTransformation() {
    }

    public static BlurTransformation getInstance() {
        return f16182c;
    }

    @Override // com.bumptech.glide.load.resource.bitmap.f
    public final Bitmap a(e eVar, Bitmap bitmap, int i, int i2) {
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

    @Override // com.bumptech.glide.load.f
    public boolean equals(Object obj) {
        return obj instanceof BlurTransformation;
    }

    @Override // com.bumptech.glide.load.f
    public int hashCode() {
        return -344380990;
    }

    @Override // com.bumptech.glide.load.f
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(f16181b);
    }
}
