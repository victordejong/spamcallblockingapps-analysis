package p193e.p194a.p292a4;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.truecaller.wizard.framework.WizardCompletionType;
import e.a.r.n;
import e.a.r.o;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1164r.p1180v.AbstractC19771a;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a4.j0 */
/* loaded from: classes10-dex2jar.jar:e/a/a4/j0.class */
public final class C7455j0 extends BroadcastReceiver {

    /* renamed from: a */
    public final f f23697a;

    /* renamed from: b */
    public final AbstractC19771a f23698b;

    @e(c = "com.truecaller.init.VerificationBroadcastReceiver$onReceive$2", f = "VerificationBroadcastReceiver.kt", l = {33}, m = "invokeSuspend")
    /* renamed from: e.a.a4.j0$a */
    /* loaded from: classes10-dex2jar.jar:e/a/a4/j0$a.class */
    public static final class C7456a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f23699e;

        /* renamed from: g */
        public final /* synthetic */ WizardCompletionType f23701g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7456a(WizardCompletionType wizardCompletionType, d dVar) {
            super(2, dVar);
            C7455j0.this = r5;
            this.f23701g = wizardCompletionType;
        }

        /* renamed from: i */
        public final d<s> m29591i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7456a(this.f23701g, dVar);
        }

        /* renamed from: k */
        public final Object m29590k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7456a(this.f23701g, dVar).m29589s(s.a);
        }

        /* renamed from: s */
        public final Object m29589s(Object obj) {
            Object obj2 = s.a;
            Object obj3 = a.a;
            int i = this.f23699e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                o oVar = C7455j0.this.f23698b;
                WizardCompletionType wizardCompletionType = this.f23701g;
                this.f23699e = 1;
                o oVar2 = oVar;
                Object a4 = s1.a.a.a.v0.f.d.a4(oVar2.a, new n(oVar2, wizardCompletionType, (d) null), this);
                if (a4 != obj3) {
                    a4 = obj2;
                }
                if (a4 == obj3) {
                    return obj3;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj2;
        }
    }

    @Inject
    public C7455j0(@Named("UI") f fVar, AbstractC19771a abstractC19771a) {
        l.e(fVar, "uiContext");
        l.e(abstractC19771a, "wizardListener");
        this.f23697a = fVar;
        this.f23698b = abstractC19771a;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        WizardCompletionType wizardCompletionType;
        l.e(intent, "intent");
        if (context != null) {
            if (!l.a(intent.getAction(), "com.truecaller.wizard.ACTION_WIZARD_COMPLETED")) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            Objects.requireNonNull(WizardCompletionType.Companion);
            l.e(intent, "intent");
            WizardCompletionType[] values = WizardCompletionType.values();
            int i = 0;
            while (true) {
                if (i >= 3) {
                    wizardCompletionType = null;
                    break;
                }
                wizardCompletionType = values[i];
                if (wizardCompletionType.getType() == intent.getIntExtra("extraCompletionType", -1)) {
                    break;
                }
                i++;
            }
            if (wizardCompletionType == null) {
                throw new IllegalArgumentException("type can't be null");
            }
            s1.a.a.a.v0.f.d.w2(h1.a, this.f23697a, (j0) null, new C7456a(wizardCompletionType, null), 2, (Object) null);
            return;
        }
        throw new IllegalArgumentException("onReceive context should not be null".toString());
    }
}
