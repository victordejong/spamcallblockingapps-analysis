package com.google.android.gms.wearable;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/ChannelIOException.class */
public class ChannelIOException extends IOException {

    /* renamed from: a  reason: collision with root package name */
    private final int f30051a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30052b;

    public ChannelIOException(String str, int i, int i2) {
        super(str);
        this.f30051a = i;
        this.f30052b = i2;
    }
}
