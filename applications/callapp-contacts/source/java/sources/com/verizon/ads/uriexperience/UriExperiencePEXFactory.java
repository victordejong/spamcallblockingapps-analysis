package com.verizon.ads.uriexperience;

import android.content.Context;
import com.verizon.ads.PEXFactory;
import com.verizon.ads.PEXHandler;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/uriexperience/UriExperiencePEXFactory.class */
public class UriExperiencePEXFactory implements PEXFactory {

    /* renamed from: a */
    private Context f61737a;

    public UriExperiencePEXFactory(Context context) {
        this.f61737a = context;
    }

    @Override // com.verizon.ads.PEXFactory
    public PEXHandler getHandler() {
        return new UriExperiencePEXHandler(this.f61737a);
    }
}
