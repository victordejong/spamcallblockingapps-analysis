package com.flurry.sdk;

import com.flurry.sdk.C3438kv;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.kp */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kp.class */
public class C3423kp implements C3438kv.AbstractC3439a {

    /* renamed from: c */
    public static final List<Class<?>> f5849c = new ArrayList();

    /* renamed from: a */
    public long f5850a;

    /* renamed from: d */
    public final String f5852d = C3423kp.class.getSimpleName();

    /* renamed from: e */
    public final Map<Class<?>, Object> f5853e = new LinkedHashMap();

    /* renamed from: b */
    public final Object f5851b = new Object();

    /* renamed from: f */
    public volatile int f5854f = EnumC3424a.f5855a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.flurry.sdk.kp$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kp$a.class */
    public static final class EnumC3424a extends Enum<EnumC3424a> {

        /* renamed from: a */
        public static final int f5855a = 1;

        /* renamed from: b */
        public static final int f5856b = 2;

        /* renamed from: c */
        public static final int f5857c = 3;

        /* renamed from: d */
        public static final /* synthetic */ int[] f5858d = {f5855a, f5856b, f5857c};

        /* renamed from: a */
        public static int[] m32519a() {
            return (int[]) f5858d.clone();
        }
    }

    public C3423kp() {
        ArrayList<Class<?>> arrayList;
        synchronized (f5849c) {
            arrayList = new ArrayList(f5849c);
        }
        for (Class<?> cls : arrayList) {
            try {
                Object newInstance = cls.newInstance();
                synchronized (this.f5853e) {
                    this.f5853e.put(cls, newInstance);
                }
            } catch (Exception e) {
                String str = this.f5852d;
                C3356jq.m32614a(5, str, "Module data " + cls + " is not available:", e);
            }
        }
        C3437ku a = C3437ku.m32494a();
        this.f5850a = ((Long) a.m32493a("ContinueSessionMillis")).longValue();
        a.m32492a("ContinueSessionMillis", (C3438kv.AbstractC3439a) this);
        String str2 = this.f5852d;
        C3356jq.m32615a(4, str2, "initSettings, ContinueSessionMillis = " + this.f5850a);
    }

    /* renamed from: a */
    public static void m32522a(Class<?> cls) {
        synchronized (f5849c) {
            f5849c.add(cls);
        }
    }

    /* renamed from: a */
    public static boolean m32524a() {
        return false;
    }

    /* renamed from: a */
    public final void m32523a(int i) {
        synchronized (this.f5851b) {
            this.f5854f = i;
        }
    }

    @Override // com.flurry.sdk.C3438kv.AbstractC3439a
    /* renamed from: a */
    public final void mo32423a(String str, Object obj) {
        if (str.equals("ContinueSessionMillis")) {
            this.f5850a = ((Long) obj).longValue();
            String str2 = this.f5852d;
            C3356jq.m32615a(4, str2, "onSettingUpdate, ContinueSessionMillis = " + this.f5850a);
            return;
        }
        C3356jq.m32615a(6, this.f5852d, "onSettingUpdate internal error!");
    }

    /* renamed from: b */
    public final int m32521b() {
        int i;
        synchronized (this.f5851b) {
            i = this.f5854f;
        }
        return i;
    }

    /* renamed from: b */
    public final Object m32520b(Class<?> cls) {
        Object obj;
        synchronized (this.f5853e) {
            obj = this.f5853e.get(cls);
        }
        return obj;
    }
}
