package com.venmo.view;
/* loaded from: classes2-dex2jar.jar:com/venmo/view/ArrowAlignment.class */
public enum ArrowAlignment {
    START(0),
    CENTER(1),
    END(2),
    ANCHORED_VIEW(3);
    
    private final int value;

    ArrowAlignment(int i) {
        this.value = i;
    }

    public static ArrowAlignment getAlignment(int i) {
        ArrowAlignment[] values;
        for (ArrowAlignment arrowAlignment : values()) {
            if (i == arrowAlignment.getValue()) {
                return arrowAlignment;
            }
        }
        throw new IllegalArgumentException("No matching ArrowAlignment with value: " + i);
    }

    public int getValue() {
        return this.value;
    }
}
