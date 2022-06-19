package com.explorestack.iab.mraid;

import android.text.TextUtils;
/* renamed from: com.explorestack.iab.mraid.j */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/j.class */
public enum EnumC9577j {
    TopLeft(51),
    TopCenter(49),
    TopRight(53),
    Center(17),
    BottomLeft(83),
    BottomCenter(81),
    BottomRight(85);
    
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final int gravity;

    EnumC9577j(int i) {
        this.gravity = i;
    }

    public static EnumC9577j fromJsString(String str) {
        return fromJsString(str, TopRight);
    }

    public static EnumC9577j fromJsString(String str, EnumC9577j enumC9577j) {
        if (TextUtils.isEmpty(str)) {
            return enumC9577j;
        }
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals("center")) {
                    z = false;
                    break;
                }
                break;
            case -1314880604:
                if (str.equals("top-right")) {
                    z = true;
                    break;
                }
                break;
            case -1012429441:
                if (str.equals("top-left")) {
                    z = true;
                    break;
                }
                break;
            case -655373719:
                if (str.equals("bottom-left")) {
                    z = true;
                    break;
                }
                break;
            case 1163912186:
                if (str.equals("bottom-right")) {
                    z = true;
                    break;
                }
                break;
            case 1288627767:
                if (str.equals("bottom-center")) {
                    z = true;
                    break;
                }
                break;
            case 1755462605:
                if (str.equals("top-center")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return Center;
            case true:
                return TopRight;
            case true:
                return TopLeft;
            case true:
                return BottomLeft;
            case true:
                return BottomRight;
            case true:
                return BottomCenter;
            case true:
                return TopCenter;
            default:
                return enumC9577j;
        }
    }

    public final int getGravity() {
        return this.gravity;
    }
}
