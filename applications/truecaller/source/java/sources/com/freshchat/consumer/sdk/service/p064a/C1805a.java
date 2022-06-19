package com.freshchat.consumer.sdk.service.p064a;

import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.service.a.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/a/a.class */
public class C1805a {

    /* renamed from: fs */
    private static final Map<Integer, Integer> f4677fs;

    /* renamed from: fr */
    private String f4678fr;
    private Map<String, String> meta;
    private int priority;
    private int type;

    static {
        HashMap hashMap = new HashMap();
        f4677fs = hashMap;
        hashMap.put(1, 1024);
        hashMap.put(2, 2048);
        hashMap.put(3, 8192);
        hashMap.put(4, 1536);
        hashMap.put(6, 16384);
        hashMap.put(7, 4096);
        hashMap.put(10, 32000);
        hashMap.put(9, 2560);
        hashMap.put(11, 1000);
    }

    public C1805a(int i) {
        this(i, String.valueOf("type_" + i));
    }

    public C1805a(int i, String str) {
        this.priority = Integer.MAX_VALUE;
        this.type = i;
        this.f4678fr = str;
        this.priority = f4677fs.get(Integer.valueOf(i)).intValue();
    }

    /* renamed from: b */
    public C1805a m39529b(Map<String, String> map) {
        this.meta = map;
        return this;
    }

    /* renamed from: dr */
    public String m39528dr() {
        return this.f4678fr;
    }

    public Map<String, String> getMeta() {
        return this.meta;
    }

    public int getPriority() {
        return this.priority;
    }

    public int getType() {
        return this.type;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BacklogHolder [backlogId=");
        m8728C.append(this.f4678fr);
        m8728C.append(", priority=");
        m8728C.append(this.priority);
        m8728C.append(", type=");
        m8728C.append(this.type);
        m8728C.append(", meta=");
        m8728C.append(this.meta);
        m8728C.append("]");
        return m8728C.toString();
    }
}
