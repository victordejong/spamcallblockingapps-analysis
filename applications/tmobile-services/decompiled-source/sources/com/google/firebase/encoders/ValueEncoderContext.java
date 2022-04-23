package com.google.firebase.encoders;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/firebase/encoders/ValueEncoderContext.class */
public interface ValueEncoderContext {
    @NonNull
    ValueEncoderContext add(double d) throws IOException;

    @NonNull
    ValueEncoderContext add(int i) throws IOException;

    @NonNull
    ValueEncoderContext add(long j) throws IOException;

    @NonNull
    ValueEncoderContext add(@Nullable String str) throws IOException;

    @NonNull
    ValueEncoderContext add(boolean z) throws IOException;

    @NonNull
    ValueEncoderContext add(@NonNull byte[] bArr) throws IOException;
}
