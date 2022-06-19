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

    /* renamed from: s */
    ProfilePictureView f23954s;

    /* renamed from: t */
    AppCompatTextView f23955t;

    /* renamed from: u */
    AppCompatImageView f23956u;

    /* renamed from: v */
    TextView f23957v;

    /* renamed from: w */
    private OnProfilePictureListener f23958w;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$OnProfilePictureListener.class */
    public interface OnProfilePictureListener {
        /* renamed from: a */
        void mo29776a(MissedCallSummaryItem missedCallSummaryItem);
    }

    public MissedCallSummaryItemHolder(View view, OnProfilePictureListener onProfilePictureListener) {
        super(view);
        this.f23954s = (ProfilePictureView) view.findViewById(2131363565);
        this.f23957v = (TextView) view.findViewById(2131363347);
        FrameLayout frameLayout = (FrameLayout) view.findViewById(2131362071);
        this.f23956u = (AppCompatImageView) frameLayout.findViewById(2131362130);
        this.f23955t = (AppCompatTextView) frameLayout.findViewById(2131362131);
        this.f23958w = onProfilePictureListener;
    }

    public void setOnClickListener(final MissedCallSummaryItem missedCallSummaryItem) {
        this.f23954s.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.daySummary.MissedCallSummaryItemHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MissedCallSummaryItemHolder.this.f23958w != null) {
                    MissedCallSummaryItemHolder.this.f23958w.mo29776a(missedCallSummaryItem);
                }
            }
        });
    }
}
