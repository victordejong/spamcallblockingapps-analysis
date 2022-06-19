package androidx.browser.customtabs;

import android.os.Bundle;
import androidx.core.view.ViewCompat;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabColorSchemeParams.class */
public final class CustomTabColorSchemeParams {
    public final Integer navigationBarColor;
    public final Integer navigationBarDividerColor;
    public final Integer secondaryToolbarColor;
    public final Integer toolbarColor;

    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabColorSchemeParams$Builder.class */
    public static final class Builder {
        private Integer mNavigationBarColor;
        private Integer mNavigationBarDividerColor;
        private Integer mSecondaryToolbarColor;
        private Integer mToolbarColor;

        public CustomTabColorSchemeParams build() {
            return new CustomTabColorSchemeParams(this.mToolbarColor, this.mSecondaryToolbarColor, this.mNavigationBarColor, this.mNavigationBarDividerColor);
        }

        public Builder setNavigationBarColor(int i) {
            this.mNavigationBarColor = Integer.valueOf(i | ViewCompat.MEASURED_STATE_MASK);
            return this;
        }

        public Builder setNavigationBarDividerColor(int i) {
            this.mNavigationBarDividerColor = Integer.valueOf(i);
            return this;
        }

        public Builder setSecondaryToolbarColor(int i) {
            this.mSecondaryToolbarColor = Integer.valueOf(i);
            return this;
        }

        public Builder setToolbarColor(int i) {
            this.mToolbarColor = Integer.valueOf(i | ViewCompat.MEASURED_STATE_MASK);
            return this;
        }
    }

    CustomTabColorSchemeParams(Integer num, Integer num2, Integer num3, Integer num4) {
        this.toolbarColor = num;
        this.secondaryToolbarColor = num2;
        this.navigationBarColor = num3;
        this.navigationBarDividerColor = num4;
    }

    public static CustomTabColorSchemeParams fromBundle(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle(0);
        }
        return new CustomTabColorSchemeParams((Integer) bundle2.get(CustomTabsIntent.EXTRA_TOOLBAR_COLOR), (Integer) bundle2.get(CustomTabsIntent.EXTRA_SECONDARY_TOOLBAR_COLOR), (Integer) bundle2.get(CustomTabsIntent.EXTRA_NAVIGATION_BAR_COLOR), (Integer) bundle2.get(CustomTabsIntent.EXTRA_NAVIGATION_BAR_DIVIDER_COLOR));
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        Integer num = this.toolbarColor;
        if (num != null) {
            bundle.putInt(CustomTabsIntent.EXTRA_TOOLBAR_COLOR, num.intValue());
        }
        Integer num2 = this.secondaryToolbarColor;
        if (num2 != null) {
            bundle.putInt(CustomTabsIntent.EXTRA_SECONDARY_TOOLBAR_COLOR, num2.intValue());
        }
        Integer num3 = this.navigationBarColor;
        if (num3 != null) {
            bundle.putInt(CustomTabsIntent.EXTRA_NAVIGATION_BAR_COLOR, num3.intValue());
        }
        Integer num4 = this.navigationBarDividerColor;
        if (num4 != null) {
            bundle.putInt(CustomTabsIntent.EXTRA_NAVIGATION_BAR_DIVIDER_COLOR, num4.intValue());
        }
        return bundle;
    }

    public CustomTabColorSchemeParams withDefaults(CustomTabColorSchemeParams customTabColorSchemeParams) {
        Integer num = this.toolbarColor;
        Integer num2 = num;
        if (num == null) {
            num2 = customTabColorSchemeParams.toolbarColor;
        }
        Integer num3 = this.secondaryToolbarColor;
        Integer num4 = num3;
        if (num3 == null) {
            num4 = customTabColorSchemeParams.secondaryToolbarColor;
        }
        Integer num5 = this.navigationBarColor;
        Integer num6 = num5;
        if (num5 == null) {
            num6 = customTabColorSchemeParams.navigationBarColor;
        }
        Integer num7 = this.navigationBarDividerColor;
        Integer num8 = num7;
        if (num7 == null) {
            num8 = customTabColorSchemeParams.navigationBarDividerColor;
        }
        return new CustomTabColorSchemeParams(num2, num4, num6, num8);
    }
}
