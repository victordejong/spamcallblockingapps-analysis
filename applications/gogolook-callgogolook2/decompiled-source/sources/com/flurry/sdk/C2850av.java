package com.flurry.sdk;

import android.text.TextUtils;
import com.flurry.sdk.C2844au;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.av */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/av.class */
public class C2850av extends AbstractC2829aq {

    /* renamed from: k */
    public static final String f4098k = "av";

    /* renamed from: h */
    public final C2844au f4099h;

    /* renamed from: i */
    public final String f4100i;

    /* renamed from: j */
    public C2844au.C2849c f4101j;

    public C2850av(C2844au auVar, String str) {
        this.f4099h = auVar;
        this.f4100i = str;
    }

    @Override // com.flurry.sdk.AbstractC2829aq
    /* renamed from: c */
    public final OutputStream mo33544c() throws IOException {
        C2844au.C2849c cVar = this.f4101j;
        if (cVar != null) {
            return cVar.f4092a;
        }
        if (this.f4099h == null) {
            throw new IOException("No cache specified");
        } else if (!TextUtils.isEmpty(this.f4100i)) {
            this.f4101j = this.f4099h.m33549b(this.f4100i);
            C2844au.C2849c cVar2 = this.f4101j;
            if (cVar2 != null) {
                return cVar2.f4092a;
            }
            throw new IOException("Could not open writer for key: " + this.f4100i);
        } else {
            throw new IOException("No cache key specified");
        }
    }

    @Override // com.flurry.sdk.AbstractC2829aq
    /* renamed from: d */
    public final void mo33543d() {
        C3445la.m32465a(this.f4101j);
        this.f4101j = null;
    }

    @Override // com.flurry.sdk.AbstractC2829aq
    /* renamed from: e */
    public final void mo33542e() {
        if (this.f4099h != null && !TextUtils.isEmpty(this.f4100i)) {
            try {
                this.f4099h.m33547c(this.f4100i);
            } catch (Exception e) {
                String str = f4098k;
                C3356jq.m32615a(3, str, "Error removing result for key: " + this.f4100i + " -- " + e);
            }
        }
    }
}
