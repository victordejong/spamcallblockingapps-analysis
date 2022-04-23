package com.privacystar.core.data.providers;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/data/providers/NumberProvider;", "", "getNumber", "", "setNumber", "", "number", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/NumberProvider.class */
public interface NumberProvider {
    @NotNull
    String getNumber();

    void setNumber(@NotNull String str);
}
