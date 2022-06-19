package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c;
import java.io.Closeable;
import java.io.IOException;
/* renamed from: com.google.android.datatransport.runtime.r */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/r.class */
public abstract class AbstractC10745r implements Closeable {

    /* renamed from: com.google.android.datatransport.runtime.r$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/r$a.class */
    public interface AbstractC10746a {
        /* renamed from: a */
        AbstractC10746a mo22434a(Context context);

        /* renamed from: a */
        AbstractC10745r mo22435a();
    }

    /* renamed from: b */
    public abstract C10744q mo22437b();

    /* renamed from: c */
    abstract AbstractC10762c mo22436c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        mo22436c().close();
    }
}
