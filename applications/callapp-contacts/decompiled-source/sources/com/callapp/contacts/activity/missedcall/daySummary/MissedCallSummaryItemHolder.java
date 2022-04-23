package com.callapp.contacts.activity.missedcall.daySummary;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.widget.ProfilePictureView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder.class */
public class MissedCallSummaryItemHolder extends BaseCallAppViewHolder {
    ProfilePictureView s;
    AppCompatTextView t;
    AppCompatImageView u;
    TextView v;
    private OnProfilePictureListener w;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$OnProfilePictureListener.class */
    public interface OnProfilePictureListener {
        void a(MissedCallSummaryItem missedCallSummaryItem);
    }

    public MissedCallSummaryItemHolder(View view, OnProfilePictureListener onProfilePictureListener) {
        super(view);
        this.s = (ProfilePictureView) view.findViewById(2131363565);
        this.v = (TextView) view.findViewById(2131363347);
        FrameLayout frameLayout = (FrameLayout) view.findViewById(2131362071);
        this.u = (AppCompatImageView) frameLayout.findViewById(2131362130);
        this.t = (AppCompatTextView) frameLayout.findViewById(2131362131);
        this.w = onProfilePictureListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnClickListener(final MissedCallSummaryItem missedCallSummaryItem) {
        this.s.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.daySummary.MissedCallSummaryItemHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MissedCallSummaryItemHolder.this.w != null) {
                    MissedCallSummaryItemHolder.this.w.a(missedCallSummaryItem);
                }
            }
        });
    }
}
