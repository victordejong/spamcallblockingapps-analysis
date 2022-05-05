package com.flurry.sdk;

import androidx.core.app.NotificationCompatJellybean;
import com.flurry.sdk.C3462ln;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.flurry.sdk.lp */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/lp.class */
public final class C3466lp {

    /* renamed from: a */
    public C2921cr f5955a;

    /* renamed from: com.flurry.sdk.lp$1 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/lp$1.class */
    public static final /* synthetic */ class C34671 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5956a = new int[EnumC2922cs.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f5956a[EnumC2922cs.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5956a[EnumC2922cs.IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5956a[EnumC2922cs.VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public C3466lp(C2921cr crVar) {
        if (crVar != null) {
            this.f5955a = crVar;
            return;
        }
        throw new IllegalArgumentException("NativeAsset cannot be null.");
    }

    /* renamed from: a */
    public final String m32416a() {
        int i = C34671.f5956a[this.f5955a.f4516b.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return this.f5955a.f4517c;
        }
        return null;
    }

    /* renamed from: b */
    public final List<C3462ln.C3463a> m32415b() {
        int size = this.f5955a.f4520f.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            JSONObject jSONObject = this.f5955a.f4520f.get(i);
            arrayList.add(new C3462ln.C3463a(jSONObject.optInt("index"), jSONObject.optString("type"), jSONObject.optString(NotificationCompatJellybean.KEY_LABEL), jSONObject.optString("landingPage"), jSONObject.optString("url")));
        }
        return arrayList;
    }
}
