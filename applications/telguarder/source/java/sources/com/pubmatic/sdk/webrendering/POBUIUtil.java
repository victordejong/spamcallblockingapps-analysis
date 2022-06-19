package com.pubmatic.sdk.webrendering;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import androidx.core.view.GravityCompat;
import com.pubmatic.sdk.common.C1843R;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/POBUIUtil.class */
public class POBUIUtil {
    private POBUIUtil() {
    }

    public static ImageButton createCloseButton(Context context) {
        ImageButton imageButton = new ImageButton(context);
        imageButton.setId(C1843R.C1846id.close_btn);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        Resources resources = context.getResources();
        gradientDrawable.setColor(resources.getColor(C2007R.C2008color.pob_controls_background_color));
        gradientDrawable.setStroke(resources.getDimensionPixelOffset(C2007R.dimen.pob_control_stroke_width), resources.getColor(C2007R.C2008color.pob_controls_stroke_color));
        gradientDrawable.setAlpha(resources.getInteger(C2007R.integer.pob_controls_alpha));
        imageButton.setBackground(gradientDrawable);
        imageButton.setPadding(0, 0, 0, 0);
        imageButton.setImageResource(C2007R.C2009drawable.ic_close_black_24dp);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(resources.getDimensionPixelOffset(C2007R.dimen.pob_control_width), resources.getDimensionPixelOffset(C2007R.dimen.pob_control_height));
        layoutParams.gravity = GravityCompat.END;
        layoutParams.rightMargin = resources.getDimensionPixelOffset(C2007R.dimen.pob_close_button_right_margin);
        layoutParams.topMargin = resources.getDimensionPixelOffset(C2007R.dimen.pob_close_button_top_margin);
        imageButton.setLayoutParams(layoutParams);
        return imageButton;
    }
}
