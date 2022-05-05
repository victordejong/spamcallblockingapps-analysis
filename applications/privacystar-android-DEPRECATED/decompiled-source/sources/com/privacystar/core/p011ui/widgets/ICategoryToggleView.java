package com.privacystar.core.p011ui.widgets;

import android.content.Context;
import android.support.annotation.DrawableRes;
import android.support.annotation.StringRes;
import android.support.p004v7.widget.CardView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.privacystar.core.C1566R;
import com.privacystar.core.service.googleplay.p010v3.IABV3Helper;
import com.rey.material.widget.Switch;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0006\b&\u0018��2\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J0\u0010\u001d\u001a\u00020\u001e2\b\b\u0001\u0010\u001f\u001a\u00020 2\b\b\u0001\u0010!\u001a\u00020 2\b\b\u0001\u0010\"\u001a\u00020 2\b\b\u0002\u0010#\u001a\u00020\u001aH&J\u0010\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\u001aH&R\u0014\u0010\u0007\u001a\u00020\bX\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\fX\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\bX\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\nR\u0014\u0010\u0011\u001a\u00020\fX\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\fX\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u000eR\u0014\u0010\u0015\u001a\u00020\u0016X\u0084\u0004¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018¨\u0006&"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/ICategoryToggleView;", "Landroid/support/v7/widget/CardView;", "context", "Landroid/content/Context;", "attributeSet", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "check", "Landroid/widget/ImageView;", "getCheck", "()Landroid/widget/ImageView;", IABV3Helper.DESCRIPTION, "Landroid/widget/TextView;", "getDescription", "()Landroid/widget/TextView;", SettingsJsonConstants.APP_ICON_KEY, "getIcon", "label", "getLabel", "premium", "getPremium", "switch", "Lcom/rey/material/widget/Switch;", "getSwitch", "()Lcom/rey/material/widget/Switch;", "onInterceptTouchEvent", "", "ev", "Landroid/view/MotionEvent;", "setContent", "", "categoryLabel", "", "categoryDescription", "iconRes", "showPremium", "toggle", "enabled", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.ICategoryToggleView */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/ICategoryToggleView.class */
public abstract class ICategoryToggleView extends CardView {
    private HashMap _$_findViewCache;
    @NotNull
    private final ImageView check;
    @NotNull
    private final TextView description;
    @NotNull
    private final ImageView icon;
    @NotNull
    private final TextView label;
    @NotNull
    private final TextView premium;
    @NotNull

    /* renamed from: switch  reason: not valid java name */
    private final Switch f1902switch;

    @JvmOverloads
    public ICategoryToggleView(@NotNull Context context) {
        this(context, null, 2, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ICategoryToggleView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        View inflate = LayoutInflater.from(context).inflate(C1566R.C1571layout.custom_protection_item, (ViewGroup) this, true);
        View findViewById = inflate.findViewById(C1566R.C1569id.category_item_label);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "view.findViewById(R.id.category_item_label)");
        this.label = (TextView) findViewById;
        View findViewById2 = inflate.findViewById(C1566R.C1569id.category_item_description);
        Intrinsics.checkExpressionValueIsNotNull(findViewById2, "view.findViewById(R.id.category_item_description)");
        this.description = (TextView) findViewById2;
        View findViewById3 = inflate.findViewById(C1566R.C1569id.category_item_icon);
        Intrinsics.checkExpressionValueIsNotNull(findViewById3, "view.findViewById(R.id.category_item_icon)");
        this.icon = (ImageView) findViewById3;
        View findViewById4 = inflate.findViewById(C1566R.C1569id.category_item_sw);
        Intrinsics.checkExpressionValueIsNotNull(findViewById4, "view.findViewById(R.id.category_item_sw)");
        this.f1902switch = (Switch) findViewById4;
        View findViewById5 = inflate.findViewById(C1566R.C1569id.category_item_premium_label);
        Intrinsics.checkExpressionValueIsNotNull(findViewById5, "view.findViewById(R.id.c…egory_item_premium_label)");
        this.premium = (TextView) findViewById5;
        View findViewById6 = inflate.findViewById(C1566R.C1569id.category_item_check);
        Intrinsics.checkExpressionValueIsNotNull(findViewById6, "view.findViewById(R.id.category_item_check)");
        this.check = (ImageView) findViewById6;
    }

    @JvmOverloads
    public /* synthetic */ ICategoryToggleView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    public static /* synthetic */ void setContent$default(ICategoryToggleView iCategoryToggleView, int i, int i2, int i3, boolean z, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setContent");
        }
        if ((i4 & 8) != 0) {
            z = false;
        }
        iCategoryToggleView.setContent(i, i2, i3, z);
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final ImageView getCheck() {
        return this.check;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final TextView getDescription() {
        return this.description;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final ImageView getIcon() {
        return this.icon;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final TextView getLabel() {
        return this.label;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final TextView getPremium() {
        return this.premium;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final Switch getSwitch() {
        return this.f1902switch;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@Nullable MotionEvent motionEvent) {
        return true;
    }

    public abstract void setContent(@StringRes int i, @StringRes int i2, @DrawableRes int i3, boolean z);

    public abstract void toggle(boolean z);
}
