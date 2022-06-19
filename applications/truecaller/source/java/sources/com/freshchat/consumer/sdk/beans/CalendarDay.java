package com.freshchat.consumer.sdk.beans;

import android.os.Parcel;
import android.os.Parcelable;
import com.freshchat.consumer.sdk.C1298R;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/CalendarDay.class */
public class CalendarDay {
    private final String day;
    private final Map<PartOfDay, List<TimeSlot>> timeSlotsMap = new TreeMap(new Comparator<PartOfDay>() { // from class: com.freshchat.consumer.sdk.beans.CalendarDay.1
        public int compare(PartOfDay partOfDay, PartOfDay partOfDay2) {
            return partOfDay.startHour - partOfDay2.startHour;
        }
    });

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay.class */
    public enum PartOfDay {
        MORNING(0, 12, C1298R.string.freshchat_calendar_part_of_day_morning),
        AFTERNOON(12, 16, C1298R.string.freshchat_calendar_part_of_day_afternoon),
        EVENING(16, 20, C1298R.string.freshchat_calendar_part_of_day_evening),
        NIGHT(20, 24, C1298R.string.freshchat_calendar_part_of_day_night);
        
        private final int endHour;
        private final int startHour;
        private final int stringResId;

        PartOfDay(int i, int i2, int i3) {
            this.startHour = i;
            this.endHour = i2;
            this.stringResId = i3;
        }

        public static PartOfDay getPartOfDay(int i) {
            PartOfDay[] values = values();
            for (int i2 = 0; i2 < 4; i2++) {
                PartOfDay partOfDay = values[i2];
                if (partOfDay.startHour <= i && i < partOfDay.endHour) {
                    return partOfDay;
                }
            }
            return null;
        }

        public int getEndHour() {
            return this.endHour;
        }

        public int getStartHour() {
            return this.startHour;
        }

        public int getStringResId() {
            return this.stringResId;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot.class */
    public static class TimeSlot implements Parcelable, Comparable<TimeSlot> {
        public static final Parcelable.Creator<TimeSlot> CREATOR = new Parcelable.Creator<TimeSlot>() { // from class: com.freshchat.consumer.sdk.beans.CalendarDay.TimeSlot.1
            @Override // android.os.Parcelable.Creator
            public TimeSlot createFromParcel(Parcel parcel) {
                return new TimeSlot(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public TimeSlot[] newArray(int i) {
                return new TimeSlot[i];
            }
        };
        private final long fromMillis;
        private final long toMillis;

        public TimeSlot(long j, long j2) {
            this.fromMillis = j;
            this.toMillis = j2;
        }

        public TimeSlot(Parcel parcel) {
            this.fromMillis = parcel.readLong();
            this.toMillis = parcel.readLong();
        }

        public int compareTo(TimeSlot timeSlot) {
            return (int) (this.fromMillis - timeSlot.fromMillis);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public long getFromMillis() {
            return this.fromMillis;
        }

        public long getToMillis() {
            return this.toMillis;
        }

        public String toString() {
            StringBuilder m8704I = C22128a.m8704I("TimeSlot{", " fromMillis : '");
            m8704I.append(this.fromMillis);
            m8704I.append('\'');
            m8704I.append(", toMillis : '");
            m8704I.append(this.toMillis);
            m8704I.append('\'');
            m8704I.append('}');
            return m8704I.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.fromMillis);
            parcel.writeLong(this.toMillis);
        }
    }

    public CalendarDay(String str) {
        this.day = str;
    }

    public String getDay() {
        return this.day;
    }

    public Map<PartOfDay, List<TimeSlot>> getTimeSlotsMap() {
        return this.timeSlotsMap;
    }
}
