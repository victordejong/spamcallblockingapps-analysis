package com.jakewharton.rxbinding2.widget;

import android.view.MenuItem;
import android.widget.PopupMenu;
import com.jakewharton.rxbinding2.internal.VoidToUnit;
import io.reactivex.Observable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\u0016\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u0013\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00050\u0001*\u00020\u0003H\u0086\b¨\u0006\u0006"}, m254d2 = {"dismisses", "Lio/reactivex/Observable;", "", "Landroid/widget/PopupMenu;", "itemClicks", "Landroid/view/MenuItem;", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxPopupMenuKt.class */
public final class RxPopupMenuKt {
    @NotNull
    public static final Observable<Unit> dismisses(@NotNull PopupMenu receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable map = RxPopupMenu.dismisses(receiver).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxPopupMenu.dismisses(this).map(VoidToUnit)");
        return map;
    }

    @NotNull
    public static final Observable<MenuItem> itemClicks(@NotNull PopupMenu receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<MenuItem> itemClicks = RxPopupMenu.itemClicks(receiver);
        Intrinsics.checkExpressionValueIsNotNull(itemClicks, "RxPopupMenu.itemClicks(this)");
        return itemClicks;
    }
}
