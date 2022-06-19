package com.google.firebase.analytics.connector.internal;

import android.content.Context;
import com.google.firebase.C15601b;
import com.google.firebase.analytics.connector.C15591b;
import com.google.firebase.components.AbstractC15627e;
import com.google.firebase.components.AbstractC15633h;
import com.google.firebase.p389b.AbstractC15609d;
/* renamed from: com.google.firebase.analytics.connector.internal.a */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/internal/a.class */
final /* synthetic */ class C15595a implements AbstractC15633h {

    /* renamed from: a */
    static final AbstractC15633h f55956a = new C15595a();

    private C15595a() {
    }

    @Override // com.google.firebase.components.AbstractC15633h
    public final Object create(AbstractC15627e abstractC15627e) {
        int i = AnalyticsConnectorRegistrar.zza;
        return C15591b.m8601a((C15601b) abstractC15627e.mo8532a(C15601b.class), (Context) abstractC15627e.mo8532a(Context.class), (AbstractC15609d) abstractC15627e.mo8532a(AbstractC15609d.class));
    }
}
