package com.criteo.publisher.model;

import android.content.Context;
import com.criteo.publisher.i.c;
import com.criteo.publisher.m0.b;
import com.criteo.publisher.m0.g;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/x.class */
public class x {

    /* renamed from: a  reason: collision with root package name */
    private final Context f17646a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17647b;

    /* renamed from: c  reason: collision with root package name */
    private final g f17648c;

    /* renamed from: d  reason: collision with root package name */
    private final c f17649d;
    private final b e;

    public x(Context context, String str, g gVar, c cVar, b bVar) {
        this.f17646a = context;
        this.f17647b = str;
        this.f17648c = gVar;
        this.f17649d = cVar;
        this.e = bVar;
    }

    public w a() {
        return w.a(this.f17647b, this.f17646a.getPackageName(), g.a(), this.f17649d.a().a(), this.e.a().f17503a);
    }
}
