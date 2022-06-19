package com.callapp.contacts.api.helper.backup;

import com.dropbox.core.android.AuthActivity;
import com.dropbox.core.android.C8567b;
import java.security.SecureRandom;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "Ljava/security/SecureRandom;", "kotlin.jvm.PlatformType", "getSecureRandom"}, m4297k = 3, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/DropBoxHelper$sSecurityProvider$1.class */
final class DropBoxHelper$sSecurityProvider$1 implements AuthActivity.AbstractC8563a {

    /* renamed from: a */
    public static final DropBoxHelper$sSecurityProvider$1 f24764a = new DropBoxHelper$sSecurityProvider$1();

    DropBoxHelper$sSecurityProvider$1() {
    }

    @Override // com.dropbox.core.android.AuthActivity.AbstractC8563a
    public final SecureRandom getSecureRandom() {
        return C8567b.m25334a();
    }
}
