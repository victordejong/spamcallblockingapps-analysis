package com.explorestack.iab.mraid;

import android.text.TextUtils;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/j.class */
public enum j {
    TopLeft(51),
    TopCenter(49),
    TopRight(53),
    Center(17),
    BottomLeft(83),
    BottomCenter(81),
    BottomRight(85);
    
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final int gravity;

    j(int i) {
        this.gravity = i;
    }

    public static j fromJsString(String str) {
        return fromJsString(str, TopRight);
    }

    public static j fromJsString(String str, j jVar) {
        if (TextUtils.isEmpty(str)) {
            return jVar;
        }
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals("center")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1314880604:
                if (str.equals("top-right")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1012429441:
                if (str.equals("top-left")) {
                    c2 = 2;
                    break;
                }
                break;
            case -655373719:
                if (str.equals("bottom-left")) {
                    c2 = 3;
                    break;
                }
                break;
            case 1163912186:
                if (str.equals("bottom-right")) {
                    c2 = 4;
                    break;
                }
                break;
            case 1288627767:
                if (str.equals("bottom-center")) {
                    c2 = 5;
                    break;
                }
                break;
            case 1755462605:
                if (str.equals("top-center")) {
                    c2 = 6;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return Center;
            case 1:
                return TopRight;
            case 2:
                return TopLeft;
            case 3:
                return BottomLeft;
            case 4:
                return BottomRight;
            case 5:
                return BottomCenter;
            case 6:
                return TopCenter;
            default:
                return jVar;
        }
    }

    public final int getGravity() {
        return this.gravity;
    }
}
