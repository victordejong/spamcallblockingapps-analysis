package com.callapp.contacts.model.objectbox;

import android.util.Pair;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.api.helper.backup.BackupUtils;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallRecorder.class */
public class CallRecorder extends BaseAdapterItemData implements MonitoredDeviceID, Serializable {
    public static final int INCOMING_CALL_TYPE = 1;
    public static final int OUTGOING_CALL_TYPE = 0;
    public static final int TEST_TYPE = 2;
    private static final long serialVersionUID = -3944656042495134945L;
    private int callType;
    private long date;
    private long duration;
    private String fileName;

    /* renamed from: id */
    private Long f26759id;
    private boolean isUploaded;
    private String note;
    private String phoneOrIdKey;
    private String phoneText;
    private boolean starred;

    public CallRecorder() {
        this.isUploaded = false;
    }

    public CallRecorder(Long l, String str, long j, String str2, long j2, boolean z, String str3, int i) {
        this(l, str, j, str2, j2, z, str3, i, false);
    }

    public CallRecorder(Long l, String str, long j, String str2, long j2, boolean z, String str3, int i, boolean z2) {
        this.isUploaded = false;
        this.f26759id = l;
        this.phoneOrIdKey = str;
        this.date = j;
        this.fileName = str2;
        this.duration = j2;
        this.starred = z;
        this.note = str3;
        this.callType = i;
        this.isUploaded = z2;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public String calculateCacheKey() {
        return String.format(Locale.US, "CallRecorderData_%s-%d", this.phoneText, Long.valueOf(this.contactId));
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        CallRecorder callRecorder = (CallRecorder) obj;
        return this.date == callRecorder.date && this.duration == callRecorder.duration && this.starred == callRecorder.starred && this.callType == callRecorder.callType && Objects.equals(this.f26759id, callRecorder.f26759id) && Objects.equals(this.phoneOrIdKey, callRecorder.phoneOrIdKey) && Objects.equals(this.fileName, callRecorder.fileName) && Objects.equals(this.note, callRecorder.note);
    }

    public String getBackupFileName() {
        StringBuilder sb = new StringBuilder();
        sb.append(BackupUtils.m29300a(this.date, "yyy_MM_dd"));
        int i = ((int) this.duration) / 60;
        sb.append("_".concat(String.valueOf(i)));
        sb.append("_".concat(String.valueOf(((int) this.duration) - (i * 60))));
        if (StringUtils.m26045b((CharSequence) this.phoneOrIdKey)) {
            Pair<String, Long> splitPhoneOrIdKey = ContactData.splitPhoneOrIdKey(this.phoneOrIdKey);
            if (StringUtils.m26045b((CharSequence) splitPhoneOrIdKey.first)) {
                String m26087e = Phone.m26093b((String) splitPhoneOrIdKey.first).m26087e();
                sb.append("_");
                sb.append(m26087e);
                ContactData m28325a = ContactUtils.m28325a((String) splitPhoneOrIdKey.first);
                if (StringUtils.m26045b((CharSequence) m28325a.getFullName())) {
                    String m29291b = BackupUtils.m29291b(m28325a.getFullName());
                    sb.append("_");
                    sb.append(m29291b);
                }
            } else {
                List<Phone> m28301f = ContactUtils.m28301f(((Long) splitPhoneOrIdKey.second).longValue());
                if (!m28301f.isEmpty() && StringUtils.m26045b((CharSequence) m28301f.get(0).toString())) {
                    sb.append("_");
                    sb.append(Phone.m26093b(m28301f.get(0).toString()).m26087e());
                }
                List<String> m28309b = ContactUtils.m28309b(Collections.singletonList(String.valueOf(splitPhoneOrIdKey.second)));
                if (CollectionUtils.m26068b(m28309b)) {
                    String str = m28309b.get(0);
                    if (StringUtils.m26045b((CharSequence) str)) {
                        String m29291b2 = BackupUtils.m29291b(str);
                        sb.append("_");
                        sb.append(m29291b2);
                    }
                }
            }
        }
        String str2 = this.fileName;
        sb.append(str2.substring(str2.lastIndexOf(".")));
        return sb.toString();
    }

    public int getCallType() {
        return this.callType;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public long getContactId() {
        return this.contactId;
    }

    public long getDate() {
        return this.date;
    }

    public long getDuration() {
        return this.duration;
    }

    public String getFileName() {
        return this.fileName;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public Long getId() {
        return this.f26759id;
    }

    public String getNote() {
        return this.note;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public Phone getPhone() {
        return PhoneManager.get().m28239a(this.phoneText);
    }

    public String getPhoneOrIdKey() {
        return this.phoneOrIdKey;
    }

    public String getPhoneText() {
        return this.phoneText;
    }

    public boolean getStarred() {
        return this.starred;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 15;
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public int hashCode() {
        return Objects.hash(Integer.valueOf(super.hashCode()), this.f26759id, this.phoneOrIdKey, Long.valueOf(this.date), this.fileName, Long.valueOf(this.duration), Boolean.valueOf(this.starred), this.note, Integer.valueOf(this.callType));
    }

    @Override // com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }

    public boolean isUploaded() {
        return this.isUploaded;
    }

    public void setCallType(int i) {
        this.callType = i;
    }

    public void setContactId(long j) {
        this.contactId = j;
    }

    public void setDate(long j) {
        this.date = j;
    }

    public void setDuration(long j) {
        this.duration = j;
    }

    public void setFileName(String str) {
        this.fileName = str;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setId(Long l) {
        this.f26759id = l;
    }

    public void setNote(String str) {
        this.note = str;
    }

    @Override // com.callapp.contacts.model.objectbox.MonitoredDeviceID
    public void setPhoneOrIdKey(String str) {
        this.phoneOrIdKey = str;
    }

    public void setPhoneText(String str) {
        this.phoneText = str;
    }

    public void setStarred(boolean z) {
        this.starred = z;
    }

    public void setUploaded(boolean z) {
        this.isUploaded = z;
    }

    public String toString() {
        return "CallRecorder{id=" + this.f26759id + ", phoneOrIdKey='" + this.phoneOrIdKey + "', date=" + this.date + ", fileName='" + this.fileName + "', duration=" + this.duration + ", phoneText='" + this.phoneText + "', starred=" + this.starred + ", note='" + this.note + "', callType=" + this.callType + '}';
    }
}
