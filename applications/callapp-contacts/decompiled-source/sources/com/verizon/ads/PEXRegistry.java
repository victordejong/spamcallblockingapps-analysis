package com.verizon.ads;

import com.verizon.ads.utils.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/PEXRegistry.class */
public final class PEXRegistry {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f35314b = Logger.getInstance(PEXRegistry.class);

    /* renamed from: a  reason: collision with root package name */
    static final Map<String, PEXFactory> f35313a = new ConcurrentHashMap();

    public static PEXHandler getHandler(String str) {
        if (TextUtils.isEmpty(str)) {
            f35314b.e("contentType cannot be null or empty.");
            return null;
        }
        PEXFactory pEXFactory = f35313a.get(str.toLowerCase());
        if (pEXFactory != null) {
            return pEXFactory.getHandler();
        }
        f35314b.w(String.format("No factory is registered for type <%s>", str));
        return null;
    }

    public static boolean registerPEX(String str, PEXFactory pEXFactory) {
        if (TextUtils.isEmpty(str)) {
            f35314b.e("contentType cannot be null or empty.");
            return false;
        } else if (pEXFactory == null) {
            f35314b.e("PEXFactory instance cannot be null.");
            return false;
        } else {
            String lowerCase = str.toLowerCase();
            Map<String, PEXFactory> map = f35313a;
            if (map.containsKey(lowerCase)) {
                f35314b.w(String.format("A registration already exists for type <%s>", str));
                return false;
            }
            map.put(lowerCase, pEXFactory);
            return true;
        }
    }
}
