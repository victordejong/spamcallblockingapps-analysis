package com.bytedance.sdk.openadsdk.j;

import android.content.Context;
import android.location.Address;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.c.b;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.multipro.d.a;
import com.bytedance.sdk.openadsdk.utils.af;
import com.mopub.common.Constants;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/j/d.class */
public class d implements b {

    /* renamed from: a  reason: collision with root package name */
    String f9653a = "sp_multi_ttadnet_config";

    /* renamed from: b  reason: collision with root package name */
    private Context f9654b;

    public d(Context context) {
        this.f9654b = context;
    }

    @Override // com.bytedance.sdk.adnet.c.b
    public int a() {
        return Integer.parseInt("1371");
    }

    @Override // com.bytedance.sdk.adnet.c.b
    public Address a(Context context) {
        return null;
    }

    @Override // com.bytedance.sdk.adnet.c.b
    public String a(Context context, String str, String str2) {
        return a.b(this.f9653a, str, str2);
    }

    @Override // com.bytedance.sdk.adnet.c.b
    public void a(Context context, Map<String, ?> map) {
        if (map != null) {
            try {
                for (Map.Entry<String, ?> entry : map.entrySet()) {
                    Object value = entry.getValue();
                    if (value instanceof Integer) {
                        a.a(this.f9653a, entry.getKey(), (Integer) value);
                    } else if (value instanceof Long) {
                        a.a(this.f9653a, entry.getKey(), (Long) value);
                    } else if (value instanceof Float) {
                        a.a(this.f9653a, entry.getKey(), (Float) value);
                    } else if (value instanceof Boolean) {
                        a.a(this.f9653a, entry.getKey(), (Boolean) value);
                    } else if (value instanceof String) {
                        a.a(this.f9653a, entry.getKey(), (String) value);
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    @Override // com.bytedance.sdk.adnet.c.b
    public String b() {
        return "pangle_sdk";
    }

    @Override // com.bytedance.sdk.adnet.c.b
    public String c() {
        return Constants.ANDROID_PLATFORM;
    }

    @Override // com.bytedance.sdk.adnet.c.b
    public int d() {
        return 3505;
    }

    @Override // com.bytedance.sdk.adnet.c.b
    public String e() {
        return i.a(this.f9654b);
    }

    @Override // com.bytedance.sdk.adnet.c.b
    public String[] f() {
        String[] strArr = {"dm16-useast1a.byteoversea.com", "dm16-useast2a.byteoversea.com"};
        String r = n.h().r();
        if (!TextUtils.isEmpty(r)) {
            if ("SG".equals(r)) {
                strArr = new String[]{"dm16-alisg.byteoversea.com"};
            } else if ("CN".equals(r)) {
                strArr = new String[]{"dm.toutiao.com", "dm-hl.toutiao.com", "dm-lq.toutiao.com", "dm.bytedance.com"};
            }
            return strArr;
        }
        int o = af.o();
        if (o == 2) {
            strArr = new String[]{"dm16-alisg.byteoversea.com"};
        } else if (o == 1) {
            strArr = new String[]{"dm16-alisg.byteoversea.com"};
        }
        return strArr;
    }
}
