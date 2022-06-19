package com.callapp.contacts.api.helper.backup;

import com.callapp.contacts.manager.preferences.Prefs;
import com.dropbox.core.p265v2.C8656a;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\b"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;", "", "()V", "sDbxClient", "Lcom/dropbox/core/v2/DbxClientV2;", "getClient", "resetClient", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/DropBoxClientFactory.class */
public final class DropBoxClientFactory {

    /* renamed from: a */
    public static final DropBoxClientFactory f24754a = new DropBoxClientFactory();

    /* renamed from: b */
    private static C8656a f24755b;

    private DropBoxClientFactory() {
    }

    public final C8656a getClient() {
        if (f24755b == null) {
            f24755b = new C8656a(DropBoxConfigFactory.f24756a.getRequestConfig(), Prefs.f26601hG.get());
        }
        return f24755b;
    }
}
