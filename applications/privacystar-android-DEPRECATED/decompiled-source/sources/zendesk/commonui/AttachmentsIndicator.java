package zendesk.commonui;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.StyleRes;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
/* loaded from: classes3-dex2jar.jar:zendesk/commonui/AttachmentsIndicator.class */
public class AttachmentsIndicator extends FrameLayout {
    private static final int COUNT_THRESHOLD = 9;
    private static final String COUNT_THRESHOLD_TEXT = String.valueOf(9) + "+";
    private int attachmentsCount;
    private View attachmentsIndicatorBottomBorder;
    private TextView attachmentsIndicatorCounter;
    private ImageView attachmentsIndicatorIcon;
    private int colorActive;
    private int colorInactive;

    public AttachmentsIndicator(@NonNull Context context) {
        super(context);
        init(context);
    }

    public AttachmentsIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public AttachmentsIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        init(context);
    }

    @RequiresApi(api = 21)
    public AttachmentsIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        init(context);
    }

    static String getContentDescriptionForAttachmentButton(Context context, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getString(C2633R.string.zui_attachment_indicator_accessibility));
        sb.append(". ");
        if (i == 0) {
            sb.append(context.getString(C2633R.string.zui_attachment_indicator_no_attachments_selected_accessibility));
        } else if (i == 1) {
            sb.append(context.getString(C2633R.string.zui_attachment_indicator_one_attachments_selected_accessibility));
        } else {
            sb.append(context.getString(C2633R.string.zui_attachment_indicator_n_attachments_selected_accessibility, Integer.valueOf(i)));
        }
        return sb.toString();
    }

    void enableActiveState(boolean z) {
        UiUtils.setTint(z ? this.colorActive : this.colorInactive, this.attachmentsIndicatorIcon.getDrawable(), this.attachmentsIndicatorIcon);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAttachmentsCount() {
        return this.attachmentsCount;
    }

    void init(@NonNull Context context) {
        inflate(context, C2633R.C2637layout.zui_view_attachments_indicator, this);
        if (!isInEditMode()) {
            this.attachmentsIndicatorIcon = (ImageView) findViewById(C2633R.C2636id.attachments_indicator_icon);
            this.attachmentsIndicatorBottomBorder = findViewById(C2633R.C2636id.attachments_indicator_bottom_border);
            this.attachmentsIndicatorCounter = (TextView) findViewById(C2633R.C2636id.attachments_indicator_counter);
            this.colorActive = UiUtils.themeAttributeToColor(C2633R.C2634attr.colorPrimary, context, C2633R.color.zui_color_primary);
            this.colorInactive = UiUtils.resolveColor(C2633R.color.zui_attachment_indicator_color_inactive, context);
            ((GradientDrawable) ((LayerDrawable) this.attachmentsIndicatorCounter.getBackground()).findDrawableByLayerId(C2633R.C2636id.inner_circle)).setColor(this.colorActive);
            setContentDescription(getContentDescriptionForAttachmentButton(getContext(), this.attachmentsCount));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reset() {
        setCounterVisible(false);
        setAttachmentsCount(0);
        setBottomBorderVisible(false);
        enableActiveState(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAttachmentsCount(int i) {
        this.attachmentsCount = i;
        int i2 = i > 9 ? C2633R.dimen.zui_attachment_indicator_counter_width_double_digit : C2633R.dimen.zui_attachment_indicator_counter_width_single_digit;
        ViewGroup.LayoutParams layoutParams = this.attachmentsIndicatorCounter.getLayoutParams();
        layoutParams.width = getResources().getDimensionPixelSize(i2);
        this.attachmentsIndicatorCounter.setLayoutParams(layoutParams);
        this.attachmentsIndicatorCounter.setText(i > 9 ? COUNT_THRESHOLD_TEXT : String.valueOf(i));
        boolean z = i > 0;
        setCounterVisible(z);
        setBottomBorderVisible(z);
        enableActiveState(z);
        setContentDescription(getContentDescriptionForAttachmentButton(getContext(), i));
    }

    void setBottomBorderVisible(boolean z) {
        this.attachmentsIndicatorBottomBorder.setVisibility(z ? 0 : 4);
    }

    void setCounterVisible(boolean z) {
        this.attachmentsIndicatorCounter.setVisibility(z ? 0 : 4);
    }
}
