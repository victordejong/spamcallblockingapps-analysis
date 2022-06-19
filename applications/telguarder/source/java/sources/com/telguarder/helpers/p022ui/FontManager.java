package com.telguarder.helpers.p022ui;

import android.content.Context;
import android.graphics.Typeface;
/* renamed from: com.telguarder.helpers.ui.FontManager */
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/ui/FontManager.class */
public class FontManager {
    private static FontManager mInstance;
    private Typeface mRobotoBold;
    private Typeface mRobotoLight;
    private Typeface mRobotoRegular;
    private Typeface mRobotoThin;

    private FontManager() {
    }

    public static FontManager getInstance() {
        if (mInstance == null) {
            mInstance = new FontManager();
        }
        return mInstance;
    }

    public Typeface getActionBarTypeFace(Context context) {
        return getRegularTypeFace(context);
    }

    public Typeface getBoldTypeFace(Context context) {
        if (this.mRobotoBold == null) {
            this.mRobotoBold = Typeface.createFromAsset(context.getAssets(), "Roboto-Bold.ttf");
        }
        return this.mRobotoBold;
    }

    public Typeface getLightTypeFace(Context context) {
        if (this.mRobotoLight == null) {
            this.mRobotoLight = Typeface.createFromAsset(context.getAssets(), "Roboto-Light.ttf");
        }
        return this.mRobotoLight;
    }

    public Typeface getRegularTypeFace(Context context) {
        if (this.mRobotoRegular == null) {
            this.mRobotoRegular = Typeface.createFromAsset(context.getAssets(), "Roboto-Regular.ttf");
        }
        return this.mRobotoRegular;
    }

    public Typeface getThinTypeFace(Context context) {
        if (this.mRobotoThin == null) {
            this.mRobotoThin = Typeface.createFromAsset(context.getAssets(), "Roboto-Thin.ttf");
        }
        return this.mRobotoThin;
    }
}
