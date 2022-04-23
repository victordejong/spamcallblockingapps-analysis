package com.verizon.ads.uriexperience;

import android.content.Context;
import com.verizon.ads.AdSession;
import com.verizon.ads.Logger;
import com.verizon.ads.PEXHandler;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/uriexperience/UriExperiencePEXHandler.class */
public class UriExperiencePEXHandler implements PEXHandler {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35646a = Logger.getInstance(UriExperiencePEXHandler.class);

    /* renamed from: b  reason: collision with root package name */
    private Context f35647b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UriExperiencePEXHandler(Context context) {
        this.f35647b = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0134 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0178 A[SYNTHETIC] */
    @Override // com.verizon.ads.PEXHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void execute(android.content.Context r8, com.verizon.ads.PEXHandler.PEXHandlerListener r9, org.json.JSONObject r10) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.uriexperience.UriExperiencePEXHandler.execute(android.content.Context, com.verizon.ads.PEXHandler$PEXHandlerListener, org.json.JSONObject):void");
    }

    @Override // com.verizon.ads.PEXHandler
    public void prepare(AdSession adSession, PEXHandler.PEXPrepareListener pEXPrepareListener, boolean z, JSONObject jSONObject) {
        if (pEXPrepareListener == null) {
            f35646a.e("PEXPrepareListener cannot be null.");
        } else {
            pEXPrepareListener.onComplete(null);
        }
    }

    @Override // com.verizon.ads.PEXHandler
    public void release() {
        f35646a.d("release called.");
    }
}
