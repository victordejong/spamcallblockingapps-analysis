package com.criteo.publisher.m0;

import android.content.Context;
import com.criteo.publisher.model.AdSize;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/m0/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final Context f17505a;

    /* renamed from: b  reason: collision with root package name */
    private final k f17506b;

    public c(Context context, k kVar) {
        this.f17505a = context;
        this.f17506b = kVar;
    }

    public final int a() {
        AdSize b2 = this.f17506b.b();
        return b2.getWidth() < b2.getHeight() ? 1 : 2;
    }

    public final int a(int i) {
        return (int) Math.ceil(i * this.f17505a.getResources().getDisplayMetrics().density);
    }
}
