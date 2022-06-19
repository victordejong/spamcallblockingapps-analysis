package com.google.api.client.googleapis.p284d.p285e;

import com.google.api.client.googleapis.json.GoogleJsonErrorContainer;
import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.googleapis.p279b.C8591b;
import com.google.api.client.googleapis.p279b.p280c.AbstractC8593a;
import com.google.api.client.googleapis.p284d.AbstractC8597b;
import com.google.api.client.http.C8650n;
import com.google.api.client.http.C8658t;
/* renamed from: com.google.api.client.googleapis.d.e.b */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/d/e/b.class */
public abstract class AbstractC8605b<T> extends AbstractC8597b<T> {
    private final Object jsonContent;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC8605b(com.google.api.client.googleapis.p284d.p285e.AbstractC8603a r8, java.lang.String r9, java.lang.String r10, java.lang.Object r11, java.lang.Class<T> r12) {
        /*
            r7 = this;
            r0 = 0
            r13 = r0
            r0 = 0
            r14 = r0
            r0 = r11
            if (r0 != 0) goto L12
            r0 = r14
            r13 = r0
        Lf:
            goto L43
        L12:
            com.google.api.client.http.h0.a r0 = new com.google.api.client.http.h0.a
            r1 = r0
            r2 = r8
            com.google.api.client.json.c r2 = r2.getJsonFactory()
            r3 = r11
            r1.<init>(r2, r3)
            r14 = r0
            r0 = r8
            com.google.api.client.json.e r0 = r0.getObjectParser()
            java.util.Set r0 = r0.m3020c()
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L33
            goto L37
        L33:
            java.lang.String r0 = "data"
            r13 = r0
        L37:
            r0 = r14
            r1 = r13
            com.google.api.client.http.h0.a r0 = r0.m3177g(r1)
            r13 = r0
            goto Lf
        L43:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r13
            r5 = r12
            r0.<init>(r1, r2, r3, r4, r5)
            r0 = r7
            r1 = r11
            r0.jsonContent = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.googleapis.p284d.p285e.AbstractC8605b.<init>(com.google.api.client.googleapis.d.e.a, java.lang.String, java.lang.String, java.lang.Object, java.lang.Class):void");
    }

    @Override // com.google.api.client.googleapis.p284d.AbstractC8597b
    public AbstractC8603a getAbstractGoogleClient() {
        return (AbstractC8603a) super.getAbstractGoogleClient();
    }

    public Object getJsonContent() {
        return this.jsonContent;
    }

    @Override // com.google.api.client.googleapis.p284d.AbstractC8597b
    public GoogleJsonResponseException newExceptionOnError(C8658t c8658t) {
        return GoogleJsonResponseException.from(getAbstractGoogleClient().getJsonFactory(), c8658t);
    }

    public final void queue(C8591b c8591b, AbstractC8593a<T> abstractC8593a) {
        super.queue(c8591b, GoogleJsonErrorContainer.class, abstractC8593a);
    }

    @Override // com.google.api.client.googleapis.p284d.AbstractC8597b, com.google.api.client.util.GenericData
    public AbstractC8605b<T> set(String str, Object obj) {
        return (AbstractC8605b) super.set(str, obj);
    }

    @Override // com.google.api.client.googleapis.p284d.AbstractC8597b
    public AbstractC8605b<T> setDisableGZipContent(boolean z) {
        return (AbstractC8605b) super.setDisableGZipContent(z);
    }

    @Override // com.google.api.client.googleapis.p284d.AbstractC8597b
    public AbstractC8605b<T> setRequestHeaders(C8650n c8650n) {
        return (AbstractC8605b) super.setRequestHeaders(c8650n);
    }
}
