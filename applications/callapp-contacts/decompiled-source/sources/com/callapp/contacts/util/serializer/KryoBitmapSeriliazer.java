package com.callapp.contacts.util.serializer;

import android.graphics.Bitmap;
import com.callapp.contacts.util.ImageUtils;
import com.esotericsoftware.kryo.a.a;
import com.esotericsoftware.kryo.c;
import com.esotericsoftware.kryo.h;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/KryoBitmapSeriliazer.class */
public class KryoBitmapSeriliazer extends h<Bitmap> {
    @Override // com.esotericsoftware.kryo.h
    public /* synthetic */ Bitmap read(c cVar, a aVar, Class<? extends Bitmap> cls) {
        return ImageUtils.a(aVar);
    }

    @Override // com.esotericsoftware.kryo.h
    public /* synthetic */ void write(c cVar, com.esotericsoftware.kryo.a.c cVar2, Bitmap bitmap) {
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, cVar2);
    }
}
