package com.criteo.publisher.model;

import com.criteo.publisher.model.C8490j;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.annotations.AbstractC15952b;
import java.util.Map;
/* renamed from: com.criteo.publisher.model.v */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/v.class */
public abstract class AbstractC8512v {
    /* renamed from: a */
    public static AbstractC8512v m25510a(String str, String str2, Map<String, Object> map) {
        return new C8490j(str, str2, map);
    }

    /* renamed from: a */
    public static AbstractC16088j<AbstractC8512v> m25511a(C15965f c15965f) {
        return new C8490j.C8491a(c15965f);
    }

    /* renamed from: a */
    public abstract String mo25512a();

    @AbstractC15952b(m7988a = "cpId")
    /* renamed from: b */
    public abstract String mo25509b();

    /* renamed from: c */
    public abstract Map<String, Object> mo25508c();
}
