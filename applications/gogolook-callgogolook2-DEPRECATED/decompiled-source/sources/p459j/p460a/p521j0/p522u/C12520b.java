package p459j.p460a.p521j0.p522u;

import android.content.Intent;
import android.telephony.TelephonyManager;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import p459j.p460a.p521j0.C12489b;
import p459j.p460a.p521j0.C12492c;
import p459j.p460a.p521j0.EnumC12488a;
import p459j.p460a.p521j0.p522u.p523d.C12617h0;
import p459j.p460a.p582w0.p585b5.C13930d;
/* renamed from: j.a.j0.u.b */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/b.class */
public class C12520b {

    /* renamed from: a */
    public C12492c f28217a;

    /* renamed from: b */
    public C12617h0 f28218b;

    public C12520b(C12492c cVar, C12617h0 h0Var) {
        this.f28217a = cVar;
        this.f28218b = h0Var;
    }

    /* renamed from: a */
    public EnumC12488a m5955a() {
        Intent intent = new Intent("android.intent.action.PHONE_STATE");
        intent.putExtra(IapProductRealmObject.STATE, TelephonyManager.EXTRA_STATE_IDLE);
        return m5954a(intent);
    }

    /* renamed from: a */
    public final EnumC12488a m5954a(Intent intent) {
        C12492c cVar = this.f28217a;
        if (cVar == null || !cVar.m6008a()) {
            return null;
        }
        return C12489b.m6010b().m6015a(intent, this.f28218b);
    }

    /* renamed from: a */
    public EnumC12488a m5952a(String str) {
        Intent intent = new Intent("android.intent.action.PHONE_STATE");
        intent.putExtra(IapProductRealmObject.STATE, TelephonyManager.EXTRA_STATE_RINGING);
        intent.putExtra("incoming_number", str);
        return m5954a(intent);
    }

    /* renamed from: a */
    public void m5953a(C12492c cVar) {
        this.f28217a = cVar;
    }

    /* renamed from: b */
    public EnumC12488a m5951b() {
        Intent intent = new Intent("android.intent.action.PHONE_STATE");
        intent.putExtra(IapProductRealmObject.STATE, TelephonyManager.EXTRA_STATE_OFFHOOK);
        return m5954a(intent);
    }

    /* renamed from: b */
    public EnumC12488a m5950b(String str) {
        C13930d dVar = new C13930d();
        dVar.m3018e();
        Intent intent = new Intent("android.intent.action.NEW_OUTGOING_CALL");
        intent.putExtra("android.intent.extra.PHONE_NUMBER", str);
        m5954a(intent);
        dVar.m3017f();
        C13930d dVar2 = new C13930d();
        dVar2.m3018e();
        Intent intent2 = new Intent("android.intent.action.PHONE_STATE");
        intent2.putExtra(IapProductRealmObject.STATE, TelephonyManager.EXTRA_STATE_OFFHOOK);
        EnumC12488a a = m5954a(intent2);
        dVar2.m3017f();
        return a;
    }
}
