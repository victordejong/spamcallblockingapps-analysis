package com.criteo.publisher.f;

import android.content.Context;
import com.criteo.publisher.m0.g;
import com.criteo.publisher.q;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/x.class */
public final class x implements q.a<w> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f17325a;

    /* renamed from: b  reason: collision with root package name */
    private final v f17326b;

    /* renamed from: c  reason: collision with root package name */
    private final g f17327c;

    public x(Context context, v vVar, g gVar) {
        this.f17325a = context;
        this.f17326b = vVar;
        this.f17327c = gVar;
    }

    @Override // com.criteo.publisher.q.a
    public final /* synthetic */ w a() {
        return new n(new r(new t(this.f17325a, this.f17327c, this.f17326b)), this.f17327c);
    }
}
