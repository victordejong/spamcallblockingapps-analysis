package p131c.p135b.p136a.p143d.p146b;

import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import p131c.p135b.p136a.p143d.C2173h;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
/* renamed from: c.b.a.d.b.a */
/* loaded from: classes-dex2jar.jar:c/b/a/d/b/a.class */
public abstract class AbstractC2134a {
    public final MaxAdFormat adFormat;
    public final String adUnitId;
    public final C2374t logger;
    public final C2341l sdk;
    public final String tag;
    public MaxAdListener adListener = null;
    public final C2173h.C2175b loadRequestBuilder = new C2173h.C2175b();

    public AbstractC2134a(String str, MaxAdFormat maxAdFormat, String str2, C2341l lVar) {
        this.adUnitId = str;
        this.adFormat = maxAdFormat;
        this.sdk = lVar;
        this.tag = str2;
        this.logger = lVar.m30262d0();
    }

    public String getAdUnitId() {
        return this.adUnitId;
    }

    public void setExtraParameter(String str, String str2) {
        if (str != null) {
            this.loadRequestBuilder.m30797a(str, str2);
            return;
        }
        throw new IllegalArgumentException("No key specified");
    }

    public void setListener(MaxAdListener maxAdListener) {
        C2374t tVar = this.logger;
        String str = this.tag;
        tVar.m30044b(str, "Setting listener: " + maxAdListener);
        this.adListener = maxAdListener;
    }
}
