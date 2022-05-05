package com.flurry.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
/* renamed from: com.flurry.sdk.bz */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bz.class */
public final class C2899bz extends ImageButton {
    public C2899bz(Context context) {
        super(context);
    }

    public final void setDefaultLayoutParams(RelativeLayout.LayoutParams layoutParams) {
        float f = getResources().getDisplayMetrics().density;
        int i = (int) (10.0f * f);
        layoutParams.setMargins(0, i, i, 0);
        int i2 = (int) (f * 50.0f);
        layoutParams.height = i2;
        layoutParams.width = i2;
        setLayoutParams(layoutParams);
        C3156ge geVar = new C3156ge();
        geVar.m32962e();
        setFlurryMraidImageBitmap(geVar.f5162a);
        setBackgroundColor(0);
    }

    public final void setFlurryMraidImageBitmap(Bitmap bitmap) {
        setImageBitmap(bitmap);
    }
}
