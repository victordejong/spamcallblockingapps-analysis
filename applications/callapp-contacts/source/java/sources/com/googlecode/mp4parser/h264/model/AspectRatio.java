package com.googlecode.mp4parser.h264.model;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/model/AspectRatio.class */
public class AspectRatio {
    public static final AspectRatio Extended_SAR = new AspectRatio(255);
    private int value;

    private AspectRatio(int i) {
        this.value = i;
    }

    public static AspectRatio fromValue(int i) {
        AspectRatio aspectRatio = Extended_SAR;
        return i == aspectRatio.value ? aspectRatio : new AspectRatio(i);
    }

    public int getValue() {
        return this.value;
    }

    public String toString() {
        return "AspectRatio{value=" + this.value + '}';
    }
}
