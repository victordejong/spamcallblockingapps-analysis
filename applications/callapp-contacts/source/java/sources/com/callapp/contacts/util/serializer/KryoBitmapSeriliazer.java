package com.callapp.contacts.util.serializer;

import android.graphics.Bitmap;
import com.callapp.contacts.util.ImageUtils;
import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/KryoBitmapSeriliazer.class */
public class KryoBitmapSeriliazer extends AbstractC9413h<Bitmap> {
    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public /* synthetic */ Bitmap read(C9380c c9380c, C9374a c9374a, Class<? extends Bitmap> cls) {
        return ImageUtils.m27525a(c9374a);
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public /* synthetic */ void write(C9380c c9380c, C9376c c9376c, Bitmap bitmap) {
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, c9376c);
    }
}
