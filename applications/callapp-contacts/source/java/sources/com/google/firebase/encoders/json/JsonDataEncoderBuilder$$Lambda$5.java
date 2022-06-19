package com.google.firebase.encoders.json;

import com.google.firebase.encoders.AbstractC15740f;
import com.google.firebase.encoders.AbstractC15741g;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5.class */
final /* synthetic */ class JsonDataEncoderBuilder$$Lambda$5 implements AbstractC15740f {
    private static final JsonDataEncoderBuilder$$Lambda$5 instance = new JsonDataEncoderBuilder$$Lambda$5();

    private JsonDataEncoderBuilder$$Lambda$5() {
    }

    @Override // com.google.firebase.encoders.AbstractC15735b
    public final void encode(Object obj, AbstractC15741g abstractC15741g) {
        abstractC15741g.add(((Boolean) obj).booleanValue());
    }
}
