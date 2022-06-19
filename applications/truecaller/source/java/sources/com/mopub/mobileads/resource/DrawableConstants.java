package com.mopub.mobileads.resource;

import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/resource/DrawableConstants.class */
public class DrawableConstants {
    public static final int TRANSPARENT_GRAY = -2013265920;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/resource/DrawableConstants$BlurredLastVideoFrame.class */
    public static class BlurredLastVideoFrame {
        public static final int ALPHA = 100;
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/resource/DrawableConstants$CloseButton.class */
    public static class CloseButton {
        public static final String DEFAULT_CLOSE_BUTTON_TEXT = "";
        public static final int EDGE_MARGIN = 4;
        public static final int EDGE_PADDING = 6;
        public static final int IMAGE_PADDING_DIPS = 5;
        public static final int TEXT_COLOR = -1;
        public static final int TEXT_RIGHT_MARGIN_DIPS = 0;
        public static final float TEXT_SIZE_SP = 20.0f;
        public static final Typeface TEXT_TYPEFACE = Typeface.create("Helvetica", 0);
        public static final int WIDGET_HEIGHT_DIPS = 50;
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/resource/DrawableConstants$CtaButton.class */
    public static class CtaButton {
        public static final int BACKGROUND_ALPHA = 51;
        public static final int BACKGROUND_COLOR = -16777216;
        public static final int CORNER_RADIUS_DIPS = 6;
        public static final String DEFAULT_CTA_TEXT = "Learn More";
        public static final int HEIGHT_DIPS = 38;
        public static final int MARGIN_DIPS = 16;
        public static final int OUTLINE_ALPHA = 51;
        public static final int OUTLINE_COLOR = -1;
        public static final int OUTLINE_STROKE_WIDTH_DIPS = 2;
        public static final int TEXT_COLOR = -1;
        public static final float TEXT_SIZE_SP = 15.0f;
        public static final int WIDTH_DIPS = 150;
        public static final Paint.Style BACKGROUND_STYLE = Paint.Style.FILL;
        public static final Paint.Style OUTLINE_STYLE = Paint.Style.STROKE;
        public static final Typeface TEXT_TYPEFACE = Typeface.create("Helvetica", 0);
        public static final Paint.Align TEXT_ALIGN = Paint.Align.CENTER;
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/resource/DrawableConstants$GradientStrip.class */
    public static class GradientStrip {
        public static final int GRADIENT_STRIP_HEIGHT_DIPS = 72;
        public static final int START_COLOR = Color.argb(102, 0, 0, 0);
        public static final int END_COLOR = Color.argb(0, 0, 0, 0);
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/resource/DrawableConstants$PrivacyInfoIcon.class */
    public static class PrivacyInfoIcon {
        public static final int LEFT_MARGIN_DIPS = 12;
        public static final int TOP_MARGIN_DIPS = 12;
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/resource/DrawableConstants$ProgressBar.class */
    public static class ProgressBar {
        public static final int BACKGROUND_ALPHA = 128;
        public static final int BACKGROUND_COLOR = -1;
        public static final int HEIGHT_DIPS = 4;
        public static final int NUGGET_WIDTH_DIPS = 4;
        public static final int PROGRESS_ALPHA = 255;
        public static final Paint.Style BACKGROUND_STYLE = Paint.Style.FILL;
        public static final int PROGRESS_COLOR = Color.parseColor("#FFCC4D");
        public static final Paint.Style PROGRESS_STYLE = Paint.Style.FILL;
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/resource/DrawableConstants$RadialCountdown.class */
    public static class RadialCountdown {
        public static final int BACKGROUND_COLOR = -16777216;
        public static final int CIRCLE_STROKE_WIDTH_DIPS = 3;
        public static final int PADDING_DIPS = 9;
        public static final int PROGRESS_ARC_ALPHA = 255;
        public static final int PROGRESS_ARC_COLOR = -1;
        public static final Paint.Style PROGRESS_ARC_STYLE;
        public static final int PROGRESS_CIRCLE_ALPHA = 128;
        public static final int PROGRESS_CIRCLE_COLOR = -1;
        public static final Paint.Style PROGRESS_CIRCLE_STYLE;
        public static final int RIGHT_MARGIN_DIPS = 3;
        public static final int SIDE_LENGTH_DIPS = 50;
        public static final float START_ANGLE = -90.0f;
        public static final int TEXT_COLOR = -1;
        public static final float TEXT_SIZE_SP = 18.0f;
        public static final int TOP_MARGIN_DIPS = 3;
        public static final Paint.Style BACKGROUND_STYLE = Paint.Style.FILL;
        public static final Paint.Align TEXT_ALIGN = Paint.Align.CENTER;

        static {
            Paint.Style style = Paint.Style.STROKE;
            PROGRESS_CIRCLE_STYLE = style;
            PROGRESS_ARC_STYLE = style;
        }
    }
}
