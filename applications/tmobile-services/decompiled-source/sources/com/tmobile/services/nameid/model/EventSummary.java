package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.tmobile.services.nameid.model.activity.EventSummaryItem;
import com.tmobile.services.nameid.model.activity.RecentActivityDisplayable;
import com.tmobile.services.nameid.utility.LogUtil;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/EventSummary.class */
public class EventSummary {
    public static final int DISP_CONTINUE = 0;
    public static final int DISP_FORWARD = 2;
    public static final int DISP_RELEASE = 1;
    public static final int DISP_VOICEMAIL = 3;
    private static final String LOG_TAG = "EventSummary#";
    private static final int TYPE_TEXT = 2;
    private static final int TYPE_VOICE = 1;
    @SerializedName("eventSummaries")
    @Expose
    private List<Entry> entries;
    @SerializedName("morePages")
    @Expose
    private boolean morePages;
    @SerializedName("page")
    @Expose
    private int page;
    @SerializedName("pageSize")
    @Expose
    private int pageSize;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/EventSummary$Entry.class */
    public static class Entry {
        @SerializedName("lastBucketId")
        @Expose
        private int lastBucketId;
        @SerializedName("originatingNumber")
        @Expose
        private String originatingNumber;
        @SerializedName("originatorName")
        @Expose
        private String originatorName;
        @SerializedName("date")
        @Expose
        private String rawDate;
        @SerializedName("statistics")
        @Expose
        private List<Statistic> statistics;

        public List<EventSummaryItem> toEventSummaryItems() {
            ArrayList arrayList = new ArrayList();
            for (Statistic statistic : this.statistics) {
                EventSummaryItem eventSummaryItem = new EventSummaryItem();
                eventSummaryItem.setDate(EventSummary.formatDate(this.rawDate));
                eventSummaryItem.setOriginatingNumber(this.originatingNumber);
                eventSummaryItem.setName(this.originatorName);
                eventSummaryItem.setLastBucketId(this.lastBucketId);
                statistic.applyTo(eventSummaryItem);
                arrayList.add(eventSummaryItem);
            }
            return arrayList;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/EventSummary$Statistic.class */
    public static class Statistic {
        private static final String LOG_TAG = "EventSummary#Statistic#";
        @SerializedName("commEventType")
        @Expose
        private int commEventType;
        @SerializedName("disposition")
        @Expose
        private int disposition;
        @SerializedName("eventCount")
        @Expose
        private int eventCount;
        @SerializedName("lastEventDts")
        @Expose
        private String lastEventDts;

        void applyCallStatisticTo(EventSummaryItem eventSummaryItem) {
            int i = this.disposition;
            if (i == 0) {
                eventSummaryItem.setCallCountReceived(this.eventCount);
                eventSummaryItem.setCallLastDateReceived(EventSummary.formatTimestamp(this.lastEventDts));
            } else if (i == 1) {
                eventSummaryItem.setCallCountBlocked(this.eventCount);
                eventSummaryItem.setCallLastDateBlocked(EventSummary.formatTimestamp(this.lastEventDts));
            } else if (i == 2) {
                eventSummaryItem.setCallCountForwarded(this.eventCount);
                eventSummaryItem.setCallLastDateForwarded(EventSummary.formatTimestamp(this.lastEventDts));
            } else if (i != 3) {
                LogUtil.m5631p("EventSummary#Statistic#applyCallStatisticTo", "Unrecognized disposition: " + this.disposition);
            } else {
                eventSummaryItem.setCallCountVoicemail(this.eventCount);
                eventSummaryItem.setCallLastDateVoicemail(EventSummary.formatTimestamp(this.lastEventDts));
            }
        }

        void applyMessageStatisticTo(EventSummaryItem eventSummaryItem) {
            int i = this.disposition;
            if (i == 0) {
                eventSummaryItem.setMessageCountReceived(this.eventCount);
                eventSummaryItem.setMessageLastDateReceived(EventSummary.formatTimestamp(this.lastEventDts));
            } else if (i != 1) {
                LogUtil.m5631p("EventSummary#Statistic#applyMessageStatisticTo", "Unrecognized disposition: " + this.disposition);
            } else {
                eventSummaryItem.setMessageCountBlocked(this.eventCount);
                eventSummaryItem.setMessageLastDateBlocked(EventSummary.formatTimestamp(this.lastEventDts));
            }
        }

        void applyTo(EventSummaryItem eventSummaryItem) {
            int i = this.commEventType;
            if (i == 2) {
                applyMessageStatisticTo(eventSummaryItem);
            } else if (i == 1) {
                applyCallStatisticTo(eventSummaryItem);
            } else {
                LogUtil.m5631p("EventSummary#Statistic#applyTo", "Unrecognized commEventType: " + this.commEventType);
            }
            eventSummaryItem.setDisposition(this.disposition);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Date formatDate(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        Date date = new Date();
        try {
            date = simpleDateFormat.parse(str);
        } catch (Exception e) {
            LogUtil.m5641f(LOG_TAG, "Error parsing date, raw date = " + str, e);
        }
        return date;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Date formatTimestamp(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        Date date = new Date();
        try {
            date = simpleDateFormat.parse(str);
        } catch (Exception e) {
            LogUtil.m5641f(LOG_TAG, "Error parsing date, raw date = " + str, e);
        }
        return date;
    }

    public int getPage() {
        return this.page;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public boolean hasMorePages() {
        return this.morePages;
    }

    public int size() {
        return this.entries.size();
    }

    public List<EventSummaryItem> toEventSummaryItems() {
        ArrayList arrayList = new ArrayList();
        for (Entry entry : this.entries) {
            arrayList.addAll(entry.toEventSummaryItems());
        }
        LogUtil.m5643d("EventSummary#toEventSummaryItems", arrayList.size() + " items returned");
        return arrayList;
    }

    public List<RecentActivityDisplayable> toRecentActivityDisplayables() {
        return new ArrayList(toEventSummaryItems());
    }

    public String toString() {
        return "EventSummary{page=" + this.page + ", pageSize=" + this.pageSize + ", morePages=" + this.morePages + ", entries=" + this.entries + '}';
    }
}
