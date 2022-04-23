package com.moat.analytics.mobile.mpub;

import android.app.Activity;
import android.view.View;
import com.moat.analytics.mobile.mpub.C8677x;
import com.moat.analytics.mobile.mpub.p522a.p524b.C8615a;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/ReactiveVideoTrackerPlugin.class */
public class ReactiveVideoTrackerPlugin implements MoatPlugin<ReactiveVideoTracker> {

    /* renamed from: a */
    public final String f33423a;

    /* renamed from: com.moat.analytics.mobile.mpub.ReactiveVideoTrackerPlugin$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/ReactiveVideoTrackerPlugin$a.class */
    public static class C8611a implements ReactiveVideoTracker {
        @Override // com.moat.analytics.mobile.mpub.ReactiveVideoTracker
        public void changeTargetView(View view) {
        }

        @Override // com.moat.analytics.mobile.mpub.ReactiveVideoTracker
        public void dispatchEvent(MoatAdEvent moatAdEvent) {
        }

        @Override // com.moat.analytics.mobile.mpub.ReactiveVideoTracker
        public void removeListener() {
        }

        @Override // com.moat.analytics.mobile.mpub.ReactiveVideoTracker
        public void removeVideoListener() {
        }

        @Override // com.moat.analytics.mobile.mpub.ReactiveVideoTracker
        public void setActivity(Activity activity) {
        }

        @Override // com.moat.analytics.mobile.mpub.ReactiveVideoTracker
        public void setListener(TrackerListener trackerListener) {
        }

        @Override // com.moat.analytics.mobile.mpub.ReactiveVideoTracker
        public void setPlayerVolume(Double d) {
        }

        @Override // com.moat.analytics.mobile.mpub.ReactiveVideoTracker
        public void setVideoListener(VideoTrackerListener videoTrackerListener) {
        }

        @Override // com.moat.analytics.mobile.mpub.ReactiveVideoTracker
        public void stopTracking() {
        }

        @Override // com.moat.analytics.mobile.mpub.ReactiveVideoTracker
        public boolean trackVideoAd(Map<String, String> map, Integer num, View view) {
            return false;
        }
    }

    public ReactiveVideoTrackerPlugin(String str) {
        this.f33423a = str;
    }

    /* renamed from: c */
    public ReactiveVideoTracker mo5002a() {
        return (ReactiveVideoTracker) C8677x.m4793a(new C8677x.AbstractC8679a<ReactiveVideoTracker>() { // from class: com.moat.analytics.mobile.mpub.ReactiveVideoTrackerPlugin.1
            @Override // com.moat.analytics.mobile.mpub.C8677x.AbstractC8679a
            /* renamed from: a */
            public C8615a<ReactiveVideoTracker> mo4784a() {
                C8652p.m4843a("[INFO] ", "Attempting to create ReactiveVideoTracker");
                return C8615a.m4986a(new C8681y(ReactiveVideoTrackerPlugin.this.f33423a));
            }
        }, ReactiveVideoTracker.class);
    }

    /* renamed from: d */
    public ReactiveVideoTracker mo5000b() {
        return new C8611a();
    }
}
