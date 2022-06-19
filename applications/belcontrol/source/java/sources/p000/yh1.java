package p000;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
import com.mopub.nativeads.RequestParameters;
/* renamed from: yh1 */
/* loaded from: classes3-dex2jar.jar:yh1.class */
public class yh1 extends AdUrlGenerator {

    /* renamed from: m */
    public String f8739m;

    /* renamed from: n */
    public String f8740n;

    public yh1(Context context) {
        super(context);
    }

    /* renamed from: N */
    public final void m82N() {
        if (!TextUtils.isEmpty(this.f8739m)) {
            m4028b("assets", this.f8739m);
        }
    }

    /* renamed from: O */
    public final void m81O() {
        if (!TextUtils.isEmpty(this.f8740n)) {
            m4028b("MAGIC_NO", this.f8740n);
        }
    }

    /* renamed from: P */
    public yh1 m80P(RequestParameters requestParameters) {
        if (requestParameters != null) {
            this.f4135h = MoPub.canCollectPersonalInformation() ? requestParameters.getUserDataKeywords() : null;
            this.f4134g = requestParameters.getKeywords();
            this.f8739m = requestParameters.getDesiredAssets();
        }
        return this;
    }

    /* renamed from: Q */
    public yh1 m79Q(int i) {
        this.f8740n = String.valueOf(i);
        return this;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m4022h(str, Constants.AD_HANDLER);
        m4047m(ClientMetadata.getInstance(this.f4132e));
        m82N();
        m81O();
        return m4024f();
    }

    @Override // com.mopub.common.AdUrlGenerator
    public yh1 withAdUnitId(String str) {
        this.f4133f = str;
        return this;
    }
}
