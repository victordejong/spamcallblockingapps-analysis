package com.criteo.publisher.p256m0;

import android.content.Context;
import com.criteo.publisher.model.AdSize;
/* renamed from: com.criteo.publisher.m0.c */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/c.class */
public class C8429c {

    /* renamed from: a */
    private final Context f30188a;

    /* renamed from: b */
    private final C8440k f30189b;

    public C8429c(Context context, C8440k c8440k) {
        this.f30188a = context;
        this.f30189b = c8440k;
    }

    /* renamed from: a */
    public final int m25697a() {
        AdSize m25683b = this.f30189b.m25683b();
        return m25683b.getWidth() < m25683b.getHeight() ? 1 : 2;
    }

    /* renamed from: a */
    public final int m25696a(int i) {
        return (int) Math.ceil(i * this.f30188a.getResources().getDisplayMetrics().density);
    }
}
