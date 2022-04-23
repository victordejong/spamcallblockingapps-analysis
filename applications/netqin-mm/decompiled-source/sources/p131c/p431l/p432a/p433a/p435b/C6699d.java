package p131c.p431l.p432a.p433a.p435b;

import com.library.p518ad.strategy.request.facebook.FacebookNativeAdBaseRequest;
import com.netqin.p525cm.p526ad.admob.AdMobAdvancedNativeAdViewMain;
import com.netqin.p525cm.p526ad.admob.AdMobUnifiedNativeBaseRequest;
import com.netqin.p525cm.p526ad.facebook.FacebookAdViewMain;
import com.netqin.p525cm.p526ad.family.NqFamilyAdViewMainPage;
import com.netqin.p525cm.p526ad.mopub.MopubNativeMainAdView;
import java.util.HashMap;
import java.util.Map;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e;
import p131c.p396i.p397a.p406i.AbstractC6556a;
/* renamed from: c.l.a.a.b.d */
/* loaded from: classes2-dex2jar.jar:c/l/a/a/b/d.class */
public class C6699d extends AbstractC6556a {
    @Override // p131c.p396i.p397a.p406i.AbstractC6556a
    /* renamed from: a */
    public String mo20031a() {
        return "1";
    }

    @Override // p131c.p396i.p397a.p406i.AbstractC6556a
    /* renamed from: b */
    public Map<String, Map<Integer, Class<? extends AbstractC6508d>>> mo20030b() {
        HashMap hashMap = new HashMap();
        m20506a(hashMap, "FB", 1, FacebookNativeAdBaseRequest.class);
        m20506a(hashMap, "AM", 1, AdMobUnifiedNativeBaseRequest.class);
        return hashMap;
    }

    @Override // p131c.p396i.p397a.p406i.AbstractC6556a
    /* renamed from: c */
    public Map<String, Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e>> mo20029c() {
        HashMap hashMap = new HashMap();
        hashMap.put("FB", FacebookAdViewMain.class);
        hashMap.put("AM", AdMobAdvancedNativeAdViewMain.class);
        hashMap.put("MP", MopubNativeMainAdView.class);
        hashMap.put("FM", NqFamilyAdViewMainPage.class);
        return hashMap;
    }
}
