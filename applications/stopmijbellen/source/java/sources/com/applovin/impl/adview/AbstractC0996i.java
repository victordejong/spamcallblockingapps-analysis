package com.applovin.impl.adview;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: com.applovin.impl.adview.i */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/i.class */
public abstract class AbstractC0996i extends View {

    /* renamed from: a */
    public float f3641a = 1.0f;

    /* renamed from: b */
    public final Context f3642b;

    /* renamed from: com.applovin.impl.adview.i$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/i$a.class */
    public enum EnumC0997a {
        WHITE_ON_BLACK(0),
        WHITE_ON_TRANSPARENT(1),
        INVISIBLE(2),
        TRANSPARENT_SKIP(3);
        

        /* renamed from: e */
        private final int f3648e;

        EnumC0997a(int i) {
            this.f3648e = i;
        }

        /* renamed from: a */
        public int m6855a() {
            return this.f3648e;
        }
    }

    public AbstractC0996i(Context context) {
        super(context);
        this.f3642b = context;
    }

    /* renamed from: a */
    public static AbstractC0996i m6856a(EnumC0997a enumC0997a, Context context) {
        return enumC0997a.equals(EnumC0997a.INVISIBLE) ? new C1021p(context) : enumC0997a.equals(EnumC0997a.WHITE_ON_TRANSPARENT) ? new C1022q(context) : enumC0997a.equals(EnumC0997a.TRANSPARENT_SKIP) ? new C1023r(context) : new C1029w(context);
    }

    /* renamed from: a */
    public void mo6794a(int i) {
        setViewScale(i / 30.0f);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = (int) getSize();
            layoutParams.height = (int) getSize();
        }
    }

    public float getSize() {
        return this.f3641a * 30.0f;
    }

    public abstract EnumC0997a getStyle();

    public void setViewScale(float f) {
        this.f3641a = f;
    }
}
