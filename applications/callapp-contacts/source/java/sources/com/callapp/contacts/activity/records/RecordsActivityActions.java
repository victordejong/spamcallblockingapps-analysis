package com.callapp.contacts.activity.records;

import com.callapp.contacts.model.objectbox.CallRecorder;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/RecordsActivityActions.class */
public interface RecordsActivityActions {
    List<CallRecorder> getAllRecords();

    List<CallRecorder> getStarredRecords();

    List<CallRecorder> getUnStarredRecords();
}
