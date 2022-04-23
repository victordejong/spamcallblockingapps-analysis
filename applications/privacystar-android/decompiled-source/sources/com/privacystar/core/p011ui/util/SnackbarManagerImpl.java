package com.privacystar.core.p011ui.util;

import com.privacystar.core.p011ui.util.SnackbarContract;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/util/SnackbarManagerImpl;", "Lcom/privacystar/core/ui/util/SnackbarContract$Manager;", "()V", "isAnchoredToTop", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.util.SnackbarManagerImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/SnackbarManagerImpl.class */
public final class SnackbarManagerImpl implements SnackbarContract.Manager {
    public static final SnackbarManagerImpl INSTANCE = new SnackbarManagerImpl();

    private SnackbarManagerImpl() {
    }

    @Override // com.privacystar.core.p011ui.util.SnackbarContract.Manager
    public boolean isAnchoredToTop() {
        return false;
    }
}
