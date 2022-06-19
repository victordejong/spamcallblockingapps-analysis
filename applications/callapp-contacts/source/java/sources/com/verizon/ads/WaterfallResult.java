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

    /* renamed from: c */
    private final Map<String, Object> f61285c;

    /* renamed from: e */
    private final Bid f61287e;

    /* renamed from: f */
    private long f61288f;

    /* renamed from: g */
    private ErrorInfo f61289g;

    /* renamed from: a */
    private final long f61283a = System.currentTimeMillis();

    /* renamed from: b */
    private final String f61284b = UUID.randomUUID().toString();

    /* renamed from: d */
    private final List<WaterfallItemResult> f61286d = new ArrayList();

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/WaterfallResult$WaterfallItemResult.class */
    public static final class WaterfallItemResult {

        /* renamed from: a */
        private final long f61290a;

        /* renamed from: b */
        private Waterfall.WaterfallItem f61291b;

        /* renamed from: c */
        private Map<String, Object> f61292c;

        /* renamed from: d */
        private long f61293d;

        /* renamed from: e */
        private ErrorInfo f61294e;

        private WaterfallItemResult(Waterfall.WaterfallItem waterfallItem) {
            this.f61290a = System.currentTimeMillis();
            this.f61291b = waterfallItem;
        }

        /* renamed from: a */
        public final boolean m5514a(ErrorInfo errorInfo) {
            synchronized (this) {
                if (this.f61293d <= 0 && this.f61294e == null) {
                    Waterfall.WaterfallItem waterfallItem = this.f61291b;
                    if (waterfallItem != null) {
                        this.f61292c = waterfallItem.getMetadata();
                        this.f61291b = null;
                    }
                    this.f61293d = System.currentTimeMillis() - this.f61290a;
                    this.f61294e = errorInfo;
                    return true;
                }
                return false;
            }
        }

        public final long getElapsedTime() {
            return this.f61293d;
        }

        public final ErrorInfo getErrorInfo() {
            return this.f61294e;
        }

        public final Map<String, Object> getMetadata() {
            Map<String, Object> map = this.f61292c;
            if (map == null) {
                return null;
            }
            return Collections.unmodifiableMap(map);
        }

        public final long getStartTime() {
            return this.f61290a;
        }

        public final String toString() {
            String sb;
            synchronized (this) {
                StringBuilder sb2 = new StringBuilder("WaterfallItemResult{startTime=");
                sb2.append(this.f61290a);
                sb2.append(", elapsedTime=");
                sb2.append(this.f61293d);
                sb2.append(", errorInfo=");
                ErrorInfo errorInfo = this.f61294e;
                sb2.append(errorInfo == null ? "" : errorInfo.toString());
                sb2.append(", waterfallItem=");
                Waterfall.WaterfallItem waterfallItem = this.f61291b;
                sb2.append(waterfallItem == null ? "" : waterfallItem.toString());
                sb2.append(", waterfallItemMetadata= ");
                Map<String, Object> map = this.f61292c;
                sb2.append(map == null ? "" : map.toString());
                sb2.append('}');
                sb = sb2.toString();
            }
            return sb;
        }
    }

    public WaterfallResult(Waterfall waterfall, Bid bid) {
        this.f61285c = waterfall.getMetadata();
        this.f61287e = bid;
    }

    public final Bid getBid() {
        return this.f61287e;
    }

    public final long getElapsedTime() {
        return this.f61288f;
    }

    public final ErrorInfo getErrorInfo() {
        return this.f61289g;
    }

    public final String getEventId() {
        return this.f61284b;
    }

    public final Map<String, Object> getMetadata() {
        Map<String, Object> map = this.f61285c;
        if (map == null) {
            return null;
        }
        return Collections.unmodifiableMap(map);
    }

    public final long getStartTime() {
        return this.f61283a;
    }

    public final List<WaterfallItemResult> getWaterfallItemResults() {
        return Collections.unmodifiableList(this.f61286d);
    }

    public final void setResult(ErrorInfo errorInfo) {
        synchronized (this) {
            if (this.f61288f <= 0 && this.f61289g == null) {
                this.f61288f = System.currentTimeMillis() - this.f61283a;
                this.f61289g = errorInfo;
                if (this.f61286d.size() > 0) {
                    List<WaterfallItemResult> list = this.f61286d;
                    list.get(list.size() - 1).m5514a(errorInfo);
                }
                Events.sendEvent(EVENT_WATERFALL_RESULT, this);
            }
        }
    }

    public final WaterfallItemResult startWaterfallItem(Waterfall.WaterfallItem waterfallItem) {
        WaterfallItemResult waterfallItemResult;
        synchronized (this) {
            synchronized (this.f61286d) {
                waterfallItemResult = new WaterfallItemResult(waterfallItem);
                this.f61286d.add(waterfallItemResult);
            }
        }
        return waterfallItemResult;
    }

    public final String toString() {
        String sb;
        synchronized (this) {
            StringBuilder sb2 = new StringBuilder("WaterfallResult{eventId=");
            sb2.append(this.f61284b);
            sb2.append(", startTime=");
            sb2.append(this.f61283a);
            sb2.append(", elapsedTime=");
            sb2.append(this.f61288f);
            sb2.append(", waterfallMetadata=");
            Map<String, Object> map = this.f61285c;
            sb2.append(map == null ? "" : map.toString());
            sb2.append(", waterfallItemResults=");
            sb2.append(this.f61286d.toString());
            sb2.append('}');
            sb = sb2.toString();
        }
        return sb;
    }
}
