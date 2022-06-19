package com.androidplot.p007ui;
/* renamed from: com.androidplot.ui.Insets */
/* loaded from: classes-dex2jar.jar:com/androidplot/ui/Insets.class */
public class Insets {
    private float bottom;
    private float left;
    private float right;
    private float top;

    public Insets() {
    }

    public Insets(float f, float f2, float f3, float f4) {
        this.top = f;
        this.bottom = f2;
        this.left = f3;
        this.right = f4;
    }

    public float getBottom() {
        return this.bottom;
    }

    public float getLeft() {
        return this.left;
    }

    public float getRight() {
        return this.right;
    }

    public float getTop() {
        return this.top;
    }

    public void setBottom(float f) {
        this.bottom = f;
    }

    public void setLeft(float f) {
        this.left = f;
    }

    public void setRight(float f) {
        this.right = f;
    }

    public void setTop(float f) {
        this.top = f;
    }
}
