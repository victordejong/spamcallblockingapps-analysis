package com.criteo.publisher;

import android.content.SharedPreferences;
import com.criteo.publisher.model.AbstractC8499o;
import com.criteo.publisher.model.C8502r;
import com.criteo.publisher.p243c.AbstractC8259a;
import com.criteo.publisher.p252k.C8368a;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.g */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/g.class */
public abstract class AbstractC8334g {

    /* renamed from: a */
    private final C8272e f29973a;

    /* renamed from: b */
    public final AbstractC8259a f29974b;

    /* renamed from: c */
    private final C8368a f29975c;

    public AbstractC8334g(AbstractC8259a bidLifecycleListener, C8272e bidManager, C8368a consentData) {
        C18524p.m3841c(bidLifecycleListener, "bidLifecycleListener");
        C18524p.m3841c(bidManager, "bidManager");
        C18524p.m3841c(consentData, "consentData");
        this.f29974b = bidLifecycleListener;
        this.f29973a = bidManager;
        this.f29975c = consentData;
    }

    /* renamed from: a */
    public void mo25371a(AbstractC8499o cdbRequest, C8502r cdbResponse) {
        C18524p.m3841c(cdbRequest, "cdbRequest");
        C18524p.m3841c(cdbResponse, "cdbResponse");
        Boolean it2 = cdbResponse.m25559a();
        if (it2 != null) {
            C8368a c8368a = this.f29975c;
            C18524p.m3849a((Object) it2, "it");
            boolean booleanValue = it2.booleanValue();
            SharedPreferences.Editor edit = c8368a.f30055a.edit();
            edit.putBoolean("CRTO_ConsentGiven", booleanValue);
            edit.apply();
        }
        this.f29973a.m25943a(cdbResponse.m25555c());
        this.f29974b.mo25898a(cdbRequest, cdbResponse);
    }

    /* renamed from: a */
    public void mo25370a(AbstractC8499o cdbRequest, Exception exception) {
        C18524p.m3841c(cdbRequest, "cdbRequest");
        C18524p.m3841c(exception, "exception");
        this.f29974b.mo25897a(cdbRequest, exception);
    }
}
