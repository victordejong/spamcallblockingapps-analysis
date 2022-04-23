package com.callapp.contacts.util.serializer;

import android.content.Context;
import com.esotericsoftware.kryo.a.a;
import com.esotericsoftware.kryo.c;
import com.esotericsoftware.kryo.h;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/ContextIgnoreSerializer.class */
public class ContextIgnoreSerializer extends h<Context> {
    @Override // com.esotericsoftware.kryo.h
    public /* bridge */ /* synthetic */ Context read(c cVar, a aVar, Class<? extends Context> cls) {
        return null;
    }

    @Override // com.esotericsoftware.kryo.h
    public /* bridge */ /* synthetic */ void write(c cVar, com.esotericsoftware.kryo.a.c cVar2, Context context) {
    }
}
