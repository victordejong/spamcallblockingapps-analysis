package com.squareup.okhttp.internal.framed;

import java.io.Closeable;
import java.util.List;
import okio.BufferedSource;
import okio.ByteString;
/* renamed from: com.squareup.okhttp.internal.framed.a */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/a.class */
public interface AbstractC2868a extends Closeable {

    /* renamed from: com.squareup.okhttp.internal.framed.a$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/a$a.class */
    public interface AbstractC2869a {
        void ackSettings();

        void data(boolean z, int i, BufferedSource bufferedSource, int i2);

        /* renamed from: f */
        void mo1187f(int i, ErrorCode errorCode);

        /* renamed from: g */
        void mo1186g(boolean z, C2907m mVar);

        /* renamed from: h */
        void mo1185h(boolean z, boolean z2, int i, int i2, List<C2888e> list, HeadersMode headersMode);

        /* renamed from: i */
        void mo1184i(int i, ErrorCode errorCode, ByteString byteString);

        void ping(boolean z, int i, int i2);

        void priority(int i, int i2, int i3, boolean z);

        void pushPromise(int i, int i2, List<C2888e> list);

        void windowUpdate(int i, long j);
    }

    /* renamed from: P */
    boolean mo1056P(AbstractC2869a aVar);

    /* renamed from: q */
    void mo1052q();
}
