package com.privacystar.core.p011ui;

import com.privacystar.core.p011ui.call_center.CallCenterServiceContract;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/CallCenterServiceManagerImpl;", "Lcom/privacystar/core/ui/call_center/CallCenterServiceContract$Manager;", "()V", "shouldChangeColorDependingOnCategory", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.CallCenterServiceManagerImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/CallCenterServiceManagerImpl.class */
public final class CallCenterServiceManagerImpl implements CallCenterServiceContract.Manager {
    public static final CallCenterServiceManagerImpl INSTANCE = new CallCenterServiceManagerImpl();

    private CallCenterServiceManagerImpl() {
    }

    @Override // com.privacystar.core.p011ui.call_center.CallCenterServiceContract.Manager
    public boolean shouldChangeColorDependingOnCategory() {
        return true;
    }
}
