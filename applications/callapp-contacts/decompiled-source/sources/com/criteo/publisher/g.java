package com.criteo.publisher;

import android.content.SharedPreferences;
import com.criteo.publisher.c.a;
import com.criteo.publisher.model.o;
import com.criteo.publisher.model.r;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/g.class */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    private final e f17329a;

    /* renamed from: b  reason: collision with root package name */
    public final a f17330b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.k.a f17331c;

    public g(a bidLifecycleListener, e bidManager, com.criteo.publisher.k.a consentData) {
        p.c(bidLifecycleListener, "bidLifecycleListener");
        p.c(bidManager, "bidManager");
        p.c(consentData, "consentData");
        this.f17330b = bidLifecycleListener;
        this.f17329a = bidManager;
        this.f17331c = consentData;
    }

    public void a(o cdbRequest, r cdbResponse) {
        p.c(cdbRequest, "cdbRequest");
        p.c(cdbResponse, "cdbResponse");
        Boolean it2 = cdbResponse.a();
        if (it2 != null) {
            com.criteo.publisher.k.a aVar = this.f17331c;
            p.a((Object) it2, "it");
            boolean booleanValue = it2.booleanValue();
            SharedPreferences.Editor edit = aVar.f17392a.edit();
            edit.putBoolean("CRTO_ConsentGiven", booleanValue);
            edit.apply();
        }
        this.f17329a.a(cdbResponse.c());
        this.f17330b.a(cdbRequest, cdbResponse);
    }

    public void a(o cdbRequest, Exception exception) {
        p.c(cdbRequest, "cdbRequest");
        p.c(exception, "exception");
        this.f17330b.a(cdbRequest, exception);
    }
}
