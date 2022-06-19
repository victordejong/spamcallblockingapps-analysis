package com.google.api.client.googleapis.notifications;

import com.google.api.client.http.C15339p;
import com.google.api.client.p379a.AbstractC15254x;
import com.google.api.client.p379a.C15207aa;
import java.io.IOException;
/* renamed from: com.google.api.client.googleapis.notifications.d */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/notifications/d.class */
public abstract class AbstractC15293d<T> implements AbstractC15295f {
    private static final long serialVersionUID = 1;

    protected abstract Class<T> getDataClass() throws IOException;

    protected abstract AbstractC15254x getObjectParser() throws IOException;

    protected abstract void onNotification(C15291b c15291b, C15292c<T> c15292c) throws IOException;

    public final void onNotification(C15291b c15291b, C15294e c15294e) throws IOException {
        C15292c<T> c15292c = new C15292c<>(c15294e);
        String str = c15294e.f55279a;
        if (str != null) {
            c15292c.f55278a = (T) getObjectParser().parseAndClose(c15294e.f55280b, new C15339p(str).m9065b(), (Class) C15207aa.m9283a(getDataClass()));
        }
        onNotification(c15291b, c15292c);
    }
}
