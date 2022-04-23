package com.google.firebase.encoders;

import androidx.annotation.NonNull;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/firebase/encoders/ObjectEncoder.class */
public interface ObjectEncoder<T> extends Encoder<T, ObjectEncoderContext> {
    @Override // com.google.firebase.encoders.Encoder
    /* synthetic */ void encode(@NonNull TValue tvalue, @NonNull TContext tcontext) throws IOException;
}
