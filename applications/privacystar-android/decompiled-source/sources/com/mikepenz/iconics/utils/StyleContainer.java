package com.mikepenz.iconics.utils;

import android.text.ParcelableSpan;
import android.text.style.CharacterStyle;
import com.mikepenz.iconics.typeface.ITypeface;
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/utils/StyleContainer.class */
public class StyleContainer {
    public int endIndex;
    public int flags;
    public ITypeface font;
    public String icon;
    public ParcelableSpan span;
    public int startIndex;
    public CharacterStyle style;

    public StyleContainer(int i, int i2, ParcelableSpan parcelableSpan) {
        this.flags = 33;
        this.startIndex = i;
        this.endIndex = i2;
        this.span = parcelableSpan;
    }

    public StyleContainer(int i, int i2, ParcelableSpan parcelableSpan, int i3) {
        this.flags = 33;
        this.startIndex = i;
        this.endIndex = i2;
        this.span = parcelableSpan;
        this.flags = i3;
    }

    public StyleContainer(int i, int i2, CharacterStyle characterStyle) {
        this.flags = 33;
        this.startIndex = i;
        this.endIndex = i2;
        this.style = characterStyle;
    }

    public StyleContainer(int i, int i2, CharacterStyle characterStyle, int i3) {
        this.flags = 33;
        this.startIndex = i;
        this.endIndex = i2;
        this.style = characterStyle;
        this.flags = i3;
    }

    public StyleContainer(int i, int i2, String str, ITypeface iTypeface) {
        this.flags = 33;
        this.startIndex = i;
        this.endIndex = i2;
        this.icon = str;
        this.font = iTypeface;
    }

    public StyleContainer(int i, int i2, String str, ITypeface iTypeface, int i3) {
        this.flags = 33;
        this.startIndex = i;
        this.endIndex = i2;
        this.icon = str;
        this.font = iTypeface;
        this.flags = i3;
    }
}
