package com.criteo.publisher.p027t;

import androidx.annotation.NonNull;
import com.criteo.publisher.p020a0.C1926n;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.criteo.publisher.t.q */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/q.class */
public class C2134q {
    @NonNull

    /* renamed from: a */
    public final C1926n f2429a;

    public C2134q(@NonNull C1926n nVar) {
        this.f2429a = nVar;
    }

    @NonNull
    /* renamed from: a */
    public AbstractC2127m m35644a(@NonNull InputStream inputStream) throws IOException {
        return (AbstractC2127m) this.f2429a.m36007a(AbstractC2127m.class, inputStream);
    }

    /* renamed from: a */
    public void m35645a(@NonNull AbstractC2127m mVar, @NonNull OutputStream outputStream) throws IOException {
        this.f2429a.m36006a(mVar, outputStream);
    }
}
