package com.tmobile.services.nameid.model.activity;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerDetailsData;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.Contact;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.utility.ContactLookup;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PhoneNumberHelper;
import com.tmobile.services.nameid.utility.StringParsingUtils;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.realm.AbstractC2168x99eef720;
import io.realm.Realm;
import io.realm.RealmObject;
import io.realm.RealmQuery;
import io.realm.annotations.Ignore;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
import java.util.Objects;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/activity/EventSummaryItem.class */
public class EventSummaryItem extends RealmObject implements RecentActivityDisplayable, ActivityDisplayable, CallerDetailsData, AbstractC2168x99eef720 {
    private static final String LOG_TAG = "EventSummaryItem#";
    private static final Date epoch = new Date(0);
    private int callCountBlocked;
    private int callCountForwarded;
    private int callCountReceived;
    private int callCountVoicemail;
    private Date callLastDateBlocked;
    private Date callLastDateForwarded;
    private Date callLastDateReceived;
    private Date callLastDateVoicemail;
    @Ignore
    private Contact contact;
    private Date date;
    private int disposition;
    @PrimaryKey

    /* renamed from: id */
    private String f13616id;
    private Date lastActivityTimeStamp;
    private int lastBucketId;
    private int messageCountBlocked;
    private int messageCountReceived;
    private Date messageLastDateBlocked;
    private Date messageLastDateReceived;
    private String name;
    private String originatingNumber;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/activity/EventSummaryItem$Type.class */
    public enum Type {
        UNKNOWN(-1),
        RECEIVED(0),
        BLOCKED(1),
        ALL(2);
        
        private final int value;

        Type(int i) {
            this.value = i;
        }

        public static Type fromValue(int i) {
            return (i <= 0 || i >= values().length) ? UNKNOWN : values()[i];
        }

        public int getValue() {
            return this.value;
        }
    }

