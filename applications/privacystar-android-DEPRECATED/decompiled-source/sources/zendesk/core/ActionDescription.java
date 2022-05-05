package zendesk.core;

import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ActionDescription.class */
public final class ActionDescription {
    private final int icon;
    private final String localizedAccessibilityLabel;
    private final String localizedLabel;

    public ActionDescription(@Nullable String str, @Nullable String str2, @DrawableRes int i) {
        this.localizedLabel = str;
        this.localizedAccessibilityLabel = str2;
        this.icon = i;
    }

    @DrawableRes
    public int getIcon() {
        return this.icon;
    }

    @Nullable
    public String getLocalizedAccessibilityLabel() {
        return this.localizedAccessibilityLabel;
    }

    @Nullable
    public String getLocalizedLabel() {
        return this.localizedLabel;
    }
}
