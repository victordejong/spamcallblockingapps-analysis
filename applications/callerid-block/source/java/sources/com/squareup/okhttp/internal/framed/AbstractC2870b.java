package com.squareup.okhttp.internal.framed;

import java.io.Closeable;
import java.util.List;
import okio.Buffer;
/* renamed from: com.squareup.okhttp.internal.framed.b */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/b.class */
public interface AbstractC2870b extends Closeable {
    /* renamed from: Q */
    void mo1050Q(boolean z, boolean z2, int i, int i2, List<C2888e> list);

    /* renamed from: S */
    void mo1049S(C2907m c2907m);

    void connectionPreface();

    void data(boolean z, int i, Buffer buffer, int i2);

    /* renamed from: f */
    void mo1047f(int i, ErrorCode errorCode);

    void flush();

    /* renamed from: k */
    void mo1046k(C2907m c2907m);

    int maxDataLength();

    void ping(boolean z, int i, int i2);

    void pushPromise(int i, int i2, List<C2888e> list);

    /* renamed from: t */
    void mo1044t(int i, ErrorCode errorCode, byte[] bArr);

    void windowUpdate(int i, long j);
}
