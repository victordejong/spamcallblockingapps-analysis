package com.google.android.gms.wearable;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/ChannelIOException.class */
public class ChannelIOException extends IOException {

    /* renamed from: a */
    private final int f52183a;

    /* renamed from: b */
    private final int f52184b;

    public ChannelIOException(String str, int i, int i2) {
        super(str);
        this.f52183a = i;
        this.f52184b = i2;
    }
}
