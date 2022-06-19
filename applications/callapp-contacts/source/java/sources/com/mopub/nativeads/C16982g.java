package com.mopub.nativeads;

import android.content.Context;
import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
/* renamed from: com.mopub.nativeads.g */
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/g.class */
final class C16982g extends BaseUrlGenerator {

    /* renamed from: a */
    private final Context f60175a;

    /* renamed from: b */
    private String f60176b;

    public C16982g(Context context) {
        this.f60175a = context;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public final String generateUrlString(String str) {
        m6787a(str, Constants.POSITIONING_HANDLER);
        m6783b("id", this.f60176b);
        m6789a("1");
        ClientMetadata clientMetadata = ClientMetadata.getInstance(this.f60175a);
        m6783b("nv", clientMetadata.getSdkVersion());
        m6781d();
        m6780e();
        m6786a(clientMetadata.getDeviceManufacturer(), clientMetadata.getDeviceModel(), clientMetadata.getDeviceProduct());
        m6784b(clientMetadata.getAppVersion());
        m6782c();
        return m6785b();
    }

    public final C16982g withAdUnitId(String str) {
        this.f60176b = str;
        return this;
    }
}
