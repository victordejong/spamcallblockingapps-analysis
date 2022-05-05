package com.flurry.sdk;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.ki */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ki.class */
public class C3412ki<ObjectType> implements AbstractC3417kl<ObjectType> {

    /* renamed from: a */
    public final AbstractC3417kl<ObjectType> f5844a;

    public C3412ki(AbstractC3417kl<ObjectType> klVar) {
        this.f5844a = klVar;
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public ObjectType mo32526a(InputStream inputStream) throws IOException {
        AbstractC3417kl<ObjectType> klVar = this.f5844a;
        if (klVar == null || inputStream == null) {
            return null;
        }
        return klVar.mo32526a(inputStream);
    }

    @Override // com.flurry.sdk.AbstractC3417kl
    /* renamed from: a */
    public void mo32525a(OutputStream outputStream, ObjectType objecttype) throws IOException {
        AbstractC3417kl<ObjectType> klVar = this.f5844a;
        if (klVar != null && outputStream != null && objecttype != null) {
            klVar.mo32525a(outputStream, objecttype);
        }
    }
}
