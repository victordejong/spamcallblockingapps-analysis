package com.flurry.sdk;

import java.util.UUID;
/* renamed from: com.flurry.sdk.lh */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/lh.class */
public final class C0491lh {

    /* renamed from: a */
    public String f3550a;

    /* renamed from: b */
    public byte[] f3551b;

    private C0491lh() {
        this.f3550a = null;
        this.f3551b = null;
    }

    public /* synthetic */ C0491lh(byte b) {
        this();
    }

    public C0491lh(byte[] bArr) {
        this.f3550a = null;
        this.f3551b = null;
        this.f3550a = UUID.randomUUID().toString();
        this.f3551b = bArr;
    }

    /* renamed from: a */
    public static String m4540a(String str) {
        return ".yflurrydatasenderblock." + str;
    }
}
