package com.criteo.publisher.model;

import com.criteo.publisher.model.C8486h;
import com.criteo.publisher.p252k.p253a.AbstractC8373c;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.annotations.AbstractC15952b;
import java.util.List;
/* renamed from: com.criteo.publisher.model.o */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/o.class */
public abstract class AbstractC8499o {
    /* renamed from: a */
    public static AbstractC8499o m25579a(String str, AbstractC8512v abstractC8512v, AbstractC8516z abstractC8516z, String str2, int i, AbstractC8373c abstractC8373c, List<AbstractC8501q> list) {
        return new C8486h(str, abstractC8512v, abstractC8516z, str2, i, abstractC8373c, list);
    }

    /* renamed from: a */
    public static AbstractC16088j<AbstractC8499o> m25580a(C15965f c15965f) {
        return new C8486h.C8487a(c15965f);
    }

    @AbstractC15952b(m7988a = "gdprConsent")
    /* renamed from: a */
    public abstract AbstractC8373c mo25581a();

    /* renamed from: b */
    public abstract String mo25578b();

    /* renamed from: c */
    public abstract int mo25577c();

    /* renamed from: d */
    public abstract AbstractC8512v mo25576d();

    /* renamed from: e */
    public abstract String mo25575e();

    /* renamed from: f */
    public abstract List<AbstractC8501q> mo25574f();

    /* renamed from: g */
    public abstract AbstractC8516z mo25573g();
}
