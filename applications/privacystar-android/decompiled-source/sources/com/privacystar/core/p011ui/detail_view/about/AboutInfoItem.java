package com.privacystar.core.p011ui.detail_view.about;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/about/AboutInfoItem;", "", "itemTitle", "", "itemDescription", "(Ljava/lang/String;Ljava/lang/String;)V", "getItemDescription", "()Ljava/lang/String;", "getItemTitle", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.about.AboutInfoItem */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/about/AboutInfoItem.class */
public final class AboutInfoItem {
    @NotNull
    private final String itemDescription;
    @NotNull
    private final String itemTitle;

    public AboutInfoItem(@NotNull String itemTitle, @NotNull String itemDescription) {
        Intrinsics.checkParameterIsNotNull(itemTitle, "itemTitle");
        Intrinsics.checkParameterIsNotNull(itemDescription, "itemDescription");
        this.itemTitle = itemTitle;
        this.itemDescription = itemDescription;
    }

    @NotNull
    public final String getItemDescription() {
        return this.itemDescription;
    }

    @NotNull
    public final String getItemTitle() {
        return this.itemTitle;
    }
}
