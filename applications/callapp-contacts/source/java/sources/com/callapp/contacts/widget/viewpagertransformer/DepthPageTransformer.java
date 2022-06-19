package com.callapp.contacts.widget.viewpagertransformer;

import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/viewpagertransformer/DepthPageTransformer.class */
public class DepthPageTransformer implements ViewPager.AbstractC2937f {
    @Override // androidx.viewpager.widget.ViewPager.AbstractC2937f
    /* renamed from: a */
    public final void mo26193a(View view, float f) {
        int width = view.getWidth();
        if (f >= -1.0f) {
            if (f <= BitmapDescriptorFactory.HUE_RED) {
                view.setAlpha(1.0f);
                view.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
                return;
            } else if (f <= 1.0f) {
                view.setAlpha(1.0f - f);
                view.setTranslationX(width * (-f));
                float abs = ((1.0f - Math.abs(f)) * 0.25f) + 0.75f;
                view.setScaleX(abs);
                view.setScaleY(abs);
                return;
            }
        }
        view.setAlpha(BitmapDescriptorFactory.HUE_RED);
    }
}
