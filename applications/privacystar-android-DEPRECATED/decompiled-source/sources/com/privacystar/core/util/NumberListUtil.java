package com.privacystar.core.util;

import com.privacystar.core.data.model.helper.ApprovedListRealm;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.p011ui.widgets.NumberListType;
import io.realm.Realm;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, m254d2 = {"Lcom/privacystar/core/util/NumberListUtil;", "", "()V", "swapBetweenLists", "", "number", "", "destinationList", "Lcom/privacystar/core/ui/widgets/NumberListType;", "realm", "Lio/realm/Realm;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/NumberListUtil.class */
public final class NumberListUtil {
    public static final NumberListUtil INSTANCE = new NumberListUtil();

    private NumberListUtil() {
    }

    public final void swapBetweenLists(@NotNull String number, @NotNull NumberListType destinationList, @NotNull Realm realm) {
        Intrinsics.checkParameterIsNotNull(number, "number");
        Intrinsics.checkParameterIsNotNull(destinationList, "destinationList");
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        switch (destinationList) {
            case APPROVED:
                BlockListRealm.addToOrUpdateBlockList(realm, number);
                ApprovedListRealm.setApproved(realm, number, true);
                return;
            case BLOCK:
                BlockListRealm.addToOrUpdateBlockList(realm, number);
                ApprovedListRealm.setApproved(realm, number, false);
                return;
            default:
                return;
        }
    }
}