    public EventSummaryItem() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$id(UUID.randomUUID().toString());
        realmSet$messageCountReceived(0);
        realmSet$messageCountBlocked(0);
        realmSet$callCountReceived(0);
        realmSet$callCountBlocked(0);
        realmSet$callCountForwarded(0);
        realmSet$callCountVoicemail(0);
        this.contact = null;
    }

    private boolean hasCategory() {
        return realmGet$lastBucketId() != CategorySetting.BucketId.NONE.getValue();
    }

    private void setLastActivityTimeStamp(Date date) {
        if (date != null) {
            realmSet$lastActivityTimeStamp(date);
        }
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    @NonNull
    public Caller buildCaller() {
        Caller caller = new Caller();
        caller.setDate(realmGet$date());
        caller.setE164Number(getE164Number());
        caller.setNumberAsInput(realmGet$originatingNumber());
        caller.setBucketId(realmGet$lastBucketId());
        if (StringParsingUtils.m5336d(realmGet$originatingNumber())) {
            caller.setIsEmail(true);
            caller.setE164Number(realmGet$originatingNumber());
        } else {
            caller.setIsEmail(false);
            caller.setE164Number(getE164Number());
        }
        caller.setName(realmGet$name().trim().isEmpty() ? WidgetUtils.m5230i(getE164Number()) : getName());
        return caller;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public int compareTo(RecentActivityDisplayable recentActivityDisplayable) {
        Date timeStamp = getTimeStamp();
        Date timeStamp2 = recentActivityDisplayable.getTimeStamp();
        if (timeStamp.equals(epoch) || timeStamp2.equals(epoch)) {
            return 0;
        }
        return getTimeStamp().compareTo(recentActivityDisplayable.getTimeStamp());
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public EventSummaryItem copy() {
        EventSummaryItem eventSummaryItem = new EventSummaryItem();
        eventSummaryItem.setId(realmGet$id());
        eventSummaryItem.setDate(realmGet$date());
        eventSummaryItem.setLastActivityTimeStamp(realmGet$lastActivityTimeStamp());
        eventSummaryItem.setOriginatingNumber(realmGet$originatingNumber());
        eventSummaryItem.setName(realmGet$name());
        eventSummaryItem.setLastBucketId(realmGet$lastBucketId());
        eventSummaryItem.setDisposition(realmGet$disposition());
        eventSummaryItem.setMessageCountReceived(realmGet$messageCountReceived());
        eventSummaryItem.setMessageLastDateReceived(realmGet$messageLastDateReceived());
        eventSummaryItem.setMessageCountBlocked(realmGet$messageCountBlocked());
        eventSummaryItem.setMessageLastDateBlocked(realmGet$messageLastDateBlocked());
        eventSummaryItem.setCallCountReceived(realmGet$callCountReceived());
        eventSummaryItem.setCallLastDateReceived(realmGet$callLastDateReceived());
        eventSummaryItem.setCallCountBlocked(realmGet$callCountBlocked());
        eventSummaryItem.setCallLastDateBlocked(realmGet$callLastDateBlocked());
        eventSummaryItem.setCallCountForwarded(realmGet$callCountForwarded());
        eventSummaryItem.setCallLastDateForwarded(realmGet$callLastDateForwarded());
        eventSummaryItem.setCallCountVoicemail(realmGet$callCountVoicemail());
        eventSummaryItem.setCallLastDateVoicemail(realmGet$callLastDateVoicemail());
        return eventSummaryItem;
    }

    public boolean equals(@Nullable RecentActivityDisplayable recentActivityDisplayable) {
        return recentActivityDisplayable != null && recentActivityDisplayable.getDate().equals(getDate()) && recentActivityDisplayable.getCommEventType() == getCommEventType() && recentActivityDisplayable.getDisposition() == getDisposition();
    }

    public boolean equals(Object obj) {
        return obj instanceof RecentActivityDisplayable ? equals((RecentActivityDisplayable) obj) : super.equals(obj);
    }

    public int getCallCountBlocked() {
        return realmGet$callCountBlocked();
    }

    public int getCallCountForwarded() {
        return realmGet$callCountForwarded();
    }

    public int getCallCountReceived() {
        return realmGet$callCountReceived();
    }

    public int getCallCountVoicemail() {
        return realmGet$callCountVoicemail();
    }

    public Date getCallLastDateBlocked() {
        return realmGet$callLastDateBlocked();
    }

    public Date getCallLastDateForwarded() {
        return realmGet$callLastDateForwarded();
    }

    public Date getCallLastDateReceived() {
        return realmGet$callLastDateReceived();
    }

    public Date getCallLastDateVoicemail() {
        return realmGet$callLastDateVoicemail();
    }

    public int getCallQuantity() {
        return realmGet$callCountReceived() + realmGet$callCountBlocked() + realmGet$callCountForwarded() + realmGet$callCountVoicemail();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    @Nullable
    public Caller getCaller() {
        try {
            Realm G0 = Realm.m3064G0();
            String e164Number = getE164Number();
            RealmQuery Q0 = G0.m3053Q0(Caller.class);
            Q0.m2882t("e164Number", e164Number);
            Caller caller = (Caller) Q0.m2916G();
            if (caller != null) {
                Caller copy = caller.copy();
                if (G0 != null) {
                    G0.close();
                }
                return copy;
            } else if (G0 == null) {
                return null;
            } else {
                G0.close();
                return null;
            }
        } catch (Exception e) {
            LogUtil.m5641f(LOG_TAG, "", e);
            return null;
        }
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public CallerSetting getCallerSetting() {
        return ApiUtils.m6844o(getE164Number());
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public int getCategory() {
        return 0;
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public int getCategoryRes() {
        return realmGet$lastBucketId();
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public int getCommEventType() {
        return hasMessageData() ? ApiUtils.CommEventType.TEXT.getValue() : ApiUtils.CommEventType.CALL.getValue();
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public Contact getContact() {
        if (this.contact == null) {
            this.contact = ContactLookup.m5824d().m5823e(getE164Number());
        }
        return this.contact;
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    @NonNull
    public Date getDate() {
        return realmGet$date();
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public String getDisplayCategory(Context context) {
        return context.getString(getCategoryRes());
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public String getDisplayName() {
        return (realmGet$name() == null || realmGet$name().equalsIgnoreCase("not found")) ? "" : realmGet$name();
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public String getDisplayNumber(@Nullable String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return PhoneNumberHelper.m5412g(getE164Number(), str2);
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public int getDisposition() {
        return realmGet$disposition();
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public String getE164Number() {
        return !StringParsingUtils.m5336d(realmGet$originatingNumber()) ? PhoneNumberHelper.m5415d(realmGet$originatingNumber()) : realmGet$originatingNumber();
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable, com.tmobile.services.nameid.model.activity.ActivityDisplayable
    @NonNull
    public String getId() {
        return realmGet$id();
    }

    public int getLastBucketId() {
        return realmGet$lastBucketId();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public String getLocation() {
        return PhoneNumberHelper.m5411h(getE164Number());
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public int getMessageCountBlocked() {
        return realmGet$messageCountBlocked();
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    public int getMessageCountReceived() {
        return realmGet$messageCountReceived();
    }

    public Date getMessageLastDateBlocked() {
        return realmGet$messageLastDateBlocked();
    }

    public Date getMessageLastDateReceived() {
        return realmGet$messageLastDateReceived();
    }

    public int getMessageQuantity() {
        return realmGet$messageCountReceived() + realmGet$messageCountBlocked();
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public MessageUserPreference getMessageUserPreference() {
        return ApiUtils.m6830v(getE164Number());
    }

    public String getName() {
        return realmGet$name().equalsIgnoreCase("not found") ? "" : realmGet$name();
    }

    public String getOriginatingNumber() {
        return realmGet$originatingNumber();
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public String getPrimaryDisplayInfo(Context context) {
        String string = isPrivate() ? context.getString(C1517R.string.private_caller_name) : isScammer() ? (!hasContact() || wasBlocked()) ? context.getString(C1517R.string.category_name_scam_likely) : getName() : hasCategory() ? getDisplayCategory(context) : getName();
        String str = string;
        if (string.isEmpty()) {
            str = getDisplayNumber("");
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0040, code lost:
        if (hasCallerName() != false) goto L_0x0043;
     */
    @Override // com.tmobile.services.nameid.model.activity.ActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getSecondaryDisplayInfo(android.content.Context r4) {
        /*
            r3 = this;
            r0 = r3
            boolean r0 = r0.isPrivate()
            r5 = r0
            java.lang.String r0 = ""
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0012
            r0 = r6
            r4 = r0
            goto L_0x004b
        L_0x0012:
            r0 = r3
            boolean r0 = r0.isScammer()
            if (r0 == 0) goto L_0x0033
            r0 = r6
            r4 = r0
            r0 = r3
            boolean r0 = r0.hasContact()
            if (r0 == 0) goto L_0x004b
            r0 = r6
            r4 = r0
            r0 = r3
            boolean r0 = r0.wasBlocked()
            if (r0 != 0) goto L_0x004b
            r0 = r3
            java.lang.String r0 = r0.getName()
            r4 = r0
            goto L_0x004b
        L_0x0033:
            r0 = r3
            boolean r0 = r0.hasCategory()
            if (r0 != 0) goto L_0x0043
            r0 = r6
            r4 = r0
            r0 = r3
            boolean r0 = r0.hasCallerName()
            if (r0 == 0) goto L_0x004b
        L_0x0043:
            r0 = r3
            java.lang.String r1 = ""
            java.lang.String r0 = r0.getDisplayNumber(r1)
            r4 = r0
        L_0x004b:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.model.activity.EventSummaryItem.getSecondaryDisplayInfo(android.content.Context):java.lang.String");
    }

    @Override // com.tmobile.services.nameid.model.activity.RecentActivityDisplayable
    @NonNull
    public Date getTimeStamp() {
        return realmGet$lastActivityTimeStamp() != null ? realmGet$lastActivityTimeStamp() : realmGet$messageLastDateBlocked() != null ? realmGet$messageLastDateBlocked() : realmGet$messageLastDateReceived() != null ? realmGet$messageLastDateReceived() : realmGet$date() != null ? realmGet$date() : epoch;
    }

    public boolean hasCallData() {
        return realmGet$callCountReceived() > 0 || realmGet$callCountBlocked() > 0 || realmGet$callCountForwarded() > 0 || realmGet$callCountVoicemail() > 0;
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public boolean hasCallerName() {
        return realmGet$name() != null && !realmGet$name().isEmpty();
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityDisplayable
    public boolean hasContact() {
        return getContact() == null;
    }

    public boolean hasMessageData() {
        return realmGet$messageCountReceived() > 0 || realmGet$messageCountBlocked() > 0;
    }

    public int hashCode() {
        return Objects.hash(realmGet$id(), realmGet$date(), realmGet$lastActivityTimeStamp(), realmGet$originatingNumber(), realmGet$name(), Integer.valueOf(realmGet$lastBucketId()), Integer.valueOf(realmGet$disposition()), Integer.valueOf(realmGet$messageCountReceived()), realmGet$messageLastDateReceived(), Integer.valueOf(realmGet$messageCountBlocked()), realmGet$messageLastDateBlocked(), Integer.valueOf(realmGet$callCountReceived()), realmGet$callLastDateReceived(), Integer.valueOf(realmGet$callCountBlocked()), realmGet$callLastDateBlocked(), Integer.valueOf(realmGet$callCountForwarded()), realmGet$callLastDateForwarded(), Integer.valueOf(realmGet$callCountVoicemail()), realmGet$callLastDateVoicemail(), this.contact);
    }

    @Override // com.tmobile.services.nameid.model.CallerDetailsData
    public boolean isEmail() {
        return false;
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public boolean isPrivate() {
        return getE164Number().contains("0000000000") && realmGet$lastBucketId() == CategorySetting.BucketId.NONE.getValue();
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public boolean isScammer() {
        return realmGet$lastBucketId() == CategorySetting.BucketId.CALL_BLOCKING.getValue() || realmGet$lastBucketId() == CategorySetting.BucketId.SCAM.getValue();
    }

    @Override // io.realm.AbstractC2168x99eef720
    public int realmGet$callCountBlocked() {
        return this.callCountBlocked;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public int realmGet$callCountForwarded() {
        return this.callCountForwarded;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public int realmGet$callCountReceived() {
        return this.callCountReceived;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public int realmGet$callCountVoicemail() {
        return this.callCountVoicemail;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public Date realmGet$callLastDateBlocked() {
        return this.callLastDateBlocked;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public Date realmGet$callLastDateForwarded() {
        return this.callLastDateForwarded;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public Date realmGet$callLastDateReceived() {
        return this.callLastDateReceived;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public Date realmGet$callLastDateVoicemail() {
        return this.callLastDateVoicemail;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public Date realmGet$date() {
        return this.date;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public int realmGet$disposition() {
        return this.disposition;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public String realmGet$id() {
        return this.f13616id;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public Date realmGet$lastActivityTimeStamp() {
        return this.lastActivityTimeStamp;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public int realmGet$lastBucketId() {
        return this.lastBucketId;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public int realmGet$messageCountBlocked() {
        return this.messageCountBlocked;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public int realmGet$messageCountReceived() {
        return this.messageCountReceived;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public Date realmGet$messageLastDateBlocked() {
        return this.messageLastDateBlocked;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public Date realmGet$messageLastDateReceived() {
        return this.messageLastDateReceived;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public String realmGet$originatingNumber() {
        return this.originatingNumber;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$callCountBlocked(int i) {
        this.callCountBlocked = i;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$callCountForwarded(int i) {
        this.callCountForwarded = i;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$callCountReceived(int i) {
        this.callCountReceived = i;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$callCountVoicemail(int i) {
        this.callCountVoicemail = i;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$callLastDateBlocked(Date date) {
        this.callLastDateBlocked = date;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$callLastDateForwarded(Date date) {
        this.callLastDateForwarded = date;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$callLastDateReceived(Date date) {
        this.callLastDateReceived = date;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$callLastDateVoicemail(Date date) {
        this.callLastDateVoicemail = date;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$date(Date date) {
        this.date = date;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$disposition(int i) {
        this.disposition = i;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$id(String str) {
        this.f13616id = str;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$lastActivityTimeStamp(Date date) {
        this.lastActivityTimeStamp = date;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$lastBucketId(int i) {
        this.lastBucketId = i;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$messageCountBlocked(int i) {
        this.messageCountBlocked = i;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$messageCountReceived(int i) {
        this.messageCountReceived = i;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$messageLastDateBlocked(Date date) {
        this.messageLastDateBlocked = date;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$messageLastDateReceived(Date date) {
        this.messageLastDateReceived = date;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.AbstractC2168x99eef720
    public void realmSet$originatingNumber(String str) {
        this.originatingNumber = str;
    }

    public void setCallCountBlocked(int i) {
        realmSet$callCountBlocked(i);
    }

    public void setCallCountForwarded(int i) {
        realmSet$callCountForwarded(i);
    }

    public void setCallCountReceived(int i) {
        realmSet$callCountReceived(i);
    }

    public void setCallCountVoicemail(int i) {
        realmSet$callCountVoicemail(i);
    }

    public void setCallLastDateBlocked(Date date) {
        realmSet$callLastDateBlocked(date);
        setLastActivityTimeStamp(date);
    }

    public void setCallLastDateForwarded(Date date) {
        realmSet$callLastDateForwarded(date);
        setLastActivityTimeStamp(date);
    }

    public void setCallLastDateReceived(Date date) {
        realmSet$callLastDateReceived(date);
        setLastActivityTimeStamp(date);
    }

    public void setCallLastDateVoicemail(Date date) {
        realmSet$callLastDateVoicemail(date);
        setLastActivityTimeStamp(date);
    }

    public void setDate(@NonNull Date date) {
        realmSet$date(date);
    }

    public void setDisposition(int i) {
        realmSet$disposition(i);
    }

    public void setId(String str) {
        realmSet$id(str);
    }

    public void setLastBucketId(int i) {
        realmSet$lastBucketId(i);
    }

    public void setMessageCountBlocked(int i) {
        realmSet$messageCountBlocked(i);
    }

    public void setMessageCountReceived(int i) {
        realmSet$messageCountReceived(i);
    }

    public void setMessageLastDateBlocked(Date date) {
        realmSet$messageLastDateBlocked(date);
        setLastActivityTimeStamp(date);
    }

    public void setMessageLastDateReceived(Date date) {
        realmSet$messageLastDateReceived(date);
        setLastActivityTimeStamp(date);
    }

    public void setName(String str) {
        realmSet$name(str);
    }

    public void setOriginatingNumber(String str) {
        if (StringParsingUtils.m5336d(str)) {
            realmSet$originatingNumber(str.toLowerCase());
        } else {
            realmSet$originatingNumber(str);
        }
    }

    @Override // com.tmobile.services.nameid.model.activity.ActivityDisplayable, com.tmobile.services.nameid.model.CallerDetailsData
    public boolean shouldHighlight() {
        boolean z = true;
        boolean z2 = hasContact() && hasCategory() && !wasBlocked();
        if (!hasCategory() || z2) {
            z = false;
        }
        return z;
    }

    public String toString() {
        return "EventSummaryItem{id='" + realmGet$id() + "', date=" + realmGet$date() + ", lastActivityTimeStamp=" + realmGet$lastActivityTimeStamp() + ", originatingNumber='" + realmGet$originatingNumber() + "', name='" + realmGet$name() + "', lastBucketId=" + realmGet$lastBucketId() + ", disposition=" + realmGet$disposition() + ", messageCountReceived=" + realmGet$messageCountReceived() + ", messageLastDateReceived=" + realmGet$messageLastDateReceived() + ", messageCountBlocked=" + realmGet$messageCountBlocked() + ", messageLastDateBlocked=" + realmGet$messageLastDateBlocked() + ", callCountReceived=" + realmGet$callCountReceived() + ", callLastDateReceived=" + realmGet$callLastDateReceived() + ", callCountBlocked=" + realmGet$callCountBlocked() + ", callLastDateBlocked=" + realmGet$callLastDateBlocked() + ", callCountForwarded=" + realmGet$callCountForwarded() + ", callLastDateForwarded=" + realmGet$callLastDateForwarded() + ", callCountVoicemail=" + realmGet$callCountVoicemail() + ", callLastDateVoicemail=" + realmGet$callLastDateVoicemail() + ", contact=" + this.contact + '}';
    }

    public boolean wasBlocked() {
        return realmGet$disposition() == ActivityItem.Type.BLOCKED.getValue();
    }
}
