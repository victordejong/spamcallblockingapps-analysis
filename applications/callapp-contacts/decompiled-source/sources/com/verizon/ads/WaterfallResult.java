package com.verizon.ads;

import com.verizon.ads.Waterfall;
import com.verizon.ads.events.Events;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/WaterfallResult.class */
public final class WaterfallResult {
    public static final String EVENT_WATERFALL_RESULT = "com.verizon.ads.waterfall.result";

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Object> f35355c;
    private final Bid e;
    private long f;
    private ErrorInfo g;

    /* renamed from: a  reason: collision with root package name */
    private final long f35353a = System.currentTimeMillis();

    /* renamed from: b  reason: collision with root package name */
    private final String f35354b = UUID.randomUUID().toString();

    /* renamed from: d  reason: collision with root package name */
    private final List<WaterfallItemResult> f35356d = new ArrayList();

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/WaterfallResult$WaterfallItemResult.class */
    public static final class WaterfallItemResult {

        /* renamed from: a  reason: collision with root package name */
        private final long f35357a;

        /* renamed from: b  reason: collision with root package name */
        private Waterfall.WaterfallItem f35358b;

        /* renamed from: c  reason: collision with root package name */
        private Map<String, Object> f35359c;

        /* renamed from: d  reason: collision with root package name */
        private long f35360d;
        private ErrorInfo e;

        private WaterfallItemResult(Waterfall.WaterfallItem waterfallItem) {
            this.f35357a = System.currentTimeMillis();
            this.f35358b = waterfallItem;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean a(ErrorInfo errorInfo) {
            synchronized (this) {
                if (this.f35360d <= 0 && this.e == null) {
                    Waterfall.WaterfallItem waterfallItem = this.f35358b;
                    if (waterfallItem != null) {
                        this.f35359c = waterfallItem.getMetadata();
                        this.f35358b = null;
                    }
                    this.f35360d = System.currentTimeMillis() - this.f35357a;
                    this.e = errorInfo;
                    return true;
                }
                return false;
            }
        }

        public final long getElapsedTime() {
            return this.f35360d;
        }

        public final ErrorInfo getErrorInfo() {
            return this.e;
        }

        public final Map<String, Object> getMetadata() {
            Map<String, Object> map = this.f35359c;
            if (map == null) {
                return null;
            }
            return Collections.unmodifiableMap(map);
        }

        public final long getStartTime() {
            return this.f35357a;
        }

        public final String toString() {
            String sb;
            synchronized (this) {
                StringBuilder sb2 = new StringBuilder("WaterfallItemResult{startTime=");
                sb2.append(this.f35357a);
                sb2.append(", elapsedTime=");
                sb2.append(this.f35360d);
                sb2.append(", errorInfo=");
                ErrorInfo errorInfo = this.e;
                sb2.append(errorInfo == null ? "" : errorInfo.toString());
                sb2.append(", waterfallItem=");
                Waterfall.WaterfallItem waterfallItem = this.f35358b;
                sb2.append(waterfallItem == null ? "" : waterfallItem.toString());
                sb2.append(", waterfallItemMetadata= ");
                Map<String, Object> map = this.f35359c;
                sb2.append(map == null ? "" : map.toString());
                sb2.append('}');
                sb = sb2.toString();
            }
            return sb;
        }
    }

    public WaterfallResult(Waterfall waterfall, Bid bid) {
        this.f35355c = waterfall.getMetadata();
        this.e = bid;
    }

    public final Bid getBid() {
        return this.e;
    }

    public final long getElapsedTime() {
        return this.f;
    }

    public final ErrorInfo getErrorInfo() {
        return this.g;
    }

    public final String getEventId() {
        return this.f35354b;
    }

    public final Map<String, Object> getMetadata() {
        Map<String, Object> map = this.f35355c;
        if (map == null) {
            return null;
        }
        return Collections.unmodifiableMap(map);
    }

    public final long getStartTime() {
        return this.f35353a;
    }

    public final List<WaterfallItemResult> getWaterfallItemResults() {
        return Collections.unmodifiableList(this.f35356d);
    }

    public final void setResult(ErrorInfo errorInfo) {
        synchronized (this) {
            if (this.f <= 0 && this.g == null) {
                this.f = System.currentTimeMillis() - this.f35353a;
                this.g = errorInfo;
                if (this.f35356d.size() > 0) {
                    List<WaterfallItemResult> list = this.f35356d;
                    list.get(list.size() - 1).a(errorInfo);
                }
                Events.sendEvent(EVENT_WATERFALL_RESULT, this);
            }
        }
    }

    public final WaterfallItemResult startWaterfallItem(Waterfall.WaterfallItem waterfallItem) {
        WaterfallItemResult waterfallItemResult;
        synchronized (this) {
            synchronized (this.f35356d) {
                waterfallItemResult = new WaterfallItemResult(waterfallItem);
                this.f35356d.add(waterfallItemResult);
            }
        }
        return waterfallItemResult;
    }

    public final String toString() {
        String sb;
        synchronized (this) {
            StringBuilder sb2 = new StringBuilder("WaterfallResult{eventId=");
            sb2.append(this.f35354b);
            sb2.append(", startTime=");
            sb2.append(this.f35353a);
            sb2.append(", elapsedTime=");
            sb2.append(this.f);
            sb2.append(", waterfallMetadata=");
            Map<String, Object> map = this.f35355c;
            sb2.append(map == null ? "" : map.toString());
            sb2.append(", waterfallItemResults=");
            sb2.append(this.f35356d.toString());
            sb2.append('}');
            sb = sb2.toString();
        }
        return sb;
    }
}
