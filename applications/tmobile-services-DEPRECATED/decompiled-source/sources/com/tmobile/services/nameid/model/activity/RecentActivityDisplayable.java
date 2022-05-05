package com.tmobile.services.nameid.model.activity;

import androidx.annotation.NonNull;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/activity/RecentActivityDisplayable.class */
public interface RecentActivityDisplayable extends Comparable<RecentActivityDisplayable> {
    /* JADX WARN: Can't rename method to resolve collision */
    int compareTo(RecentActivityDisplayable recentActivityDisplayable);

    @Override // java.lang.Comparable
    /* bridge */ /* synthetic */ int compareTo(RecentActivityDisplayable recentActivityDisplayable);

    RecentActivityDisplayable copy();

    int getCommEventType();

    Date getDate();

    int getDisposition();

    @NonNull
    String getId();

    int getMessageCountBlocked();

    int getMessageCountReceived();

    Date getTimeStamp();
}
