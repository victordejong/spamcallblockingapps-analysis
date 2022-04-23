package com.inmobi.ads;

import android.content.Context;
import android.widget.FrameLayout;
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeScrollableContainer.class */
public abstract class NativeScrollableContainer extends FrameLayout {

    /* renamed from: a */
    public final int f31388a;

    /* renamed from: com.inmobi.ads.NativeScrollableContainer$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/NativeScrollableContainer$a.class */
    public interface AbstractC8029a {
        /* renamed from: a */
        int mo6379a(int i);
    }

    public NativeScrollableContainer(Context context) {
        super(context);
        this.f31388a = 0;
    }

    public NativeScrollableContainer(Context context, int i) {
        super(context);
        this.f31388a = i;
    }

    /* renamed from: a */
    public abstract void mo6243a(C8105am amVar, AbstractC8137ax axVar, int i, int i2, AbstractC8029a aVar);

    public final int getType() {
        return this.f31388a;
    }
}
