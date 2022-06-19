package p000;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
/* renamed from: ai1 */
/* loaded from: classes3-dex2jar.jar:ai1.class */
public class ai1 extends BaseUrlGenerator {

    /* renamed from: e */
    public final Context f333e;

    /* renamed from: f */
    public String f334f;

    public ai1(Context context) {
        this.f333e = context;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m4022h(str, Constants.POSITIONING_HANDLER);
        m7103m(this.f334f);
        m4021i("1");
        ClientMetadata clientMetadata = ClientMetadata.getInstance(this.f333e);
        m4028b("nv", clientMetadata.getSdkVersion());
        m4026d();
        m4025e();
        m4018l(clientMetadata.getDeviceManufacturer(), clientMetadata.getDeviceModel(), clientMetadata.getDeviceProduct());
        m4020j(clientMetadata.getAppVersion());
        m4027c();
        return m4024f();
    }

    /* renamed from: m */
    public final void m7103m(String str) {
        m4028b("id", str);
    }

    public ai1 withAdUnitId(String str) {
        this.f334f = str;
        return this;
    }
}
