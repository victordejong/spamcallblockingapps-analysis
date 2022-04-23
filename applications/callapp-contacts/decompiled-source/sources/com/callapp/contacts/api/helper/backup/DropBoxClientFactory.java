package com.callapp.contacts.api.helper.backup;

import com.callapp.contacts.manager.preferences.Prefs;
import com.dropbox.core.v2.a;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\b"}, d2 = {"Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;", "", "()V", "sDbxClient", "Lcom/dropbox/core/v2/DbxClientV2;", "getClient", "resetClient", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/DropBoxClientFactory.class */
public final class DropBoxClientFactory {

    /* renamed from: a  reason: collision with root package name */
    public static final DropBoxClientFactory f14104a = new DropBoxClientFactory();

    /* renamed from: b  reason: collision with root package name */
    private static a f14105b;

    private DropBoxClientFactory() {
    }

    public final a getClient() {
        if (f14105b == null) {
            f14105b = new a(DropBoxConfigFactory.f14106a.getRequestConfig(), Prefs.hG.get());
        }
        return f14105b;
    }
}
