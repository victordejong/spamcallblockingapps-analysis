package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.a.c;
import java.io.Closeable;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/r.class */
public abstract class r implements Closeable {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/r$a.class */
    public interface a {
        a a(Context context);

        r a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract q b();

    abstract c c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        c().close();
    }
}
