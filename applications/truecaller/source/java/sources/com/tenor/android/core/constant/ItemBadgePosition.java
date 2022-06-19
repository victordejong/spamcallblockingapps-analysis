package com.tenor.android.core.constant;

import com.tenor.android.core.model.impl.ItemBadge;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/constant/ItemBadgePosition.class */
public class ItemBadgePosition {
    public static final int EXTERIOR_BOTTOM_LEFT = 8;
    public static final int EXTERIOR_BOTTOM_RIGHT = 7;
    public static final int EXTERIOR_TOP_LEFT = 5;
    public static final int EXTERIOR_TOP_RIGHT = 6;
    public static final int INTERIOR_BOTTOM_LEFT = 4;
    public static final int INTERIOR_BOTTOM_RIGHT = 3;
    public static final int INTERIOR_TOP_LEFT = 1;
    public static final int INTERIOR_TOP_RIGHT = 2;
    public static final int NONE = 0;

    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3-dex2jar.jar:com/tenor/android/core/constant/ItemBadgePosition$Value.class */
    public @interface Value {
    }

    public static boolean isExterior(@Value int i) {
        return i == 5 || i == 6 || i == 7 || i == 8;
    }

    public static boolean isExterior(ItemBadge itemBadge) {
        return isExterior(itemBadge.getPosition());
    }

    public static boolean isInterior(@Value int i) {
        return i == 1 || i == 2 || i == 3 || i == 4;
    }

    public static boolean isInterior(ItemBadge itemBadge) {
        return isInterior(itemBadge.getPosition());
    }

    public static boolean isLeft(@Value int i) {
        return i == 1 || i == 8 || i == 4 || i == 5;
    }

    public static boolean isLeft(ItemBadge itemBadge) {
        return isLeft(itemBadge.getPosition());
    }

    public static boolean isRight(@Value int i) {
        return i == 2 || i == 3 || i == 6 || i == 7;
    }

    public static boolean isRight(ItemBadge itemBadge) {
        return isRight(itemBadge.getPosition());
    }

    @Value
    public static int parse(int i) {
        switch (i) {
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
            case 6:
                return 6;
            case 7:
                return 7;
            case 8:
                return 8;
            default:
                return 0;
        }
    }
}
