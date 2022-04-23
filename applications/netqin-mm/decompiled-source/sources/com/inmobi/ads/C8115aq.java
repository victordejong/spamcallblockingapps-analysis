package com.inmobi.ads;

import android.os.Build;
import com.inmobi.ads.p500a.C8049a;
import com.inmobi.ads.p500a.C8053d;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.aq */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/aq.class */
public class C8115aq extends C8103ak {

    /* renamed from: A */
    public static final String f31763A = "aq";

    /* renamed from: z */
    public AbstractC8305t f31764z;

    public C8115aq(String str, String str2, C8104al alVar, String str3, int i, JSONObject jSONObject) {
        this(str, str2, alVar, str3, new LinkedList(), i, jSONObject);
    }

    public C8115aq(String str, String str2, C8104al alVar, String str3, List<NativeTracker> list, int i, JSONObject jSONObject) {
        super(str, str2, "GIF", alVar, list);
        C8053d.m6605a();
        C8049a b = C8053d.m6599b(str3);
        this.f31680e = b == null ? null : b.f31493e;
        if (b != null) {
            try {
                String str4 = b.f31493e;
                this.f31764z = Build.VERSION.SDK_INT < 28 ? new C8307u(str4) : new C8288l(str4);
            } catch (Exception e) {
                new StringBuilder("Exception in decoding GIF : ").append(e.getMessage());
                this.f31764z = null;
                C8328a.m5878a().m5875a(new C8365a(e));
            }
        }
        if (jSONObject != null) {
            this.f31684i = i;
            this.f31681f = jSONObject;
        }
    }
}
