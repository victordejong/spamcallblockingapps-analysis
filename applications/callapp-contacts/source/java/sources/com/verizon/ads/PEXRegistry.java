package com.verizon.ads;

import com.verizon.ads.utils.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/PEXRegistry.class */
public final class PEXRegistry {

    /* renamed from: b */
    private static final Logger f61207b = Logger.getInstance(PEXRegistry.class);

    /* renamed from: a */
    static final Map<String, PEXFactory> f61206a = new ConcurrentHashMap();

    public static PEXHandler getHandler(String str) {
        if (TextUtils.isEmpty(str)) {
            f61207b.m5565e("contentType cannot be null or empty.");
            return null;
        }
        PEXFactory pEXFactory = f61206a.get(str.toLowerCase());
        if (pEXFactory != null) {
            return pEXFactory.getHandler();
        }
        f61207b.m5559w(String.format("No factory is registered for type <%s>", str));
        return null;
    }

    public static boolean registerPEX(String str, PEXFactory pEXFactory) {
        if (TextUtils.isEmpty(str)) {
            f61207b.m5565e("contentType cannot be null or empty.");
            return false;
        } else if (pEXFactory == null) {
            f61207b.m5565e("PEXFactory instance cannot be null.");
            return false;
        } else {
            String lowerCase = str.toLowerCase();
            Map<String, PEXFactory> map = f61206a;
            if (map.containsKey(lowerCase)) {
                f61207b.m5559w(String.format("A registration already exists for type <%s>", str));
                return false;
            }
            map.put(lowerCase, pEXFactory);
            return true;
        }
    }
}
