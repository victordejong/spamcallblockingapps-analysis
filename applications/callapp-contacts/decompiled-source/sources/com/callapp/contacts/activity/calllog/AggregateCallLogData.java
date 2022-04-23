package com.callapp.contacts.activity.calllog;

import com.callapp.contacts.activity.base.BaseCallLogData;
import com.callapp.contacts.activity.interfaces.StickyHeaderSection;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.framework.phone.Phone;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/AggregateCallLogData.class */
public class AggregateCallLogData extends BaseCallLogData implements StickyHeaderSection {
    private List<CallLogData> g;
    private int h;
    private final boolean i;
    private final String j;
    private int k;
    private int l;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData.class */
    public class CallLogData {

        /* renamed from: b  reason: collision with root package name */
        private int f11360b;

        /* renamed from: c  reason: collision with root package name */
        private long f11361c;

        /* renamed from: d  reason: collision with root package name */
        private long f11362d;
        private Date e;

        CallLogData(int i, long j, long j2, Date date) {
            this.f11360b = i;
            this.f11361c = j;
            this.f11362d = j2;
            this.e = date;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            CallLogData callLogData = (CallLogData) obj;
            if (this.f11360b == callLogData.f11360b && this.f11361c == callLogData.f11361c && this.f11362d == callLogData.f11362d) {
                return Objects.equals(this.e, callLogData.e);
            }
            return false;
        }

        public long getCallId() {
            return this.f11361c;
        }

        public int getCallType() {
            return this.f11360b;
        }

        public Date getDate() {
            return this.e;
        }

        public long getDuration() {
            return this.f11362d;
        }

        public int hashCode() {
            int i = this.f11360b;
            long j = this.f11361c;
            int i2 = (int) (j ^ (j >>> 32));
            long j2 = this.f11362d;
            int i3 = (int) (j2 ^ (j2 >>> 32));
            Date date = this.e;
            return (((((i * 31) + i2) * 31) + i3) * 31) + (date != null ? date.hashCode() : 0);
        }
    }

    public AggregateCallLogData(int i, Date date, String str, Phone phone, int i2, int i3, String str2, SimManager.SimId simId, int i4, long j) {
        super(i, date, str, phone, i3, str2, simId);
        this.g = new ArrayList(4);
        this.l = 0;
        a(i, i2, j, date != null ? new Date(date.getTime()) : null);
        this.h = i4;
        this.i = false;
        this.j = null;
    }

    public AggregateCallLogData(AggregateCallLogData aggregateCallLogData) {
        super(aggregateCallLogData);
        this.g = new ArrayList(4);
        this.l = 0;
        this.g = new ArrayList(aggregateCallLogData.g);
        this.h = aggregateCallLogData.getDateType();
        this.i = aggregateCallLogData.isTitle();
        this.j = aggregateCallLogData.getTitle();
        this.l = aggregateCallLogData.getTotalInteractionCount();
    }

    public final boolean a(int i) {
        int aggregateSize = getAggregateSize();
        if (aggregateSize < i) {
            return false;
        }
        for (int i2 = aggregateSize - i; i2 < aggregateSize; i2++) {
            if (this.g.get(i2).f11360b != 3) {
                return false;
            }
        }
        return true;
    }

    public final boolean a(long j, int i, long j2, Date date) {
        if (getAggregateSize() > 4) {
            return false;
        }
        this.g.add(new CallLogData(i, j, j2, date));
        return true;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallLogData, com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof AggregateCallLogData)) {
            return false;
        }
        AggregateCallLogData aggregateCallLogData = (AggregateCallLogData) obj;
        return this.g.equals(aggregateCallLogData.getCallLogs()) && this.h == aggregateCallLogData.getDateType() && this.i == aggregateCallLogData.isTitle();
    }

    public int getAggregateSize() {
        return this.g.size();
    }

    public List<CallLogData> getCallLogs() {
        return this.g;
    }

    public int getDateType() {
        return this.h;
    }

    @Override // com.callapp.contacts.activity.interfaces.StickyHeaderSection
    public int getSectionId() {
        return this.k;
    }

    public String getTitle() {
        return this.j;
    }

    public int getTotalInteractionCount() {
        return this.l;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallLogData, com.callapp.contacts.activity.base.BaseAdapterItemData
    public int hashCode() {
        int hashCode = super.hashCode();
        List<CallLogData> list = this.g;
        return (((hashCode * 31) + (list == null ? 0 : list.hashCode())) * 31) + this.h;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallLogData, com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }

    public boolean isCallTypesFull() {
        return getAggregateSize() == 4;
    }

    public boolean isTitle() {
        return this.i;
    }

    public void setSectionId(int i) {
        this.k = i;
    }

    public void setTotalInteractionCount(int i) {
        this.l = i;
    }

    public String toString() {
        return "AggregateCallLogData{callLogs=" + this.g + ", dateType=" + this.h + ", isTitle=" + this.i + ", title='" + this.j + "', sectionId=" + this.k + ", totalInteractionCount=" + this.l + ", numberType=" + this.f11099a + ", numberLabel='" + this.f11100b + "', phone=" + this.f11101c + ", date=" + this.f11102d + ", id=" + this.e + ", simId=" + this.f + ", textHighlights=" + this.textHighlights + ", descriptionHighlights=" + this.descriptionHighlights + ", numberMatchIndexStart=" + this.numberMatchIndexStart + ", numberMatchIndexEnd=" + this.numberMatchIndexEnd + ", nameT9='" + this.nameT9 + "', nameT9NoZero='" + this.nameT9NoZero + "', t9Indexes=" + this.t9Indexes + ", normalNumbers=" + this.normalNumbers + ", namesMap=" + this.namesMap + ", descriptionMap=" + this.descriptionMap + ", unaccentName='" + this.unaccentName + "', unaccentDescription='" + this.unaccentDescription + "', contactId=" + this.contactId + ", displayName='" + this.displayName + "', lookupKey='" + this.lookupKey + "', isChecked=" + this.isChecked + '}';
    }
}
