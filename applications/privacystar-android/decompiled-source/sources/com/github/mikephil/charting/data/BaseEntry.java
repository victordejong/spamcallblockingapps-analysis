package com.github.mikephil.charting.data;

import android.graphics.drawable.Drawable;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/data/BaseEntry.class */
public abstract class BaseEntry {
    private Object mData;
    private Drawable mIcon;

    /* renamed from: y */
    private float f141y;

    public BaseEntry() {
        this.f141y = 0.0f;
        this.mData = null;
        this.mIcon = null;
    }

    public BaseEntry(float f) {
        this.f141y = 0.0f;
        this.mData = null;
        this.mIcon = null;
        this.f141y = f;
    }

    public BaseEntry(float f, Drawable drawable) {
        this(f);
        this.mIcon = drawable;
    }

    public BaseEntry(float f, Drawable drawable, Object obj) {
        this(f);
        this.mIcon = drawable;
        this.mData = obj;
    }

    public BaseEntry(float f, Object obj) {
        this(f);
        this.mData = obj;
    }

    public Object getData() {
        return this.mData;
    }

    public Drawable getIcon() {
        return this.mIcon;
    }

    public float getY() {
        return this.f141y;
    }

    public void setData(Object obj) {
        this.mData = obj;
    }

    public void setIcon(Drawable drawable) {
        this.mIcon = drawable;
    }

    public void setY(float f) {
        this.f141y = f;
    }
}
