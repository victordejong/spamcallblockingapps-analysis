package com.callapp.contacts.api.helper.backup;

import com.dropbox.core.h;
import com.dropbox.core.http.b;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;", "", "()V", "sDbxRequestConfig", "Lcom/dropbox/core/DbxRequestConfig;", "getRequestConfig", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/DropBoxConfigFactory.class */
public final class DropBoxConfigFactory {

    /* renamed from: a  reason: collision with root package name */
    public static final DropBoxConfigFactory f14106a = new DropBoxConfigFactory();

    /* renamed from: b  reason: collision with root package name */
    private static h f14107b;

    static {
        h.a aVar = new h.a("callapp");
        aVar.f17769c = new b(b.a());
        h hVar = new h(aVar.f17767a, aVar.f17768b, aVar.f17769c, aVar.f17770d);
        p.b(hVar, "DbxRequestConfig.newBuil…()))\n            .build()");
        f14107b = hVar;
    }

    private DropBoxConfigFactory() {
    }

    public final h getRequestConfig() {
        return f14107b;
    }
}
