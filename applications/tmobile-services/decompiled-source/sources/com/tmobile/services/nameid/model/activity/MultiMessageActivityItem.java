package com.tmobile.services.nameid.model.activity;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.model.MessageUserPreference;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/activity/MultiMessageActivityItem.class */
public class MultiMessageActivityItem implements RecentActivityDisplayable {
    private Date date;
    private int messageCountBlocked;
    private int messageCountReceived;
    private Date timeStamp;

    public MultiMessageActivityItem() {
        this.messageCountReceived = 0;
        this.messageCountBlocked = 0;
    }

    public MultiMessageActivityItem(RecentActivityDisplayable recentActivityDisplayable, RecentActivityDisplayable recentActivityDisplayable2) {
        boolean z = false;
        this.messageCountReceived = 0;
        this.messageCountBlocked = 0;
        this.date = recentActivityDisplayable.getDate();
        if (recentActivityDisplayable.getTimeStamp().compareTo(recentActivityDisplayable2.getTimeStamp()) > 0 ? true : z) {
            this.timeStamp = recentActivityDisplayable.getTimeStamp();
        } else {
            this.timeStamp = recentActivityDisplayable2.getTimeStamp();
        }
        this.messageCountReceived = recentActivityDisplayable.getMessageCountReceived() + recentActivityDisplayable2.getMessageCountReceived();
        this.messageCountBlocked = recentActivityDisplayable.getMessageCountBlocked() + recentActivityDisplayable2.getMessageCountBlocked();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public int compareTo(RecentActivityDisplayable recentActivityDisplayable) {
        return getTimeStamp().compareTo(recentActivityDisplayable.getTimeStamp());
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public RecentActivityDisplayable copy() {
        MultiMessageActivityItem multiMessageActivityItem = new MultiMessageActivityItem();
        multiMessageActivityItem.date = this.date;
        multiMessageActivityItem.timeStamp = this.timeStamp;
        multiMessageActivityItem.messageCountReceived = this.messageCountReceived;
        multiMessageActivityItem.messageCountBlocked = this.messageCountBlocked;
        return multiMessageActivityItem;
    }

    public boolean equals(RecentActivityDisplayable recentActivityDisplayable) {
        return this.timeStamp.equals(recentActivityDisplayable.getTimeStamp());
    }

    public boolean equals(@Nullable Object obj) {
        return obj instanceof MultiMessageActivityItem ? equals((RecentActivityDisplayable) ((MultiMessageActivityItem) obj)) : super.equals(obj);
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public int getCommEventType() {
        return ApiUtils.CommEventType.TEXT.getValue();
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public Date getDate() {
        return this.date;
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public int getDisposition() {
        return this.messageCountBlocked > 0 ? MessageUserPreference.Action.BLOCKED.getValue() : MessageUserPreference.Action.NONE.getValue();
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable, com.tmobile.services.nameid.model.activity.ActivityDisplayable
    @NonNull
    public String getId() {
        return toString();
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public int getMessageCountBlocked() {
        return this.messageCountBlocked;
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public int getMessageCountReceived() {
        return this.messageCountReceived;
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public Date getTimeStamp() {
        return this.timeStamp;
    }

    public int hashCode() {
        return super.hashCode();
    }
}
