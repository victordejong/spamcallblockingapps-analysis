package com.callapp.contacts.util.tooltip;

import android.graphics.Typeface;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/tooltip/ToolTip.class */
public class ToolTip {

    /* renamed from: a */
    boolean f28389a;

    /* renamed from: e */
    private int f28393e;

    /* renamed from: b */
    private CharSequence f28390b = null;

    /* renamed from: h */
    private Typeface f28396h = null;

    /* renamed from: c */
    private int f28391c = 0;

    /* renamed from: d */
    private int f28392d = 0;

    /* renamed from: f */
    private View f28394f = null;

    /* renamed from: g */
    private AnimationType f28395g = AnimationType.FROM_MASTER_VIEW;

    /* renamed from: i */
    private Orientation f28397i = Orientation.DEFUALT;

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
        return this.f28395g;
    }

    public int getColor() {
        return this.f28392d;
    }

    public View getContentView() {
        return this.f28394f;
    }

    public Orientation getOrientation() {
        return this.f28397i;
    }

    public CharSequence getText() {
        return this.f28390b;
    }

    public int getTextColor() {
        return this.f28393e;
    }

    public int getTextResId() {
        return this.f28391c;
    }

    public Typeface getTypeface() {
        return this.f28396h;
    }
}
