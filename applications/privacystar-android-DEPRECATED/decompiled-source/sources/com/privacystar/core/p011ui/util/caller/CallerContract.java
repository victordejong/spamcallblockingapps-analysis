package com.privacystar.core.p011ui.util.caller;

import com.privacystar.core.util.OffenderUtil;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018��2\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m254d2 = {"Lcom/privacystar/core/ui/util/caller/CallerContract;", "", "()V", "Manager", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.util.caller.CallerContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/caller/CallerContract.class */
public final class CallerContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\bH&¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/ui/util/caller/CallerContract$Manager;", "", "getDefaultCallerDrawableId", "", "offenderToCallerDrawableId", "offenderType", "Lcom/privacystar/core/util/OffenderUtil$OffenderTypeUi;", "shouldShowCallerIconBadge", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.util.caller.CallerContract$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/caller/CallerContract$Manager.class */
    public interface Manager {
        int getDefaultCallerDrawableId();

        int offenderToCallerDrawableId(@NotNull OffenderUtil.OffenderTypeUi offenderTypeUi);

        boolean shouldShowCallerIconBadge();
    }
}
