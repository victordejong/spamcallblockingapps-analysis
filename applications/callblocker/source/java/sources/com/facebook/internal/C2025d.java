package com.facebook.internal;

import android.content.Intent;
import com.facebook.AbstractC1985f;
import com.facebook.C2095j;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.facebook.internal.d */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/d.class */
public final class C2025d implements AbstractC1985f {

    /* renamed from: a */
    private static final String f5974a = C2025d.class.getSimpleName();

    /* renamed from: b */
    private static Map<Integer, AbstractC2026a> f5975b = new HashMap();

    /* renamed from: c */
    private Map<Integer, AbstractC2026a> f5976c = new HashMap();

    /* renamed from: com.facebook.internal.d$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/d$a.class */
    public interface AbstractC2026a {
        /* renamed from: a */
        boolean mo15096a(int i, Intent intent);
    }

    /* renamed from: com.facebook.internal.d$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/d$b.class */
    public enum EnumC2027b {
        Login(0),
        Share(1),
        Message(2),
        Like(3),
        GameRequest(4),
        AppGroupCreate(5),
        AppGroupJoin(6),
        AppInvite(7),
        DeviceShare(8);
        

        /* renamed from: j */
        private final int f5987j;

        EnumC2027b(int i) {
            this.f5987j = i;
        }

        /* renamed from: a */
        public int m15643a() {
            return C2095j.m15349s() + this.f5987j;
        }
    }

    /* renamed from: a */
    private static AbstractC2026a m15646a(Integer num) {
        AbstractC2026a abstractC2026a;
        synchronized (C2025d.class) {
            try {
                abstractC2026a = f5975b.get(num);
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC2026a;
    }

    /* renamed from: a */
    public static void m15647a(int i, AbstractC2026a abstractC2026a) {
        synchronized (C2025d.class) {
            try {
                C2084y.m15417a(abstractC2026a, "callback");
                if (!f5975b.containsKey(Integer.valueOf(i))) {
                    f5975b.put(Integer.valueOf(i), abstractC2026a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private static boolean m15645b(int i, int i2, Intent intent) {
        AbstractC2026a m15646a = m15646a(Integer.valueOf(i));
        return m15646a != null ? m15646a.mo15096a(i2, intent) : false;
    }

    @Override // com.facebook.AbstractC1985f
    /* renamed from: a */
    public boolean mo15648a(int i, int i2, Intent intent) {
        AbstractC2026a abstractC2026a = this.f5976c.get(Integer.valueOf(i));
        return abstractC2026a != null ? abstractC2026a.mo15096a(i2, intent) : m15645b(i, i2, intent);
    }

    /* renamed from: b */
    public void m15644b(int i, AbstractC2026a abstractC2026a) {
        C2084y.m15417a(abstractC2026a, "callback");
        this.f5976c.put(Integer.valueOf(i), abstractC2026a);
    }
}
