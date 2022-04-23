package com.apptentive.android.sdk.module.messagecenter.view.holder;

import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.module.messagecenter.model.MessageCenterGreeting;
import com.apptentive.android.sdk.module.messagecenter.view.ApptentiveAvatarView;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.image.ImageUtil;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/holder/GreetingHolder.class */
public class GreetingHolder extends RecyclerView.ViewHolder {
    public ApptentiveAvatarView avatar;
    public TextView body;
    public ImageButton infoButton;
    public TextView title;

    public GreetingHolder(View view) {
        super(view);
        this.title = (TextView) view.findViewById(C0726R.C0729id.greeting_title);
        this.body = (TextView) view.findViewById(C0726R.C0729id.greeting_body);
        this.avatar = (ApptentiveAvatarView) view.findViewById(C0726R.C0729id.avatar);
        this.infoButton = (ImageButton) view.findViewById(C0726R.C0729id.btn_info);
    }

    public void bindView(MessageCenterGreeting messageCenterGreeting) {
        this.title.setText(messageCenterGreeting.title);
        this.title.setContentDescription(messageCenterGreeting.title);
        this.body.setText(messageCenterGreeting.body);
        this.body.setContentDescription(messageCenterGreeting.body);
        ImageUtil.startDownloadAvatarTask(this.avatar, messageCenterGreeting.avatar);
        this.infoButton.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.GreetingHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(final View view) {
                view.setClickable(false);
                view.postDelayed(new Runnable(this) { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.GreetingHolder.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        view.setClickable(true);
                    }
                }, 300L);
                ApptentiveInternal.getInstance().showAboutInternal(Util.castContextToActivity(GreetingHolder.this.itemView.getContext()), false);
            }
        }));
        this.infoButton.setClickable(true);
    }
}
