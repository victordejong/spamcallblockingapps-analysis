package com.amazonaws.auth;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/DecodedStreamBuffer.class */
class DecodedStreamBuffer {

    /* renamed from: a  reason: collision with root package name */
    static final Log f6574a = LogFactory.a(DecodedStreamBuffer.class);

    /* renamed from: b  reason: collision with root package name */
    byte[] f6575b;

    /* renamed from: c  reason: collision with root package name */
    int f6576c;

    /* renamed from: d  reason: collision with root package name */
    int f6577d;
    int e = -1;
    boolean f;

    public DecodedStreamBuffer(int i) {
        this.f6575b = new byte[i];
        this.f6576c = i;
    }
}
