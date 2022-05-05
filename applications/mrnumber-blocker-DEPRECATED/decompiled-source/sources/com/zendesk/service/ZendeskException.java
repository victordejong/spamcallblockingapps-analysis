package com.zendesk.service;

import p010g.p026l.p030d.C0285e;
/* loaded from: classes2-dex2jar.jar:com/zendesk/service/ZendeskException.class */
public class ZendeskException extends Exception {

    /* renamed from: f */
    private final AbstractC0217a f460f;

    @Override // java.lang.Throwable
    public String toString() {
        AbstractC0217a aVar = this.f460f;
        return String.format("ZendeskException{details=%s,errorResponse=%s,cause=%s}", super.toString(), aVar == null ? "null" : aVar.m678d(), C0285e.m482a(getCause()));
    }
}
