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

    /* renamed from: s */
    private final SwitchCompat f23223s;

    /* renamed from: t */
    private final ProfilePictureView f23224t;

    /* renamed from: u */
    private final TextView f23225u;

    /* renamed from: v */
    private final TextView f23226v;

    public SocialConnectorViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.f23223s = (SwitchCompat) callAppRow.findViewById(2131364043);
        callAppRow.setBackground(new ColorDrawable(ThemeUtils.getColor(2131099686)));
        this.f23224t = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.f23225u = (TextView) callAppRow.findViewById(2131364130);
        TextView textView = (TextView) callAppRow.findViewById(2131364030);
        this.f23226v = textView;
        textView.setVisibility(8);
        callAppRow.setSwipeable(false);
    }

    public ProfilePictureView getProfilePicture() {
        return this.f23224t;
    }

    public SwitchCompat getSwitchView() {
        return this.f23223s;
    }

    public void setChecked(boolean z) {
        this.f23223s.setChecked(z);
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        ((CallAppRow) this.itemView).setOnContainerClickListener(onClickListener);
    }

    public void setOnSwitchViewContainerClickListener(View.OnClickListener onClickListener) {
        this.f23223s.setOnClickListener(onClickListener);
    }

    public void setSubtitleText(CharSequence charSequence) {
        this.f23226v.setText(charSequence);
        this.f23226v.setVisibility(StringUtils.m26059a(charSequence) ? 8 : 0);
    }

    public void setSubtitleTextColor(int i) {
        this.f23226v.setTextColor(i);
    }

    public void setTitleText(CharSequence charSequence) {
        this.f23225u.setText(charSequence);
    }

    public void setTitleTextColor(int i) {
        this.f23225u.setTextColor(i);
    }
}
