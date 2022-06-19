package net.pubnative.lite.sdk.audience;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.analytics.Reporting;
import net.pubnative.lite.sdk.consent.model.AdAnalyticsEvent;
import net.pubnative.lite.sdk.consent.model.AdAnalyticsEventAggregated;
import net.pubnative.lite.sdk.consent.model.Location;
import net.pubnative.lite.sdk.consent.p573db.DatabaseHelper;
import net.pubnative.lite.sdk.models.C20576Ad;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018�� \u001e2\u00020\u0001:\u0001\u001eB\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\t\u001a\u00020\n2\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J2\u0010\u000b\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011J2\u0010\u0014\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011JA\u0010\u0015\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011¢\u0006\u0002\u0010\u0018JA\u0010\u0019\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011¢\u0006\u0002\u0010\u0018J2\u0010\u001a\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011J2\u0010\u001b\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011J2\u0010\u001c\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011J\u0010\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001f"}, m4298d2 = {"Lnet/pubnative/lite/sdk/audience/EventAnalytics;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "databaseHelper", "Lnet/pubnative/lite/sdk/consent/db/DatabaseHelper;", "buildHybidDb", "", "fireClickEvent", "ad", "Lnet/pubnative/lite/sdk/models/Ad;", "showTime", "", "creative_type", "", "adFormat", "adSize", "fireImpressionEvent", "fireMuteEvent", "videoPosition", "", "(Lnet/pubnative/lite/sdk/models/Ad;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "fireUnMuteEvent", "fireVideoDismissedEvent", "fireVideoFinishedEvent", "fireVideoStartedEvent", "getTimeDifference", "Companion", "hybid.sdk.core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/audience/EventAnalytics.class */
public final class EventAnalytics {
    public static final Companion Companion = new Companion(null);
    private static EventAnalytics instance;
    private final Context context;
    private DatabaseHelper databaseHelper;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\b"}, m4298d2 = {"Lnet/pubnative/lite/sdk/audience/EventAnalytics$Companion;", "", "()V", "instance", "Lnet/pubnative/lite/sdk/audience/EventAnalytics;", "getInstance", "context", "Landroid/content/Context;", "hybid.sdk.core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/audience/EventAnalytics$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final EventAnalytics getInstance(Context context) {
            if (EventAnalytics.instance == null) {
                EventAnalytics.instance = new EventAnalytics(context);
            }
            return EventAnalytics.instance;
        }
    }

    public EventAnalytics(Context context) {
        this.context = context;
        buildHybidDb(context);
    }

    private final void buildHybidDb(Context context) {
        if (context != null) {
            DatabaseHelper databaseHelper = new DatabaseHelper(context);
            this.databaseHelper = databaseHelper;
            if (databaseHelper == null) {
                return;
            }
            databaseHelper.createTable(C18496ac.m3882b(AdAnalyticsEvent.class));
            databaseHelper.createTable(C18496ac.m3882b(AdAnalyticsEventAggregated.class));
            databaseHelper.createTable(C18496ac.m3882b(Location.class));
        }
    }

    private final long getTimeDifference(long j) {
        return System.currentTimeMillis() - j;
    }

    public final void fireClickEvent(C20576Ad c20576Ad, long j, String str, String adFormat, String adSize) {
        C18524p.m3840d(adFormat, "adFormat");
        C18524p.m3840d(adSize, "adSize");
        AdAnalyticsEvent adAnalyticsEvent = new AdAnalyticsEvent(null, c20576Ad != null ? c20576Ad.getZoneId() : null, "click", str, adFormat, adSize, Long.valueOf(System.currentTimeMillis()), 0L, Long.valueOf(getTimeDifference(j)), 0, 1, null);
        DatabaseHelper databaseHelper = this.databaseHelper;
        if (databaseHelper != null) {
            databaseHelper.insert(adAnalyticsEvent);
        }
    }

    public final void fireImpressionEvent(C20576Ad c20576Ad, long j, String str, String adFormat, String adSize) {
        C18524p.m3840d(adFormat, "adFormat");
        C18524p.m3840d(adSize, "adSize");
        AdAnalyticsEvent adAnalyticsEvent = new AdAnalyticsEvent(null, c20576Ad != null ? c20576Ad.getZoneId() : null, "impression", str, adFormat, adSize, Long.valueOf(System.currentTimeMillis()), 0L, Long.valueOf(getTimeDifference(j)), 0, 1, null);
        DatabaseHelper databaseHelper = this.databaseHelper;
        if (databaseHelper != null) {
            databaseHelper.insert(adAnalyticsEvent);
        }
    }

    public final void fireMuteEvent(C20576Ad c20576Ad, long j, Integer num, String str, String adFormat, String adSize) {
        C18524p.m3840d(adFormat, "adFormat");
        C18524p.m3840d(adSize, "adSize");
        AdAnalyticsEvent adAnalyticsEvent = new AdAnalyticsEvent(null, c20576Ad != null ? c20576Ad.getZoneId() : null, Reporting.EventType.VIDEO_MUTE, str, adFormat, adSize, Long.valueOf(System.currentTimeMillis()), 0L, Long.valueOf(getTimeDifference(j)), num, 1, null);
        DatabaseHelper databaseHelper = this.databaseHelper;
        if (databaseHelper != null) {
            databaseHelper.insert(adAnalyticsEvent);
        }
    }

    public final void fireUnMuteEvent(C20576Ad c20576Ad, long j, Integer num, String str, String adFormat, String adSize) {
        C18524p.m3840d(adFormat, "adFormat");
        C18524p.m3840d(adSize, "adSize");
        AdAnalyticsEvent adAnalyticsEvent = new AdAnalyticsEvent(null, c20576Ad != null ? c20576Ad.getZoneId() : null, Reporting.EventType.VIDEO_UNMUTE, str, adFormat, adSize, Long.valueOf(System.currentTimeMillis()), 0L, Long.valueOf(getTimeDifference(j)), num, 1, null);
        DatabaseHelper databaseHelper = this.databaseHelper;
        if (databaseHelper != null) {
            databaseHelper.insert(adAnalyticsEvent);
        }
    }

    public final void fireVideoDismissedEvent(C20576Ad c20576Ad, long j, String str, String adFormat, String adSize) {
        C18524p.m3840d(adFormat, "adFormat");
        C18524p.m3840d(adSize, "adSize");
        AdAnalyticsEvent adAnalyticsEvent = new AdAnalyticsEvent(null, c20576Ad != null ? c20576Ad.getZoneId() : null, Reporting.EventType.VIDEO_DISMISSED, str, adFormat, adSize, Long.valueOf(System.currentTimeMillis()), 0L, Long.valueOf(getTimeDifference(j)), 0, 1, null);
        DatabaseHelper databaseHelper = this.databaseHelper;
        if (databaseHelper != null) {
            databaseHelper.insert(adAnalyticsEvent);
        }
    }

    public final void fireVideoFinishedEvent(C20576Ad c20576Ad, long j, String str, String adFormat, String adSize) {
        C18524p.m3840d(adFormat, "adFormat");
        C18524p.m3840d(adSize, "adSize");
        AdAnalyticsEvent adAnalyticsEvent = new AdAnalyticsEvent(null, c20576Ad != null ? c20576Ad.getZoneId() : null, Reporting.EventType.VIDEO_FINISHED, str, adFormat, adSize, Long.valueOf(System.currentTimeMillis()), 0L, Long.valueOf(getTimeDifference(j)), 0, 1, null);
        DatabaseHelper databaseHelper = this.databaseHelper;
        if (databaseHelper != null) {
            databaseHelper.insert(adAnalyticsEvent);
        }
    }

    public final void fireVideoStartedEvent(C20576Ad c20576Ad, long j, String str, String adFormat, String adSize) {
        C18524p.m3840d(adFormat, "adFormat");
        C18524p.m3840d(adSize, "adSize");
        AdAnalyticsEvent adAnalyticsEvent = new AdAnalyticsEvent(null, c20576Ad != null ? c20576Ad.getZoneId() : null, Reporting.EventType.VIDEO_STARTED, str, adFormat, adSize, Long.valueOf(System.currentTimeMillis()), 0L, Long.valueOf(getTimeDifference(j)), 0, 1, null);
        DatabaseHelper databaseHelper = this.databaseHelper;
        if (databaseHelper != null) {
            databaseHelper.insert(adAnalyticsEvent);
        }
    }

    public final Context getContext() {
        return this.context;
    }
}
