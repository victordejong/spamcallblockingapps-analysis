package com.raizlabs.android.dbflow.config;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p024b9.AbstractC0744d;
import p024b9.AbstractC0745e;
import p024b9.AbstractC0746f;
import p034c9.AbstractC0859f;
import p034c9.AbstractC0863i;
import p034c9.C0854a;
import p034c9.C0861h;
import p074d9.AbstractC2490c;
import p074d9.C2488a;
import p117h8.C3035k;
import p256u8.AbstractC4552d;
import p299y8.AbstractC5017c;
/* renamed from: com.raizlabs.android.dbflow.config.c */
/* loaded from: classes2-dex2jar.jar:com/raizlabs/android/dbflow/config/c.class */
public abstract class AbstractC2116c {

    /* renamed from: a */
    public final Map<Integer, List<AbstractC5017c>> f7678a = new HashMap();

    /* renamed from: b */
    public final Map<Class<?>, AbstractC0744d> f7679b = new HashMap();

    /* renamed from: c */
    public final Map<String, Class<?>> f7680c = new HashMap();

    /* renamed from: d */
    public final Map<Class<?>, AbstractC0745e> f7681d = new LinkedHashMap();

    /* renamed from: e */
    public final Map<Class<?>, AbstractC0746f> f7682e = new LinkedHashMap();

    /* renamed from: f */
    public AbstractC0863i f7683f;

    /* renamed from: g */
    public C2488a f7684g;

    /* renamed from: h */
    public C2115b f7685h;

    /* renamed from: i */
    public AbstractC4552d f7686i;

    public AbstractC2116c() {
        C2115b c2115b = FlowManager.m3911b().f7688b.get(C3035k.class);
        this.f7685h = c2115b;
        if (c2115b == null) {
            this.f7684g = new C2488a(this);
            return;
        }
        throw null;
    }

    /* renamed from: a */
    public void m3900a(int i, AbstractC5017c abstractC5017c) {
        List<AbstractC5017c> list = this.f7678a.get(Integer.valueOf(i));
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
            this.f7678a.put(Integer.valueOf(i), arrayList);
        }
        arrayList.add(abstractC5017c);
    }

    /* renamed from: b */
    public <T> void m3899b(AbstractC0744d<T> abstractC0744d, AbstractC2117d abstractC2117d) {
        abstractC2117d.putDatabaseForTable(abstractC0744d.mo2690b(), this);
        this.f7680c.put(abstractC0744d.mo2678n(), abstractC0744d.mo2690b());
        this.f7679b.put(abstractC0744d.mo2690b(), abstractC0744d);
    }

    /* renamed from: c */
    public abstract boolean mo3898c();

    /* renamed from: d */
    public abstract boolean mo3897d();

    /* renamed from: e */
    public void m3896e(AbstractC2490c abstractC2490c) {
        AbstractC0859f m3891j = m3891j();
        try {
            ((C0854a) m3891j).f3147a.beginTransaction();
            abstractC2490c.mo98c(m3891j);
            ((C0854a) m3891j).f3147a.setTransactionSuccessful();
        } finally {
            ((C0854a) m3891j).f3147a.endTransaction();
        }
    }

    /* renamed from: f */
    public abstract Class<?> mo3895f();

    /* renamed from: g */
    public String m3894g() {
        StringBuilder sb = new StringBuilder();
        sb.append(mo3893h());
        sb.append(this.f7685h != null ? null : ".db");
        return sb.toString();
    }

    /* renamed from: h */
    public String mo3893h() {
        String str;
        C2115b c2115b = this.f7685h;
        if (c2115b != null) {
            Objects.requireNonNull(c2115b);
            str = null;
        } else {
            str = mo3895f().getSimpleName();
        }
        return str;
    }

    /* renamed from: i */
    public abstract int mo3892i();

    /* renamed from: j */
    public AbstractC0859f m3891j() {
        AbstractC0863i abstractC0863i;
        synchronized (this) {
            if (this.f7683f == null) {
                FlowManager.m3911b().f7688b.get(mo3895f());
                C0861h c0861h = new C0861h(this, null);
                this.f7683f = c0861h;
                c0861h.m7246k();
            }
            abstractC0863i = this.f7683f;
        }
        return abstractC0863i.mo7245d();
    }

    /* renamed from: k */
    public abstract boolean mo3890k();
}
