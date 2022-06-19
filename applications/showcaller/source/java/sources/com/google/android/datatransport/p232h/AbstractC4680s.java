package com.google.android.datatransport.p232h;

import android.content.Context;
import com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c;
import java.io.Closeable;
/* renamed from: com.google.android.datatransport.h.s */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/s.class */
public abstract class AbstractC4680s implements Closeable {

    /* renamed from: com.google.android.datatransport.h.s$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/s$a.class */
    public interface AbstractC4681a {
        /* renamed from: a */
        AbstractC4680s mo22004a();

        /* renamed from: b */
        AbstractC4681a mo22003b(Context context);
    }

    /* renamed from: a */
    abstract AbstractC4710c mo22006a();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        mo22006a().close();
    }

    /* renamed from: e */
    public abstract C4679r mo22005e();
}
