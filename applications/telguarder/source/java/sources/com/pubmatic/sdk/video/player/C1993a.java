package com.pubmatic.sdk.video.player;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import com.google.android.material.badge.BadgeDrawable;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.video.C1968R;
/* renamed from: com.pubmatic.sdk.video.player.a */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/a.class */
class C1993a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.video.player.a$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/a$a.class */
    public static final class RunnableC1994a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ View f965a;

        RunnableC1994a(View view) {
            this.f965a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f965a.setVisibility(4);
        }
    }

    /* renamed from: a */
    public static FrameLayout.LayoutParams m622a(Context context, int i, int i2) {
        int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(C1968R.dimen.pob_mute_button_left_margin);
        int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(C1968R.dimen.pob_mute_button_bottom_margin);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(POBUtils.convertDpToPixel(i), POBUtils.convertDpToPixel(i2));
        layoutParams.leftMargin = dimensionPixelOffset;
        layoutParams.topMargin = dimensionPixelOffset2;
        return layoutParams;
    }

    /* renamed from: a */
    public static TextView m623a(Context context, int i) {
        Resources resources = context.getResources();
        TextView m620a = m620a(context, "", resources.getDimensionPixelOffset(C1968R.dimen.pob_text_size), i);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(resources.getColor(C1968R.C1969color.pob_controls_background_color));
        gradientDrawable.setStroke(resources.getDimensionPixelOffset(C1968R.dimen.pob_control_stroke_width), resources.getColor(C1968R.C1969color.pob_controls_stroke_color));
        gradientDrawable.setAlpha(resources.getInteger(C1968R.integer.pob_controls_alpha));
        m620a.setBackground(gradientDrawable);
        m620a.setPadding(0, 0, 0, 0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(resources.getDimensionPixelOffset(C1968R.dimen.pob_control_width), resources.getDimensionPixelOffset(C1968R.dimen.pob_control_height));
        layoutParams.gravity = GravityCompat.END;
        layoutParams.rightMargin = resources.getDimensionPixelOffset(C1968R.dimen.pob_skip_control_right_margin);
        layoutParams.topMargin = resources.getDimensionPixelOffset(C1968R.dimen.pob_skip_control_top_margin);
        m620a.setLayoutParams(layoutParams);
        return m620a;
    }

    /* renamed from: a */
    public static TextView m621a(Context context, int i, String str, int i2) {
        Resources resources = context.getResources();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, resources.getDimensionPixelOffset(C1968R.dimen.pob_control_height));
        layoutParams.gravity = BadgeDrawable.BOTTOM_END;
        layoutParams.bottomMargin = resources.getDimensionPixelOffset(C1968R.dimen.pob_learn_more_bottom_margin);
        layoutParams.rightMargin = resources.getDimensionPixelOffset(C1968R.dimen.pob_learn_more_right_margin);
        TextView m620a = m620a(context, str, resources.getDimensionPixelOffset(C1968R.dimen.pob_text_size), i);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(resources.getDimensionPixelOffset(C1968R.dimen.pob_learn_more_radius));
        gradientDrawable.setColor(i2);
        gradientDrawable.setStroke(resources.getDimensionPixelOffset(C1968R.dimen.pob_control_stroke_width), resources.getColor(C1968R.C1969color.pob_controls_stroke_color));
        gradientDrawable.setAlpha(resources.getInteger(C1968R.integer.pob_controls_alpha));
        m620a.setBackground(gradientDrawable);
        int i3 = layoutParams.rightMargin;
        m620a.setPadding(i3, 0, i3, 0);
        m620a.setMaxWidth(resources.getDimensionPixelOffset(C1968R.dimen.pob_learn_more_width_max));
        m620a.setMaxLines(1);
        m620a.setEllipsize(TextUtils.TruncateAt.END);
        m620a.setLayoutParams(layoutParams);
        return m620a;
    }

    /* renamed from: a */
    private static TextView m620a(Context context, String str, float f, int i) {
        TextView textView = new TextView(context);
        textView.setAllCaps(false);
        textView.setGravity(17);
        textView.setTextColor(context.getResources().getColor(17170443));
        textView.setTextSize(0, f);
        textView.setTextAlignment(4);
        textView.setText(str);
        try {
            textView.setTypeface(Typeface.SANS_SERIF, 1);
        } catch (Exception e) {
            PMLog.warn("POBVastPlayerUIUtil", "SANS_SERIF font not found!", new Object[0]);
        }
        textView.setId(i);
        return textView;
    }

    /* renamed from: a */
    public static void m619a(View view, int i) {
        if (view.getVisibility() == 0) {
            long j = i;
            view.animate().alpha(0.0f).setDuration(j);
            new Handler().postDelayed(new RunnableC1994a(view), j);
        }
    }

    /* renamed from: b */
    public static void m618b(View view, int i) {
        if (view.getVisibility() != 0) {
            view.setVisibility(0);
            view.animate().alpha(1.0f).setDuration(i);
        }
    }
}
