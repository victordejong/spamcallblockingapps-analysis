package com.privacystar.core.util.extension;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.ColorRes;
import android.support.p001v4.content.ContextCompat;
import com.privacystar.core.util.Device;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001a\n��\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a-\u0010��\u001a\u00020\u0001*\u00020\u00022\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00012\u000e\b\u0002\u0010\u0004\u001a\b\u0018\u00010\u0005R\u00020\u0006H\u0007¢\u0006\u0002\u0010\u0007¨\u0006\b"}, m254d2 = {"color", "", "Landroid/content/Context;", "id", "theme", "Landroid/content/res/Resources$Theme;", "Landroid/content/res/Resources;", "(Landroid/content/Context;Ljava/lang/Integer;Landroid/content/res/Resources$Theme;)I", "app-core"}, m253k = 2, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/extension/FrameworkExtensionsKt.class */
public final class FrameworkExtensionsKt {
    @SuppressLint({"NewApi"})
    public static final int color(@NotNull Context receiver$0, @ColorRes @Nullable Integer num, @Nullable Resources.Theme theme) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return num == null ? -7829368 : Device.isAtLeastMarshmallow() ? receiver$0.getResources().getColor(num.intValue(), theme) : ContextCompat.getColor(receiver$0, num.intValue());
    }

    @SuppressLint({"NewApi"})
    public static /* synthetic */ int color$default(Context context, Integer num, Resources.Theme theme, int i, Object obj) {
        if ((i & 2) != 0) {
            theme = null;
        }
        return color(context, num, theme);
    }
}
