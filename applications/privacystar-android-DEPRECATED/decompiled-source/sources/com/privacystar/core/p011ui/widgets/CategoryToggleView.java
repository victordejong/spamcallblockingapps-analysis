package com.privacystar.core.p011ui.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018��2\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J(\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/CategoryToggleView;", "Lcom/privacystar/core/ui/widgets/ICategoryToggleView;", "context", "Landroid/content/Context;", "attributeSet", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "setContent", "", "categoryLabel", "", "categoryDescription", "iconRes", "showPremium", "", "toggle", "enabled", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.CategoryToggleView */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/CategoryToggleView.class */
public final class CategoryToggleView extends ICategoryToggleView {
    private HashMap _$_findViewCache;

    @JvmOverloads
    public CategoryToggleView(@NotNull Context context) {
        this(context, null, 2, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public CategoryToggleView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    @JvmOverloads
    public /* synthetic */ CategoryToggleView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    @Override // com.privacystar.core.p011ui.widgets.ICategoryToggleView
    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    @Override // com.privacystar.core.p011ui.widgets.ICategoryToggleView
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

    @Override // com.privacystar.core.p011ui.widgets.ICategoryToggleView
    public void setContent(int i, int i2, int i3, boolean z) {
        getLabel().setText(i);
        getDescription().setText(i2);
        getIcon().setImageResource(i3);
        getSwitch().setOnClickListener(null);
        getCheck().setVisibility(8);
        getPremium().setVisibility(8);
    }

    @Override // com.privacystar.core.p011ui.widgets.ICategoryToggleView
    public void toggle(boolean z) {
        getSwitch().setChecked(z);
    }
}
