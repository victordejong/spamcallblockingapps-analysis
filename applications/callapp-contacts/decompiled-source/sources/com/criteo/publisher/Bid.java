package com.criteo.publisher;

import com.criteo.publisher.m0.a;
import com.criteo.publisher.model.b0.n;
import com.criteo.publisher.model.s;
import kotlin.jvm.functions.Function1;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/Bid.class */
public class Bid {

    /* renamed from: a  reason: collision with root package name */
    public final a f17127a;

    /* renamed from: b  reason: collision with root package name */
    private final double f17128b;

    /* renamed from: c  reason: collision with root package name */
    private final h f17129c;

    /* renamed from: d  reason: collision with root package name */
    private s f17130d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bid(a aVar, h hVar, s sVar) {
        this.f17128b = sVar.b().doubleValue();
        this.f17127a = aVar;
        this.f17130d = sVar;
        this.f17129c = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ s a(s sVar) {
        return sVar;
    }

    private <T> T a(Function1<s, T> function1) {
        synchronized (this) {
            s sVar = this.f17130d;
            if (sVar == null || sVar.a(this.f17129c)) {
                return null;
            }
            T invoke = function1.invoke(this.f17130d);
            this.f17130d = null;
            return invoke;
        }
    }

    public final s a() {
        return (s) a((Function1<s, Object>) _$$Lambda$Bid$WEs9SoAmX1RMoItE_GwFmu0EoGk.INSTANCE);
    }

    public final String a(a aVar) {
        if (!aVar.equals(this.f17127a)) {
            return null;
        }
        return (String) a((Function1<s, Object>) _$$Lambda$WsfvYMY9Z_f_1HmNNQ3FsFhESSo.INSTANCE);
    }

    public final n b() {
        return (n) a((Function1<s, Object>) _$$Lambda$FzypGrEcxtd_5WAE2Zz1rJdiDU8.INSTANCE);
    }

    public double getPrice() {
        return this.f17128b;
    }
}
