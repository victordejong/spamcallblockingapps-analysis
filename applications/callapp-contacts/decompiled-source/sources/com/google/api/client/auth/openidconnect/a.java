package com.google.api.client.auth.openidconnect;

import com.google.api.client.a.i;
import com.google.common.base.m;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/openidconnect/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final i f31698a;

    /* renamed from: b  reason: collision with root package name */
    private final long f31699b;

    /* renamed from: c  reason: collision with root package name */
    private final Collection<String> f31700c;

    /* renamed from: d  reason: collision with root package name */
    private final Collection<String> f31701d;

    /* renamed from: com.google.api.client.auth.openidconnect.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/openidconnect/a$a.class */
    public static class C0500a {

        /* renamed from: a  reason: collision with root package name */
        i f31702a = i.f31625a;

        /* renamed from: b  reason: collision with root package name */
        long f31703b = 300;

        /* renamed from: c  reason: collision with root package name */
        Collection<String> f31704c;

        /* renamed from: d  reason: collision with root package name */
        Collection<String> f31705d;

        public C0500a a(Collection<String> collection) {
            m.a(collection == null || !collection.isEmpty(), "Issuers must not be empty");
            this.f31704c = collection;
            return this;
        }
    }

    public a() {
        this(new C0500a());
    }

    public a(C0500a aVar) {
        this.f31698a = aVar.f31702a;
        this.f31699b = aVar.f31703b;
        Collection<String> collection = aVar.f31704c;
        Collection<String> collection2 = null;
        this.f31700c = collection == null ? null : Collections.unmodifiableCollection(aVar.f31704c);
        if (aVar.f31705d != null) {
            collection2 = Collections.unmodifiableCollection(aVar.f31705d);
        }
        this.f31701d = collection2;
    }

    public final boolean a(IdToken idToken) {
        Collection<String> collection = this.f31700c;
        if (collection != null && !idToken.verifyIssuer(collection)) {
            return false;
        }
        Collection<String> collection2 = this.f31701d;
        return (collection2 == null || idToken.verifyAudience(collection2)) && idToken.verifyTime(this.f31698a.a(), this.f31699b);
    }
}
