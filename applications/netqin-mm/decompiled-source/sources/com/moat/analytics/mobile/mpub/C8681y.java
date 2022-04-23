package com.moat.analytics.mobile.mpub;

import android.view.View;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.moat.analytics.mobile.mpub.y */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/y.class */
public class C8681y extends AbstractC8619c implements ReactiveVideoTracker {

    /* renamed from: l */
    public Integer f33612l;

    public C8681y(String str) {
        super(str);
        C8652p.m4848a(3, "ReactiveVideoTracker", this, "Initializing.");
        C8652p.m4843a("[SUCCESS] ", mo4781a() + " created");
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8618b
    /* renamed from: a */
    public String mo4781a() {
        return "ReactiveVideoTracker";
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8619c
    /* renamed from: a */
    public JSONObject mo4780a(MoatAdEvent moatAdEvent) {
        if (moatAdEvent.f33417d == MoatAdEventType.AD_EVT_COMPLETE && !moatAdEvent.f33415b.equals(MoatAdEvent.f33413a) && !m4963a(moatAdEvent.f33415b, this.f33612l)) {
            moatAdEvent.f33417d = MoatAdEventType.AD_EVT_STOPPED;
        }
        return super.mo4780a(moatAdEvent);
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8619c, com.moat.analytics.mobile.mpub.AbstractC8618b
    /* renamed from: a */
    public void mo4779a(List<String> list) {
        if (this.f33612l.intValue() >= 1000) {
            super.mo4779a(list);
            return;
        }
        throw new C8643m(String.format(Locale.ROOT, "Invalid duration = %d. Please make sure duration is in milliseconds.", this.f33612l));
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8619c
    /* renamed from: i */
    public Map<String, Object> mo4778i() {
        Integer num;
        HashMap hashMap = new HashMap();
        View view = ((AbstractC8619c) this).f33448k.get();
        int i = 0;
        if (view != null) {
            i = Integer.valueOf(view.getWidth());
            num = Integer.valueOf(view.getHeight());
        } else {
            num = 0;
        }
        hashMap.put(VastIconXmlManager.DURATION, this.f33612l);
        hashMap.put("width", i);
        hashMap.put("height", num);
        return hashMap;
    }

    @Override // com.moat.analytics.mobile.mpub.ReactiveVideoTracker
    public boolean trackVideoAd(Map<String, String> map, Integer num, View view) {
        try {
            m4976c();
            m4975d();
            this.f33612l = num;
            return super.mo4942a(map, view);
        } catch (Exception e) {
            m4977a("trackVideoAd", e);
            return false;
        }
    }
}
