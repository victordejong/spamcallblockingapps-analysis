package com.google.firebase.encoders.json;

import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.ValueEncoderContext;
/* loaded from: classes-dex2jar.jar:com/google/firebase/encoders/json/JsonDataEncoderBuilder$$Lambda$5.class */
final /* synthetic */ class JsonDataEncoderBuilder$$Lambda$5 implements ValueEncoder {
    private static final JsonDataEncoderBuilder$$Lambda$5 instance = new JsonDataEncoderBuilder$$Lambda$5();

    private JsonDataEncoderBuilder$$Lambda$5() {
    }

    @Override // com.google.firebase.encoders.ValueEncoder, com.google.firebase.encoders.Encoder
    public void encode(Object obj, ValueEncoderContext valueEncoderContext) {
        JsonDataEncoderBuilder.lambda$static$2((Boolean) obj, valueEncoderContext);
    }
}
