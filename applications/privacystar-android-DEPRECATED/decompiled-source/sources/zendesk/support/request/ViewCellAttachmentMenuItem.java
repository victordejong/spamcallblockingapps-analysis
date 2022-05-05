package zendesk.support.request;

import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.zendesk.sdk.C1790R;
import zendesk.support.UiUtils;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ViewCellAttachmentMenuItem.class */
class ViewCellAttachmentMenuItem extends FrameLayout {
    private TextView badge;
    private View badgeContainer;
    private View shadow;

    public ViewCellAttachmentMenuItem(@NonNull Context context) {
        super(context);
        viewInit();
    }

    public ViewCellAttachmentMenuItem(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        viewInit();
    }

    public ViewCellAttachmentMenuItem(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        viewInit();
    }

    private void bindViews() {
        this.badgeContainer = findViewById(C1790R.C1793id.request_actionview_badge_container);
        this.badge = (TextView) findViewById(C1790R.C1793id.request_actionview_attachment_count);
        this.shadow = findViewById(C1790R.C1793id.request_actionview_compat_shadow);
    }

    private void tintBadge() {
        UiUtils.setTint(UiUtils.themeAttributeToColor(C1790R.C1791attr.colorAccent, getContext(), C1790R.color.zs_request_fallback_color_primary), this.badge.getBackground(), this.badge);
    }

    private void viewInit() {
        inflate(getContext(), C1790R.C1794layout.zs_request_attachment_actionview, this);
        bindViews();
        tintBadge();
        if (Build.VERSION.SDK_INT < 21) {
            this.shadow.setVisibility(0);
        }
        setContentDescription(UtilsAttachment.getContentDescriptionForAttachmentButton(getContext(), 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBadgeCount(int i) {
        if (i > 0) {
            this.badgeContainer.setVisibility(0);
            this.badge.setText(String.valueOf(i));
        } else {
            this.badgeContainer.setVisibility(8);
        }
        setContentDescription(UtilsAttachment.getContentDescriptionForAttachmentButton(getContext(), i));
    }
}
