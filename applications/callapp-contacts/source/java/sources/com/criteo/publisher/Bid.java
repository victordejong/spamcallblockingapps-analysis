package com.criteo.publisher;

import com.criteo.publisher.model.C8503s;
import com.criteo.publisher.model.p257b0.AbstractC8474n;
import com.criteo.publisher.p256m0.EnumC8423a;
import kotlin.jvm.functions.Function1;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/Bid.class */
public class Bid {

    /* renamed from: a */
    public final EnumC8423a f29726a;

    /* renamed from: b */
    private final double f29727b;

    /* renamed from: c */
    private final AbstractC8336h f29728c;

    /* renamed from: d */
    private C8503s f29729d;

    public Bid(EnumC8423a enumC8423a, AbstractC8336h abstractC8336h, C8503s c8503s) {
        this.f29727b = c8503s.m25549b().doubleValue();
        this.f29726a = enumC8423a;
        this.f29729d = c8503s;
        this.f29728c = abstractC8336h;
    }

    /* renamed from: a */
    public static /* synthetic */ C8503s m25991a(C8503s c8503s) {
        return c8503s;
    }

    /* renamed from: a */
    private <T> T m25990a(Function1<C8503s, T> function1) {
        synchronized (this) {
            C8503s c8503s = this.f29729d;
            if (c8503s == null || c8503s.m25551a(this.f29728c)) {
                return null;
            }
            T invoke = function1.invoke(this.f29729d);
            this.f29729d = null;
            return invoke;
        }
    }

    /* renamed from: a */
    public final C8503s m25993a() {
        return (C8503s) m25990a((Function1<C8503s, Object>) _$$Lambda$Bid$WEs9SoAmX1RMoItE_GwFmu0EoGk.INSTANCE);
    }

    /* renamed from: a */
    public final String m25992a(EnumC8423a enumC8423a) {
        if (!enumC8423a.equals(this.f29726a)) {
            return null;
        }
        return (String) m25990a((Function1<C8503s, Object>) _$$Lambda$WsfvYMY9Z_f_1HmNNQ3FsFhESSo.INSTANCE);
    }

    /* renamed from: b */
    public final AbstractC8474n m25989b() {
        return (AbstractC8474n) m25990a((Function1<C8503s, Object>) _$$Lambda$FzypGrEcxtd_5WAE2Zz1rJdiDU8.INSTANCE);
    }

    public double getPrice() {
        return this.f29727b;
    }
}
