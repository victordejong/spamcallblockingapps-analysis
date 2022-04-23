package com.moat.analytics.mobile.inm;

import android.media.MediaPlayer;
import android.view.View;
import com.mopub.mobileads.VastIconXmlManager;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.moat.analytics.mobile.inm.u */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/u.class */
public class C8579u extends AbstractC8549h implements NativeVideoTracker {

    /* renamed from: m */
    public WeakReference<MediaPlayer> f33353m;

    public C8579u(String str) {
        super(str);
        C8571p.m5104a(3, "NativeVideoTracker", this, "In initialization method.");
        if (str == null || str.isEmpty()) {
            StringBuilder sb = new StringBuilder("PartnerCode is ");
            sb.append(str == null ? "null" : "empty");
            String sb2 = sb.toString();
            C8571p.m5101a("[ERROR] ", 3, "NativeVideoTracker", this, "NativeDisplayTracker creation problem, " + sb2);
            this.f33216a = new C8562m(sb2);
        }
        C8571p.m5099a("[SUCCESS] ", mo5037a() + " created");
    }

    /* renamed from: a */
    private void m5074a(MediaPlayer mediaPlayer) {
        if (mediaPlayer != null) {
            try {
                mediaPlayer.getCurrentPosition();
            } catch (Exception e) {
                throw new C8562m("Playback has already completed");
            }
        } else {
            throw new C8562m("Null player instance");
        }
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8537b
    /* renamed from: a */
    public String mo5037a() {
        return "NativeVideoTracker";
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8538c, com.moat.analytics.mobile.inm.AbstractC8537b
    /* renamed from: a */
    public void mo5035a(List<String> list) {
        if (!mo5073n()) {
            list.add("Player is null");
        }
        super.mo5035a(list);
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8538c
    /* renamed from: i */
    public Map<String, Object> mo5034i() {
        MediaPlayer mediaPlayer = this.f33353m.get();
        HashMap hashMap = new HashMap();
        hashMap.put("width", Integer.valueOf(mediaPlayer.getVideoWidth()));
        hashMap.put("height", Integer.valueOf(mediaPlayer.getVideoHeight()));
        hashMap.put(VastIconXmlManager.DURATION, Integer.valueOf(mediaPlayer.getDuration()));
        return hashMap;
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8549h
    /* renamed from: n */
    public boolean mo5073n() {
        WeakReference<MediaPlayer> weakReference = this.f33353m;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8549h
    /* renamed from: o */
    public Integer mo5072o() {
        return Integer.valueOf(this.f33353m.get().getCurrentPosition());
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8549h
    /* renamed from: q */
    public boolean mo5071q() {
        return this.f33353m.get().isPlaying();
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8549h
    /* renamed from: r */
    public Integer mo5070r() {
        return Integer.valueOf(this.f33353m.get().getDuration());
    }

    @Override // com.moat.analytics.mobile.inm.NativeVideoTracker
    public boolean trackVideoAd(Map<String, String> map, MediaPlayer mediaPlayer, View view) {
        try {
            m5232c();
            m5231d();
            m5074a(mediaPlayer);
            this.f33353m = new WeakReference<>(mediaPlayer);
            return super.mo5198a(map, view);
        } catch (Exception e) {
            C8562m.m5135a(e);
            String a = C8562m.m5134a("trackVideoAd", e);
            TrackerListener trackerListener = this.f33219d;
            if (trackerListener != null) {
                trackerListener.onTrackingFailedToStart(a);
            }
            C8571p.m5104a(3, "NativeVideoTracker", this, a);
            C8571p.m5099a("[ERROR] ", mo5037a() + " " + a);
            return false;
        }
    }
}
