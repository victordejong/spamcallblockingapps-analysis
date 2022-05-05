package com.facebook.internal;

import android.content.Intent;
import java.util.HashMap;
import java.util.Map;
import p081h.p154f.AbstractC6123e;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.internal.d */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/d.class */
public final class C2398d implements AbstractC6123e {

    /* renamed from: b */
    public static Map<Integer, AbstractC2399a> f2974b = new HashMap();

    /* renamed from: a */
    public Map<Integer, AbstractC2399a> f2975a = new HashMap();

    /* renamed from: com.facebook.internal.d$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/d$a.class */
    public interface AbstractC2399a {
        /* renamed from: a */
        boolean mo34031a(int i, Intent intent);
    }

    /* renamed from: com.facebook.internal.d$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/d$b.class */
    public enum EnumC2400b {
        Login(0),
        Share(1),
        Message(2),
        Like(3),
        GameRequest(4),
        AppGroupCreate(5),
        AppGroupJoin(6),
        AppInvite(7),
        DeviceShare(8);
        

        /* renamed from: a */
        public final int f2986a;

        EnumC2400b(int i) {
            this.f2986a = i;
        }

        /* renamed from: a */
        public int m34900a() {
            return C6135n.m23740k() + this.f2986a;
        }
    }

    /* renamed from: a */
    public static AbstractC2399a m34903a(Integer num) {
        AbstractC2399a aVar;
        synchronized (C2398d.class) {
            try {
                aVar = f2974b.get(num);
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    /* renamed from: b */
    public static void m34901b(int i, AbstractC2399a aVar) {
        synchronized (C2398d.class) {
            try {
                C2416h0.m34791a(aVar, "callback");
                if (!f2974b.containsKey(Integer.valueOf(i))) {
                    f2974b.put(Integer.valueOf(i), aVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static boolean m34902b(int i, int i2, Intent intent) {
        AbstractC2399a a = m34903a(Integer.valueOf(i));
        if (a != null) {
            return a.mo34031a(i2, intent);
        }
        return false;
    }

    /* renamed from: a */
    public void m34904a(int i, AbstractC2399a aVar) {
        C2416h0.m34791a(aVar, "callback");
        this.f2975a.put(Integer.valueOf(i), aVar);
    }

    @Override // p081h.p154f.AbstractC6123e
    /* renamed from: a */
    public boolean mo23784a(int i, int i2, Intent intent) {
        AbstractC2399a aVar = this.f2975a.get(Integer.valueOf(i));
        return aVar != null ? aVar.mo34031a(i2, intent) : m34902b(i, i2, intent);
    }
}
