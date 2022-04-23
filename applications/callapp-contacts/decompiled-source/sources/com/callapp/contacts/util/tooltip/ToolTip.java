package com.callapp.contacts.util.tooltip;

import android.graphics.Typeface;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/tooltip/ToolTip.class */
public class ToolTip {

    /* renamed from: a  reason: collision with root package name */
    boolean f16304a;
    private int e;

    /* renamed from: b  reason: collision with root package name */
    private CharSequence f16305b = null;
    private Typeface h = null;

    /* renamed from: c  reason: collision with root package name */
    private int f16306c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f16307d = 0;
    private View f = null;
    private AnimationType g = AnimationType.FROM_MASTER_VIEW;
    private Orientation i = Orientation.DEFUALT;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/tooltip/ToolTip$AnimationType.class */
    public enum AnimationType {
        FROM_MASTER_VIEW,
        FROM_TOP,
        NONE
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/tooltip/ToolTip$Orientation.class */
    public enum Orientation {
        DEFUALT,
        TOP,
        BOTTOM,
        LEFT,
        RIGHT
    }

    public AnimationType getAnimationType() {
        return this.g;
    }

    public int getColor() {
        return this.f16307d;
    }

    public View getContentView() {
        return this.f;
    }

    public Orientation getOrientation() {
        return this.i;
    }

    public CharSequence getText() {
        return this.f16305b;
    }

    public int getTextColor() {
        return this.e;
    }

    public int getTextResId() {
        return this.f16306c;
    }

    public Typeface getTypeface() {
        return this.h;
    }
}
