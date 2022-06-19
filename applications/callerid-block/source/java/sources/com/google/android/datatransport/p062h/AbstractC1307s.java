package com.google.android.datatransport.p062h;

import android.content.Context;
import com.google.android.datatransport.p062h.p067x.p068j.AbstractC1318c;
import java.io.Closeable;
/* renamed from: com.google.android.datatransport.h.s */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/s.class */
abstract class AbstractC1307s implements Closeable {

    /* renamed from: com.google.android.datatransport.h.s$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/s$a.class */
    interface AbstractC1308a {
        /* renamed from: a */
        AbstractC1307s m9197a();

        /* renamed from: b */
        AbstractC1308a m9196b(Context context);
    }

    AbstractC1307s() {
    }

    /* renamed from: a */
    abstract AbstractC1318c m9199a();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m9199a().close();
    }

    /* renamed from: p */
    abstract r m9198p();
}
