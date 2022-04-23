package com.amazonaws.handlers;

import com.amazonaws.auth.AWSCredentials;
/* loaded from: classes-dex2jar.jar:com/amazonaws/handlers/CredentialsRequestHandler.class */
public abstract class CredentialsRequestHandler extends RequestHandler2 {

    /* renamed from: a  reason: collision with root package name */
    protected AWSCredentials f6605a;

    public final void a(AWSCredentials aWSCredentials) {
        this.f6605a = aWSCredentials;
    }
}
