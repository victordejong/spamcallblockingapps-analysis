package com.amazonaws.auth;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/DecodedStreamBuffer.class */
class DecodedStreamBuffer {

    /* renamed from: a */
    static final Log f12009a = LogFactory.m38584a(DecodedStreamBuffer.class);

    /* renamed from: b */
    byte[] f12010b;

    /* renamed from: c */
    int f12011c;

    /* renamed from: d */
    int f12012d;

    /* renamed from: e */
    int f12013e = -1;

    /* renamed from: f */
    boolean f12014f;

    public DecodedStreamBuffer(int i) {
        this.f12010b = new byte[i];
        this.f12011c = i;
    }
}
