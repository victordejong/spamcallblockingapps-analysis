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

    /* renamed from: g */
    private List<CallLogData> f20669g;

    /* renamed from: h */
    private int f20670h;

    /* renamed from: i */
    private final boolean f20671i;

    /* renamed from: j */
    private final String f20672j;

    /* renamed from: k */
    private int f20673k;

    /* renamed from: l */
    private int f20674l;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/AggregateCallLogData$CallLogData.class */
    public class CallLogData {

        /* renamed from: b */
        private int f20676b;

        /* renamed from: c */
        private long f20677c;

        /* renamed from: d */
        private long f20678d;

        /* renamed from: e */
        private Date f20679e;

        CallLogData(int i, long j, long j2, Date date) {
            AggregateCallLogData.this = r5;
            this.f20676b = i;
            this.f20677c = j;
            this.f20678d = j2;
            this.f20679e = date;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            CallLogData callLogData = (CallLogData) obj;
            if (this.f20676b != callLogData.f20676b || this.f20677c != callLogData.f20677c || this.f20678d != callLogData.f20678d) {
                return false;
            }
            return Objects.equals(this.f20679e, callLogData.f20679e);
        }

        public long getCallId() {
            return this.f20677c;
        }

        public int getCallType() {
            return this.f20676b;
        }

        public Date getDate() {
            return this.f20679e;
        }

        public long getDuration() {
            return this.f20678d;
        }

        public int hashCode() {
            int i = this.f20676b;
            long j = this.f20677c;
            int i2 = (int) (j ^ (j >>> 32));
            long j2 = this.f20678d;
            int i3 = (int) (j2 ^ (j2 >>> 32));
            Date date = this.f20679e;
            return (((((i * 31) + i2) * 31) + i3) * 31) + (date != null ? date.hashCode() : 0);
        }
    }

    public AggregateCallLogData(int i, Date date, String str, Phone phone, int i2, int i3, String str2, SimManager.SimId simId, int i4, long j) {
        super(i, date, str, phone, i3, str2, simId);
        this.f20669g = new ArrayList(4);
        this.f20674l = 0;
        m31370a(i, i2, j, date != null ? new Date(date.getTime()) : null);
        this.f20670h = i4;
        this.f20671i = false;
        this.f20672j = null;
    }

    public AggregateCallLogData(AggregateCallLogData aggregateCallLogData) {
        super(aggregateCallLogData);
        this.f20669g = new ArrayList(4);
        this.f20674l = 0;
        this.f20669g = new ArrayList(aggregateCallLogData.f20669g);
        this.f20670h = aggregateCallLogData.getDateType();
        this.f20671i = aggregateCallLogData.isTitle();
        this.f20672j = aggregateCallLogData.getTitle();
        this.f20674l = aggregateCallLogData.getTotalInteractionCount();
    }

    /* renamed from: a */
    public final boolean m31371a(int i) {
        int aggregateSize = getAggregateSize();
        if (aggregateSize < i) {
            return false;
        }
        for (int i2 = aggregateSize - i; i2 < aggregateSize; i2++) {
            if (this.f20669g.get(i2).f20676b != 3) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public final boolean m31370a(long j, int i, long j2, Date date) {
        if (getAggregateSize() <= 4) {
            this.f20669g.add(new CallLogData(i, j, j2, date));
            return true;
        }
        return false;
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
        return this.f20669g.equals(aggregateCallLogData.getCallLogs()) && this.f20670h == aggregateCallLogData.getDateType() && this.f20671i == aggregateCallLogData.isTitle();
    }

    public int getAggregateSize() {
        return this.f20669g.size();
    }

    public List<CallLogData> getCallLogs() {
        return this.f20669g;
    }

    public int getDateType() {
        return this.f20670h;
    }

    @Override // com.callapp.contacts.activity.interfaces.StickyHeaderSection
    public int getSectionId() {
        return this.f20673k;
    }

    public String getTitle() {
        return this.f20672j;
    }

    public int getTotalInteractionCount() {
        return this.f20674l;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallLogData, com.callapp.contacts.activity.base.BaseAdapterItemData
    public int hashCode() {
        int hashCode = super.hashCode();
        List<CallLogData> list = this.f20669g;
        return (((hashCode * 31) + (list == null ? 0 : list.hashCode())) * 31) + this.f20670h;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallLogData, com.callapp.contacts.activity.base.BaseAdapterItemData
    public boolean includeContactIdInHashcodeAndEquals() {
        return false;
    }

    public boolean isCallTypesFull() {
        return getAggregateSize() == 4;
    }

    public boolean isTitle() {
        return this.f20671i;
    }

    public void setSectionId(int i) {
        this.f20673k = i;
    }

    public void setTotalInteractionCount(int i) {
        this.f20674l = i;
    }

    public String toString() {
        return "AggregateCallLogData{callLogs=" + this.f20669g + ", dateType=" + this.f20670h + ", isTitle=" + this.f20671i + ", title='" + this.f20672j + "', sectionId=" + this.f20673k + ", totalInteractionCount=" + this.f20674l + ", numberType=" + this.f20272a + ", numberLabel='" + this.f20273b + "', phone=" + this.f20274c + ", date=" + this.f20275d + ", id=" + this.f20276e + ", simId=" + this.f20277f + ", textHighlights=" + this.textHighlights + ", descriptionHighlights=" + this.descriptionHighlights + ", numberMatchIndexStart=" + this.numberMatchIndexStart + ", numberMatchIndexEnd=" + this.numberMatchIndexEnd + ", nameT9='" + this.nameT9 + "', nameT9NoZero='" + this.nameT9NoZero + "', t9Indexes=" + this.t9Indexes + ", normalNumbers=" + this.normalNumbers + ", namesMap=" + this.namesMap + ", descriptionMap=" + this.descriptionMap + ", unaccentName='" + this.unaccentName + "', unaccentDescription='" + this.unaccentDescription + "', contactId=" + this.contactId + ", displayName='" + this.displayName + "', lookupKey='" + this.lookupKey + "', isChecked=" + this.isChecked + '}';
    }
}
