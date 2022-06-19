package com.callapp.contacts.api.helper.backup;

import com.dropbox.core.C8577h;
import com.dropbox.core.http.C8586b;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0006"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;", "", "()V", "sDbxRequestConfig", "Lcom/dropbox/core/DbxRequestConfig;", "getRequestConfig", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/DropBoxConfigFactory.class */
public final class DropBoxConfigFactory {

    /* renamed from: a */
    public static final DropBoxConfigFactory f24756a = new DropBoxConfigFactory();

    /* renamed from: b */
    private static C8577h f24757b;

    static {
        C8577h.C8579a c8579a = new C8577h.C8579a("callapp");
        c8579a.f30550c = new C8586b(C8586b.m25301a());
        C8577h c8577h = new C8577h(c8579a.f30548a, c8579a.f30549b, c8579a.f30550c, c8579a.f30551d);
        C18524p.m3843b(c8577h, "DbxRequestConfig.newBuil…()))\n            .build()");
        f24757b = c8577h;
    }

    private DropBoxConfigFactory() {
    }

    public final C8577h getRequestConfig() {
        return f24757b;
    }
}
