package com.callapp.contacts.activity.choosesocialprofile;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.CallAppRadioButton;
import com.callapp.contacts.widget.ProfilePictureView;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder.class */
public class AddDevicePhotoViewHolder extends BaseCallAppViewHolder {
    CallAppRow s;
    ProfilePictureView t;
    TextView u;
    CallAppRadioButton v;
    View w;

    public AddDevicePhotoViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        int color = ThemeUtils.getColor(2131099784);
        this.s = callAppRow;
        this.t = (ProfilePictureView) callAppRow.findViewById(2131363565);
        TextView textView = (TextView) callAppRow.findViewById(2131364130);
        this.u = textView;
        textView.setTextColor(color);
        this.v = (CallAppRadioButton) callAppRow.findViewById(2131363607);
        TextView textView2 = (TextView) callAppRow.findViewById(2131362610);
        this.w = callAppRow.findViewById(2131362608);
        ((ImageView) callAppRow.findViewById(2131362609)).setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        textView2.setText(Activities.getString(2131886778));
        textView2.setTextColor(color);
        callAppRow.setBackgroundColor(ThemeUtils.getColor(2131099686));
    }
}
