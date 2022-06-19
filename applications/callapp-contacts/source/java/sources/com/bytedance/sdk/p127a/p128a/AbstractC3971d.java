package com.bytedance.sdk.p127a.p128a;

import java.io.IOException;
import java.nio.channels.WritableByteChannel;
/* renamed from: com.bytedance.sdk.a.a.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/d.class */
public interface AbstractC3971d extends AbstractC3989r, WritableByteChannel {
    /* renamed from: b */
    AbstractC3971d mo37077b(String str) throws IOException;

    /* renamed from: c */
    C3969c mo37060c();

    /* renamed from: c */
    AbstractC3971d mo37076c(byte[] bArr) throws IOException;

    /* renamed from: c */
    AbstractC3971d mo37075c(byte[] bArr, int i, int i2) throws IOException;

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Flushable
    void flush() throws IOException;

    /* renamed from: g */
    AbstractC3971d mo37074g(int i) throws IOException;

    /* renamed from: h */
    AbstractC3971d mo37073h(int i) throws IOException;

    /* renamed from: i */
    AbstractC3971d mo37072i(int i) throws IOException;

    /* renamed from: k */
    AbstractC3971d mo37071k(long j) throws IOException;

    /* renamed from: l */
    AbstractC3971d mo37070l(long j) throws IOException;

    /* renamed from: u */
    AbstractC3971d mo37069u() throws IOException;
}
