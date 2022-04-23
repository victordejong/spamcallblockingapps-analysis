package com.mopub.nativeads;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/g.class */
final class g extends BaseUrlGenerator {

    /* renamed from: a  reason: collision with root package name */
    private final Context f34685a;

    /* renamed from: b  reason: collision with root package name */
    private String f34686b;

    public g(Context context) {
        this.f34685a = context;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public final String generateUrlString(String str) {
        a(str, Constants.POSITIONING_HANDLER);
        b("id", this.f34686b);
        a("1");
        ClientMetadata instance = ClientMetadata.getInstance(this.f34685a);
        b("nv", instance.getSdkVersion());
        d();
        e();
        a(instance.getDeviceManufacturer(), instance.getDeviceModel(), instance.getDeviceProduct());
        b(instance.getAppVersion());
        c();
        return b();
    }

    public final g withAdUnitId(String str) {
        this.f34686b = str;
        return this;
    }
}
