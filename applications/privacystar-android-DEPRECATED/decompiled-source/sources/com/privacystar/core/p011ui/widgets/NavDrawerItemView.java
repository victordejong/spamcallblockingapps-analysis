package com.privacystar.core.p011ui.widgets;

import android.content.Context;
import android.graphics.PorterDuff;
import android.support.annotation.DrawableRes;
import android.support.annotation.StringRes;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.privacystar.core.C1566R;
import com.privacystar.core.util.ThemeUtil;
import com.privacystar.core.util.extension.ViewExtensionsKt;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\u0018�� \u001c2\u00020\u0001:\u0001\u001cB\u001b\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J&\u0010\u0016\u001a\u00020\u00172\b\b\u0001\u0010\u0018\u001a\u00020\u00192\b\b\u0001\u0010\u001a\u001a\u00020\u00192\b\b\u0002\u0010\u001b\u001a\u00020\u0019H\u0007R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\n\"\u0004\b\u0015\u0010\f¨\u0006\u001d"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/NavDrawerItemView;", "Landroid/widget/LinearLayout;", "context", "Landroid/content/Context;", "attributeSet", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "badge", "Landroid/widget/TextView;", "getBadge", "()Landroid/widget/TextView;", "setBadge", "(Landroid/widget/TextView;)V", SettingsJsonConstants.APP_ICON_KEY, "Landroid/widget/ImageView;", "getIcon", "()Landroid/widget/ImageView;", "setIcon", "(Landroid/widget/ImageView;)V", "text", "getText", "setText", "setContent", "", "iconResId", "", "titleResId", "unreadMessages", "Companion", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.NavDrawerItemView */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/NavDrawerItemView.class */
public final class NavDrawerItemView extends LinearLayout {
    public static final Companion Companion = new Companion(null);
    private static final int UNREAD_MAX = 99;
    private static final int UNREAD_MIN = 1;
    private HashMap _$_findViewCache;
    @NotNull
    private TextView badge;
    @NotNull
    private ImageView icon;
    @NotNull
    private TextView text;

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/NavDrawerItemView$Companion;", "", "()V", "UNREAD_MAX", "", "UNREAD_MIN", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.widgets.NavDrawerItemView$Companion */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/NavDrawerItemView$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @JvmOverloads
    public NavDrawerItemView(@NotNull Context context) {
        this(context, null, 2, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NavDrawerItemView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        View view = LayoutInflater.from(context).inflate(C1566R.C1571layout.navigation_drawer_item_view, (ViewGroup) this, true);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        ImageView imageView = (ImageView) view.findViewById(C1566R.C1569id.navigation_drawer_item_icon);
        Intrinsics.checkExpressionValueIsNotNull(imageView, "view.navigation_drawer_item_icon");
        this.icon = imageView;
        TextView textView = (TextView) view.findViewById(C1566R.C1569id.navigation_drawer_item_title);
        Intrinsics.checkExpressionValueIsNotNull(textView, "view.navigation_drawer_item_title");
        this.text = textView;
        TextView textView2 = (TextView) view.findViewById(C1566R.C1569id.navigation_drawer_item_unread);
        Intrinsics.checkExpressionValueIsNotNull(textView2, "view.navigation_drawer_item_unread");
        this.badge = textView2;
    }

    @JvmOverloads
    public /* synthetic */ NavDrawerItemView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    @JvmOverloads
    public static /* synthetic */ void setContent$default(NavDrawerItemView navDrawerItemView, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i3 = 0;
        }
        navDrawerItemView.setContent(i, i2, i3);
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

    @NotNull
    public final TextView getBadge() {
        return this.badge;
    }

    @NotNull
    public final ImageView getIcon() {
        return this.icon;
    }

    @NotNull
    public final TextView getText() {
        return this.text;
    }

    public final void setBadge(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.badge = textView;
    }

    @JvmOverloads
    public final void setContent(@DrawableRes int i, @StringRes int i2) {
        setContent$default(this, i, i2, 0, 4, null);
    }

    @JvmOverloads
    public final void setContent(@DrawableRes int i, @StringRes int i2, int i3) {
        this.icon.setImageResource(i);
        this.icon.setColorFilter(ThemeUtil.resolveAttributeColor(getContext(), 2130968832), PorterDuff.Mode.DST_IN);
        this.text.setText(i2);
        if (i3 < UNREAD_MIN) {
            ViewExtensionsKt.gone(this.badge);
            return;
        }
        ViewExtensionsKt.visible(this.badge);
        int i4 = i3;
        if (i3 > UNREAD_MAX) {
            i4 = UNREAD_MAX;
        }
        TextView textView = this.badge;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.getDefault();
        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.getDefault()");
        Object[] objArr = {Integer.valueOf(i4)};
        String format = String.format(locale, "%d", Arrays.copyOf(objArr, objArr.length));
        Intrinsics.checkExpressionValueIsNotNull(format, "java.lang.String.format(locale, format, *args)");
        textView.setText(format);
    }

    public final void setIcon(@NotNull ImageView imageView) {
        Intrinsics.checkParameterIsNotNull(imageView, "<set-?>");
        this.icon = imageView;
    }

    public final void setText(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.text = textView;
    }
}
