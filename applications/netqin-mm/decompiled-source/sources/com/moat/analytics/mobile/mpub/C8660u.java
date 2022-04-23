package com.moat.analytics.mobile.mpub;

import android.media.MediaPlayer;
import android.view.View;
import com.mopub.mobileads.VastIconXmlManager;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.moat.analytics.mobile.mpub.u */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/u.class */
public class C8660u extends AbstractC8630h implements NativeVideoTracker {

    /* renamed from: m */
    public WeakReference<MediaPlayer> f33570m;

    public C8660u(String str) {
        super(str);
        C8652p.m4848a(3, "NativeVideoTracker", this, "In initialization method.");
        if (str == null || str.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            sb.append("PartnerCode is ");
            sb.append(str == null ? "null" : "empty");
            String sb2 = sb.toString();
            C8652p.m4845a("[ERROR] ", 3, "NativeVideoTracker", this, "NativeDisplayTracker creation problem, " + sb2);
            this.f33433a = new C8643m(sb2);
        }
        C8652p.m4843a("[SUCCESS] ", mo4781a() + " created");
    }

    /* renamed from: a */
    private void m4818a(MediaPlayer mediaPlayer) {
        if (mediaPlayer != null) {
            try {
                mediaPlayer.getCurrentPosition();
            } catch (Exception e) {
                throw new C8643m("Playback has already completed");
            }
        } else {
            throw new C8643m("Null player instance");
        }
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8618b
    /* renamed from: a */
    public String mo4781a() {
        return "NativeVideoTracker";
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8619c, com.moat.analytics.mobile.mpub.AbstractC8618b
    /* renamed from: a */
    public void mo4779a(List<String> list) {
        if (!mo4817n()) {
            list.add("Player is null");
        }
        super.mo4779a(list);
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8619c
    /* renamed from: i */
    public Map<String, Object> mo4778i() {
        MediaPlayer mediaPlayer = this.f33570m.get();
        HashMap hashMap = new HashMap();
        hashMap.put("width", Integer.valueOf(mediaPlayer.getVideoWidth()));
        hashMap.put("height", Integer.valueOf(mediaPlayer.getVideoHeight()));
        hashMap.put(VastIconXmlManager.DURATION, Integer.valueOf(mediaPlayer.getDuration()));
        return hashMap;
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8630h
    /* renamed from: n */
    public boolean mo4817n() {
        WeakReference<MediaPlayer> weakReference = this.f33570m;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8630h
    /* renamed from: o */
    public Integer mo4816o() {
        return Integer.valueOf(this.f33570m.get().getCurrentPosition());
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8630h
    /* renamed from: q */
    public boolean mo4815q() {
        return this.f33570m.get().isPlaying();
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8630h
    /* renamed from: r */
    public Integer mo4814r() {
        return Integer.valueOf(this.f33570m.get().getDuration());
    }

    @Override // com.moat.analytics.mobile.mpub.NativeVideoTracker
    public boolean trackVideoAd(Map<String, String> map, MediaPlayer mediaPlayer, View view) {
        try {
            m4976c();
            m4975d();
            m4818a(mediaPlayer);
            this.f33570m = new WeakReference<>(mediaPlayer);
            return super.mo4942a(map, view);
        } catch (Exception e) {
            C8643m.m4879a(e);
            String a = C8643m.m4878a("trackVideoAd", e);
            TrackerListener trackerListener = this.f33436d;
            if (trackerListener != null) {
                trackerListener.onTrackingFailedToStart(a);
            }
            C8652p.m4848a(3, "NativeVideoTracker", this, a);
            C8652p.m4843a("[ERROR] ", mo4781a() + " " + a);
            return false;
        }
    }
}
