package com.huawei.updatesdk.p097a.p106b.p109c.p110c;

import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.updatesdk.p097a.p098a.p103d.AbstractC2522g;
import com.huawei.updatesdk.p097a.p098a.p103d.AbstractC2523h;
import com.huawei.updatesdk.service.appmgr.bean.SDKNetTransmission;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.a.b.c.c.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/b/c/c/c.class */
public class C2538c {
    public static final String CLIENT_API = "clientApi";
    private static final String END_FLAG = "_";
    private static String url;
    @SDKNetTransmission
    private String method;
    @SDKNetTransmission
    private String ver = "1.1";

    /* renamed from: a */
    private String m36720a(Field field) {
        Object obj = field.get(this);
        if (obj instanceof AbstractC2536b) {
            return ((AbstractC2536b) obj).toJson();
        }
        if (obj == null) {
            return null;
        }
        return String.valueOf(obj);
    }

    /* renamed from: c */
    public static void m36716c(String str) {
        url = str;
    }

    /* renamed from: a */
    public String m36722a() {
        int i;
        m36714e();
        Map<String, Field> m36717c = m36717c();
        int size = m36717c.size();
        String[] strArr = new String[size];
        m36717c.keySet().toArray(strArr);
        Arrays.sort(strArr);
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        do {
            String m36720a = m36720a(m36717c.get(strArr[i2]));
            if (m36720a != null) {
                C22128a.m8666T0(sb, strArr[i2], ContainerUtils.KEY_VALUE_DELIMITER, AbstractC2523h.m36818a(m36720a), ContainerUtils.FIELD_DELIMITER);
            }
            i = i2 + 1;
            i2 = i;
        } while (i < size);
        int length = sb.length();
        if (length > 0) {
            int i3 = length - 1;
            if (sb.charAt(i3) == '&') {
                sb.deleteCharAt(i3);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public void m36721a(String str) {
        this.method = str;
    }

    /* renamed from: b */
    public String m36719b() {
        return this.method;
    }

    /* renamed from: b */
    public void m36718b(String str) {
        this.ver = str;
    }

    /* renamed from: c */
    public Map<String, Field> m36717c() {
        Field[] m36821a;
        HashMap hashMap = new HashMap();
        for (Field field : AbstractC2522g.m36821a(getClass())) {
            field.setAccessible(true);
            String name = field.getName();
            if (name.endsWith("_") || field.isAnnotationPresent(SDKNetTransmission.class)) {
                String str = name;
                if (name.endsWith("_")) {
                    str = name.substring(0, name.length() - 1);
                }
                hashMap.put(str, field);
            }
        }
        return hashMap;
    }

    /* renamed from: d */
    public String m36715d() {
        return C22128a.m8618h(new StringBuilder(), url, CLIENT_API);
    }

    /* renamed from: e */
    public void m36714e() {
    }
}
