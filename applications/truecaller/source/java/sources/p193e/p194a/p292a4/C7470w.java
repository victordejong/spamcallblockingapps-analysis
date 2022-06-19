package p193e.p194a.p292a4;

import com.truecaller.TrueApp;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.C6250y;
import p193e.p194a.p437c.p438a.p479i.C9109d;
import p193e.p194a.p935j0.AbstractC15531l;
import p193e.p194a.p935j0.C15498a;
import p193e.p194a.p935j0.C15520g;
import s1.s;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.a4.w */
/* loaded from: classes10-dex2jar.jar:e/a/a4/w.class */
public final class C7470w extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C7452i0 f23725b;

    /* renamed from: c */
    public final /* synthetic */ TrueApp f23726c;

    /* renamed from: d */
    public final /* synthetic */ f f23727d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7470w(C7452i0 c7452i0, TrueApp trueApp, f fVar) {
        super(0);
        this.f23725b = c7452i0;
        this.f23726c = trueApp;
        this.f23727d = fVar;
    }

    public Object invoke() {
        int i = AbstractC15531l.f43993a;
        TrueApp trueApp = this.f23726c;
        f fVar = this.f23727d;
        l.d(fVar, "ioContext");
        Object obj = this.f23725b.f23625f.get();
        l.d(obj, "featuresRegistry.get()");
        C6250y c6250y = new C6250y((C20592g) obj);
        Object obj2 = this.f23725b.f23672T.get();
        l.d(obj2, "settings.get()");
        AbstractC6392i0 abstractC6392i0 = (AbstractC6392i0) obj2;
        Object obj3 = this.f23725b.f23673U.get();
        l.d(obj3, "getSmartCardsCountUseCase.get()");
        AbstractC15531l.C15532a.f43994a = new C15498a(trueApp, fVar, c6250y, abstractC6392i0, (C9109d) obj3);
        Object obj4 = this.f23725b.f23671S.get();
        l.d(obj4, "deviceManager.get()");
        AbstractC15531l.C15532a.f43995b = new C15520g((AbstractC19022f0) obj4);
        return s.a;
    }
}
