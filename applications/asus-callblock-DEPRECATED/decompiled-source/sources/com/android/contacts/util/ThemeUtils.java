package com.android.contacts.util;

import android.content.res.Resources;
import android.util.TypedValue;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/ThemeUtils.class */
public class ThemeUtils {
    public static int getActivatedBackground(Resources.Theme theme) {
        return getAttribute(theme, 16843517);
    }

    public static int getAttribute(Resources.Theme theme, int i) {
        TypedValue typedValue = new TypedValue();
        theme.resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    public static int getSelectableItemBackground(Resources.Theme theme) {
        return getAttribute(theme, 16843534);
    }
}
