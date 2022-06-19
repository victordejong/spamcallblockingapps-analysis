package com.google.firebase.encoders;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/encoders/Encoder.class */
public interface Encoder<TValue, TContext> {
    void encode(TValue tvalue, TContext tcontext) throws IOException;
}
