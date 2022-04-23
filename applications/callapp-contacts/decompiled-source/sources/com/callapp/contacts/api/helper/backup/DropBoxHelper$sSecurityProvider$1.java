package com.callapp.contacts.api.helper.backup;

import com.dropbox.core.android.AuthActivity;
import com.dropbox.core.android.b;
import java.security.SecureRandom;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Ljava/security/SecureRandom;", "kotlin.jvm.PlatformType", "getSecureRandom"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/DropBoxHelper$sSecurityProvider$1.class */
final class DropBoxHelper$sSecurityProvider$1 implements AuthActivity.a {

    /* renamed from: a  reason: collision with root package name */
    public static final DropBoxHelper$sSecurityProvider$1 f14113a = new DropBoxHelper$sSecurityProvider$1();

    DropBoxHelper$sSecurityProvider$1() {
    }

    @Override // com.dropbox.core.android.AuthActivity.a
    public final SecureRandom getSecureRandom() {
        return b.a();
    }
}
