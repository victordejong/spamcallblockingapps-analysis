package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.h;
import java.io.IOException;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/q.class */
public final class q implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final q f22242a = new q();

    /* renamed from: b  reason: collision with root package name */
    public static final h.a f22243b = _$$Lambda$q$Pcdl_EGphWSf8yFwIwIVQupeK64.INSTANCE;

    private q() {
    }

    /* renamed from: lambda$Pcdl-EGphWSf8yFwIwIVQupeK64  reason: not valid java name */
    public static /* synthetic */ q m4168lambda$PcdlEGphWSf8yFwIwIVQupeK64() {
        return new q();
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public final int a(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final long a(j jVar) throws IOException {
        throw new IOException("DummyDataSource cannot be opened");
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final Uri a() {
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void a(v vVar) {
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public /* synthetic */ Map b() {
        Map emptyMap;
        emptyMap = Collections.emptyMap();
        return emptyMap;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public final void c() {
    }
}
