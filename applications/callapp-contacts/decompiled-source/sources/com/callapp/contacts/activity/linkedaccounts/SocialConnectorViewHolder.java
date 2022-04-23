package com.callapp.contacts.activity.linkedaccounts;

import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/linkedaccounts/SocialConnectorViewHolder.class */
class SocialConnectorViewHolder extends BaseCallAppViewHolder {
    private final SwitchCompat s;
    private final ProfilePictureView t;
    private final TextView u;
    private final TextView v;

    public SocialConnectorViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.s = (SwitchCompat) callAppRow.findViewById(2131364043);
        callAppRow.setBackground(new ColorDrawable(ThemeUtils.getColor(2131099686)));
        this.t = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.u = (TextView) callAppRow.findViewById(2131364130);
        TextView textView = (TextView) callAppRow.findViewById(2131364030);
        this.v = textView;
        textView.setVisibility(8);
        callAppRow.setSwipeable(false);
    }

    public ProfilePictureView getProfilePicture() {
        return this.t;
    }

    public SwitchCompat getSwitchView() {
        return this.s;
    }

    public void setChecked(boolean z) {
        this.s.setChecked(z);
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        ((CallAppRow) this.itemView).setOnContainerClickListener(onClickListener);
    }

    public void setOnSwitchViewContainerClickListener(View.OnClickListener onClickListener) {
        this.s.setOnClickListener(onClickListener);
    }

    public void setSubtitleText(CharSequence charSequence) {
        this.v.setText(charSequence);
        this.v.setVisibility(StringUtils.a(charSequence) ? 8 : 0);
    }

    public void setSubtitleTextColor(int i) {
        this.v.setTextColor(i);
    }

    public void setTitleText(CharSequence charSequence) {
        this.u.setText(charSequence);
    }

    public void setTitleTextColor(int i) {
        this.u.setTextColor(i);
    }
}
