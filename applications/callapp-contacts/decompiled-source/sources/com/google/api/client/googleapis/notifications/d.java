package com.google.api.client.googleapis.notifications;

import com.google.api.client.a.aa;
import com.google.api.client.a.x;
import com.google.api.client.http.p;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/notifications/d.class */
public abstract class d<T> implements f {
    private static final long serialVersionUID = 1;

    protected abstract Class<T> getDataClass() throws IOException;

    protected abstract x getObjectParser() throws IOException;

    protected abstract void onNotification(b bVar, c<T> cVar) throws IOException;

    public final void onNotification(b bVar, e eVar) throws IOException {
        c<T> cVar = new c<>(eVar);
        String str = eVar.f31759a;
        if (str != null) {
            cVar.f31758a = (T) getObjectParser().parseAndClose(eVar.f31760b, new p(str).b(), (Class) aa.a(getDataClass()));
        }
        onNotification(bVar, cVar);
    }
}
