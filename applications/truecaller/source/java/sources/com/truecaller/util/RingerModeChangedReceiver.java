package com.truecaller.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.presence.AvailabilityTrigger;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/util/RingerModeChangedReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/util/RingerModeChangedReceiver.class */
public final class RingerModeChangedReceiver extends BroadcastReceiver {

    @e(c = "com.truecaller.util.RingerModeChangedReceiver$onReceive$1", f = "RingerModeChangedReceiver.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.truecaller.util.RingerModeChangedReceiver$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/util/RingerModeChangedReceiver$a.class */
    public static final class C4698a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public final /* synthetic */ AbstractC15539j2 f15945e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4698a(AbstractC15539j2 abstractC15539j2, d dVar) {
            super(2, dVar);
            this.f15945e = abstractC15539j2;
        }

        /* renamed from: i */
        public final d<s> m34475i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4698a(this.f15945e, dVar);
        }

        /* renamed from: k */
        public final Object m34474k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            AbstractC15539j2 abstractC15539j2 = this.f15945e;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            abstractC15539j2.mo12445b1().mo11854a().mo16128d(AvailabilityTrigger.USER_ACTION, false);
            return sVar;
        }

        /* renamed from: s */
        public final Object m34473s(Object obj) {
            C25225a.m3932a3(obj);
            this.f15945e.mo12445b1().mo11854a().mo16128d(AvailabilityTrigger.USER_ACTION, false);
            return s.a;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (intent == null || (!l.a(intent.getAction(), "android.media.RINGER_MODE_CHANGED"))) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        l.d(mo10154s, "(context.applicationCont…GraphHolder).objectsGraph");
        h1 h1Var = h1.a;
        f mo12606P = mo10154s.mo12606P();
        l.d(mo12606P, "graph.asyncCoroutineContext()");
        s1.a.a.a.v0.f.d.w2(h1Var, mo12606P, (j0) null, new C4698a(mo10154s, null), 2, (Object) null);
    }
}
