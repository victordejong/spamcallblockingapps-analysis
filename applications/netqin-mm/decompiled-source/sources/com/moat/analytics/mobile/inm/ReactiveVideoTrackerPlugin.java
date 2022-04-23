package com.moat.analytics.mobile.inm;

import android.app.Activity;
import android.view.View;
import com.moat.analytics.mobile.inm.C8596x;
import com.moat.analytics.mobile.inm.p519a.p521b.C8534a;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/ReactiveVideoTrackerPlugin.class */
public class ReactiveVideoTrackerPlugin implements MoatPlugin<ReactiveVideoTracker> {

    /* renamed from: a */
    public final String f33206a;

    /* renamed from: com.moat.analytics.mobile.inm.ReactiveVideoTrackerPlugin$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/ReactiveVideoTrackerPlugin$a.class */
    public static class C8530a implements ReactiveVideoTracker {
        @Override // com.moat.analytics.mobile.inm.ReactiveVideoTracker
        public void changeTargetView(View view) {
        }

        @Override // com.moat.analytics.mobile.inm.ReactiveVideoTracker
        public void dispatchEvent(MoatAdEvent moatAdEvent) {
        }

        @Override // com.moat.analytics.mobile.inm.ReactiveVideoTracker
        public void removeListener() {
        }

        @Override // com.moat.analytics.mobile.inm.ReactiveVideoTracker
        public void removeVideoListener() {
        }

        @Override // com.moat.analytics.mobile.inm.ReactiveVideoTracker
        public void setActivity(Activity activity) {
        }

        @Override // com.moat.analytics.mobile.inm.ReactiveVideoTracker
        public void setListener(TrackerListener trackerListener) {
        }

        @Override // com.moat.analytics.mobile.inm.ReactiveVideoTracker
        public void setPlayerVolume(Double d) {
        }

        @Override // com.moat.analytics.mobile.inm.ReactiveVideoTracker
        public void setVideoListener(VideoTrackerListener videoTrackerListener) {
        }

        @Override // com.moat.analytics.mobile.inm.ReactiveVideoTracker
        public void stopTracking() {
        }

        @Override // com.moat.analytics.mobile.inm.ReactiveVideoTracker
        public boolean trackVideoAd(Map<String, String> map, Integer num, View view) {
            return false;
        }
    }

    public ReactiveVideoTrackerPlugin(String str) {
        this.f33206a = str;
    }

    /* renamed from: c */
    public ReactiveVideoTracker mo5258a() {
        return (ReactiveVideoTracker) C8596x.m5049a(new C8596x.AbstractC8598a<ReactiveVideoTracker>() { // from class: com.moat.analytics.mobile.inm.ReactiveVideoTrackerPlugin.1
            @Override // com.moat.analytics.mobile.inm.C8596x.AbstractC8598a
            /* renamed from: a */
            public C8534a<ReactiveVideoTracker> mo5040a() {
                C8571p.m5099a("[INFO] ", "Attempting to create ReactiveVideoTracker");
                return C8534a.m5242a(new C8600y(ReactiveVideoTrackerPlugin.this.f33206a));
            }
        }, ReactiveVideoTracker.class);
    }

    /* renamed from: d */
    public ReactiveVideoTracker mo5256b() {
        return new C8530a();
    }
}
