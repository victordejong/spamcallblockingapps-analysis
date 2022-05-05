package com.apptentive.android.sdk;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveViewExitType.class */
public enum ApptentiveViewExitType {
    MENU_ITEM("menu_item", false),
    BACK_BUTTON("back_button", false),
    NOTIFICATION("notification", true);
    
    private final String name;
    private final boolean shouldAddToEngage;

    ApptentiveViewExitType(String str, boolean z) {
        this.name = str;
        this.shouldAddToEngage = z;
    }

    public String getName() {
        return this.name;
    }

    public boolean isShouldAddToEngage() {
        return this.shouldAddToEngage;
    }
}
