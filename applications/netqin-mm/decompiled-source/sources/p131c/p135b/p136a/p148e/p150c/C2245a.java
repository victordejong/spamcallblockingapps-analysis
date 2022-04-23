package p131c.p135b.p136a.p148e.p150c;

import android.net.Uri;
import com.applovin.impl.adview.AbstractC6929h;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.impl.sdk.p489ad.EnumC7029b;
import com.mopub.common.AdType;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.e.c.a */
/* loaded from: classes-dex2jar.jar:c/b/a/e/c/a.class */
public final class C2245a extends AbstractC7036g {

    /* renamed from: o */
    public final String f8433o = m30660J0();

    /* renamed from: p */
    public final String f8434p = m30658L0();

    /* renamed from: q */
    public final String f8435q = m30661I0();

    public C2245a(JSONObject jSONObject, JSONObject jSONObject2, EnumC7029b bVar, C2341l lVar) {
        super(jSONObject, jSONObject2, bVar, lVar);
    }

    @Override // com.applovin.impl.sdk.p489ad.AbstractC7036g
    /* renamed from: A */
    public void mo18965A() {
        synchronized (this.adObjectLock) {
            C2390i.m29926a(this.adObject, AdType.HTML, this.f8433o, this.sdk);
            C2390i.m29926a(this.adObject, "stream_url", this.f8435q, this.sdk);
        }
    }

    /* renamed from: I0 */
    public final String m30661I0() {
        return getStringFromAdObject("stream_url", "");
    }

    /* renamed from: J0 */
    public String m30660J0() {
        String b;
        synchronized (this.adObjectLock) {
            b = C2390i.m29913b(this.adObject, AdType.HTML, (String) null, this.sdk);
        }
        return b;
    }

    /* renamed from: K0 */
    public void m30659K0() {
        synchronized (this.adObjectLock) {
            this.adObject.remove("stream_url");
        }
    }

    /* renamed from: L0 */
    public String m30658L0() {
        return getStringFromAdObject("video", "");
    }

    /* renamed from: M0 */
    public Uri m30657M0() {
        String stringFromAdObject = getStringFromAdObject("click_url", "");
        if (C2422o.m29851b(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    /* renamed from: N0 */
    public float m30656N0() {
        return getFloatFromAdObject("mraid_close_delay_graphic", 0.0f);
    }

    /* renamed from: O0 */
    public boolean m30655O0() {
        return getBooleanFromAdObject("close_button_graphic_hidden", false);
    }

    /* renamed from: P0 */
    public boolean m30654P0() {
        if (this.adObject.has("close_button_expandable_hidden")) {
            return getBooleanFromAdObject("close_button_expandable_hidden", false);
        }
        return true;
    }

    /* renamed from: Q0 */
    public AbstractC6929h.EnumC6930a m30653Q0() {
        return m18929a(getIntFromAdObject("expandable_style", AbstractC6929h.EnumC6930a.INVISIBLE.m19328a()));
    }

    /* renamed from: a */
    public void m30652a(String str) {
        synchronized (this.adObjectLock) {
            C2390i.m29926a(this.adObject, AdType.HTML, str, this.sdk);
        }
    }

    /* renamed from: d */
    public void m30651d(Uri uri) {
        synchronized (this.adObjectLock) {
            C2390i.m29926a(this.adObject, "video", uri.toString(), this.sdk);
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public boolean hasVideoUrl() {
        return mo18871t0() != null;
    }

    @Override // com.applovin.impl.sdk.p489ad.AbstractC7036g
    /* renamed from: r0 */
    public String mo18875r0() {
        return this.f8434p;
    }

    @Override // com.applovin.impl.sdk.p489ad.AbstractC7036g
    /* renamed from: s0 */
    public boolean mo18873s0() {
        return this.adObject.has("stream_url");
    }

    @Override // com.applovin.impl.sdk.p489ad.AbstractC7036g
    /* renamed from: t0 */
    public Uri mo18871t0() {
        String I0 = m30661I0();
        if (C2422o.m29851b(I0)) {
            return Uri.parse(I0);
        }
        String L0 = m30658L0();
        if (C2422o.m29851b(L0)) {
            return Uri.parse(L0);
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.p489ad.AbstractC7036g
    /* renamed from: u0 */
    public Uri mo18869u0() {
        String stringFromAdObject = getStringFromAdObject("video_click_url", "");
        return C2422o.m29851b(stringFromAdObject) ? Uri.parse(stringFromAdObject) : m30657M0();
    }
}
