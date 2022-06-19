package com.bytedance.sdk.openadsdk.p174j;

import android.content.Context;
import android.location.Address;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.p142c.AbstractC4187b;
import com.bytedance.sdk.openadsdk.core.C4590i;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.multipro.p192d.C5106a;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.mopub.common.Constants;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.j.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/d.class */
public class C4958d implements AbstractC4187b {

    /* renamed from: a */
    String f18020a = "sp_multi_ttadnet_config";

    /* renamed from: b */
    private Context f18021b;

    public C4958d(Context context) {
        this.f18021b = context;
    }

    @Override // com.bytedance.sdk.adnet.p142c.AbstractC4187b
    /* renamed from: a */
    public int mo33450a() {
        return Integer.parseInt("1371");
    }

    @Override // com.bytedance.sdk.adnet.p142c.AbstractC4187b
    /* renamed from: a */
    public Address mo33449a(Context context) {
        return null;
    }

    @Override // com.bytedance.sdk.adnet.p142c.AbstractC4187b
    /* renamed from: a */
    public String mo33448a(Context context, String str, String str2) {
        return C5106a.m33035b(this.f18020a, str, str2);
    }

    @Override // com.bytedance.sdk.adnet.p142c.AbstractC4187b
    /* renamed from: a */
    public void mo33447a(Context context, Map<String, ?> map) {
        if (map != null) {
            try {
                for (Map.Entry<String, ?> entry : map.entrySet()) {
                    Object value = entry.getValue();
                    if (value instanceof Integer) {
                        C5106a.m33043a(this.f18020a, entry.getKey(), (Integer) value);
                    } else if (value instanceof Long) {
                        C5106a.m33042a(this.f18020a, entry.getKey(), (Long) value);
                    } else if (value instanceof Float) {
                        C5106a.m33044a(this.f18020a, entry.getKey(), (Float) value);
                    } else if (value instanceof Boolean) {
                        C5106a.m33045a(this.f18020a, entry.getKey(), (Boolean) value);
                    } else if (value instanceof String) {
                        C5106a.m33041a(this.f18020a, entry.getKey(), (String) value);
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    @Override // com.bytedance.sdk.adnet.p142c.AbstractC4187b
    /* renamed from: b */
    public String mo33446b() {
        return "pangle_sdk";
    }

    @Override // com.bytedance.sdk.adnet.p142c.AbstractC4187b
    /* renamed from: c */
    public String mo33445c() {
        return Constants.ANDROID_PLATFORM;
    }

    @Override // com.bytedance.sdk.adnet.p142c.AbstractC4187b
    /* renamed from: d */
    public int mo33444d() {
        return 3505;
    }

    @Override // com.bytedance.sdk.adnet.p142c.AbstractC4187b
    /* renamed from: e */
    public String mo33443e() {
        return C4590i.m34846a(this.f18021b);
    }

    @Override // com.bytedance.sdk.adnet.p142c.AbstractC4187b
    /* renamed from: f */
    public String[] mo33442f() {
        String[] strArr = {"dm16-useast1a.byteoversea.com", "dm16-useast2a.byteoversea.com"};
        String m34865r = C4600n.m34805h().m34865r();
        if (!TextUtils.isEmpty(m34865r)) {
            if ("SG".equals(m34865r)) {
                strArr = new String[]{"dm16-alisg.byteoversea.com"};
            } else if ("CN".equals(m34865r)) {
                strArr = new String[]{"dm.toutiao.com", "dm-hl.toutiao.com", "dm-lq.toutiao.com", "dm.bytedance.com"};
            }
            return strArr;
        }
        int m32246o = C5438af.m32246o();
        if (m32246o == 2) {
            strArr = new String[]{"dm16-alisg.byteoversea.com"};
        } else if (m32246o == 1) {
            strArr = new String[]{"dm16-alisg.byteoversea.com"};
        }
        return strArr;
    }
}
