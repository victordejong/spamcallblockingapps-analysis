package com.google.firebase.analytics.connector.internal;

import android.content.Context;
import com.google.firebase.analytics.connector.b;
import com.google.firebase.b.d;
import com.google.firebase.components.e;
import com.google.firebase.components.h;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/internal/a.class */
final /* synthetic */ class a implements h {

    /* renamed from: a  reason: collision with root package name */
    static final h f32196a = new a();

    private a() {
    }

    @Override // com.google.firebase.components.h
    public final Object create(e eVar) {
        int i = AnalyticsConnectorRegistrar.zza;
        return b.a((com.google.firebase.b) eVar.a(com.google.firebase.b.class), (Context) eVar.a(Context.class), (d) eVar.a(d.class));
    }
}
