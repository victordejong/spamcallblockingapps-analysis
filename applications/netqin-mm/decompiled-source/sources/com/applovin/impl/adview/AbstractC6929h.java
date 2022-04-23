package com.applovin.impl.adview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import p131c.p135b.p136a.p138b.C2106n;
import p131c.p135b.p136a.p138b.C2107o;
import p131c.p135b.p136a.p138b.C2113t;
/* renamed from: com.applovin.impl.adview.h */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/h.class */
public abstract class AbstractC6929h extends View {

    /* renamed from: a */
    public float f21281a = 1.0f;

    /* renamed from: com.applovin.impl.adview.h$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/h$a.class */
    public enum EnumC6930a {
        WHITE_ON_BLACK(0),
        WHITE_ON_TRANSPARENT(1),
        INVISIBLE(2);
        

        /* renamed from: d */
        public final int f21286d;

        EnumC6930a(int i) {
            this.f21286d = i;
        }

        /* renamed from: a */
        public int m19328a() {
            return this.f21286d;
        }
    }

    public AbstractC6929h(Context context) {
        super(context);
    }

    /* renamed from: a */
    public static AbstractC6929h m19329a(EnumC6930a aVar, Context context) {
        return aVar.equals(EnumC6930a.INVISIBLE) ? new C2106n(context) : aVar.equals(EnumC6930a.WHITE_ON_TRANSPARENT) ? new C2107o(context) : new C2113t(context);
    }

    /* renamed from: a */
    public void mo19330a(int i) {
        setViewScale(i / 30.0f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = (int) getSize();
            layoutParams.height = (int) getSize();
        }
    }

    public float getSize() {
        return this.f21281a * 30.0f;
    }

    public abstract EnumC6930a getStyle();

    public void setViewScale(float f) {
        this.f21281a = f;
    }
}
