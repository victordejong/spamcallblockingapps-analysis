package zendesk.support.request;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.support.annotation.AttrRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleRes;
import android.support.p001v4.graphics.drawable.DrawableCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.zendesk.sdk.C1790R;
import zendesk.support.UiUtils;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ViewAttachmentsIndicator.class */
public class ViewAttachmentsIndicator extends FrameLayout {
    private static final int COUNT_THRESHOLD = 9;
    private static final String COUNT_THRESHOLD_TEXT = String.valueOf(9) + "+";
    private int attachmentsCount;
    private View attachmentsIndicatorBottomBorder;
    private TextView attachmentsIndicatorCounter;
    private ImageView attachmentsIndicatorIcon;
    private int colorActive;
    private int colorInactive;

    public ViewAttachmentsIndicator(@NonNull Context context) {
        super(context);
        init(context);
    }

    public ViewAttachmentsIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public ViewAttachmentsIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        init(context);
    }

    @RequiresApi(api = 21)
    public ViewAttachmentsIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        init(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void enableActiveState(boolean z) {
        DrawableCompat.setTint(DrawableCompat.wrap(this.attachmentsIndicatorIcon.getDrawable()).mutate(), z ? this.colorActive : this.colorInactive);
        this.attachmentsIndicatorIcon.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAttachmentsCount() {
        return this.attachmentsCount;
    }

    void init(@NonNull Context context) {
        inflate(context, C1790R.C1794layout.zs_view_request_attachments_indicator, this);
        if (!isInEditMode()) {
            this.attachmentsIndicatorIcon = (ImageView) findViewById(C1790R.C1793id.attachments_indicator_icon);
            this.attachmentsIndicatorBottomBorder = findViewById(C1790R.C1793id.attachments_indicator_bottom_border);
            this.attachmentsIndicatorCounter = (TextView) findViewById(C1790R.C1793id.attachments_indicator_counter);
            this.colorActive = UiUtils.themeAttributeToColor(C1790R.C1791attr.colorPrimary, context, C1790R.color.zs_request_fallback_color_primary);
            this.colorInactive = UiUtils.resolveColor(C1790R.color.zs_request_attachment_indicator_color_inactive, context);
            ((GradientDrawable) ((LayerDrawable) this.attachmentsIndicatorCounter.getBackground()).findDrawableByLayerId(C1790R.C1793id.inner_circle)).setColor(this.colorActive);
            getContext().getString(C1790R.string.zs_request_attachment_indicator_accessibility);
            setContentDescription(UtilsAttachment.getContentDescriptionForAttachmentButton(getContext(), getAttachmentsCount()));
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
        int i2 = i > 9 ? C1790R.dimen.zs_request_attachment_indicator_counter_width_double_digit : C1790R.dimen.zs_request_attachment_indicator_counter_width_single_digit;
        ViewGroup.LayoutParams layoutParams = this.attachmentsIndicatorCounter.getLayoutParams();
        layoutParams.width = getResources().getDimensionPixelSize(i2);
        this.attachmentsIndicatorCounter.setLayoutParams(layoutParams);
        this.attachmentsIndicatorCounter.setText(i > 9 ? COUNT_THRESHOLD_TEXT : String.valueOf(i));
        boolean z = i > 0;
        setCounterVisible(z);
        setBottomBorderVisible(z);
        enableActiveState(z);
        setContentDescription(UtilsAttachment.getContentDescriptionForAttachmentButton(getContext(), getAttachmentsCount()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBottomBorderVisible(boolean z) {
        this.attachmentsIndicatorBottomBorder.setVisibility(z ? 0 : 4);
    }

    void setCounterVisible(boolean z) {
        this.attachmentsIndicatorCounter.setVisibility(z ? 0 : 4);
    }
}
