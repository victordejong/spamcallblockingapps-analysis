package p131c.p431l.p432a.p442b.p445c;

import android.content.Context;
import android.content.Intent;
import com.netqin.p525cm.receiver.CBPhoneStateReceiver;
import p131c.p431l.p432a.p442b.p446d.C6761a;
/* renamed from: c.l.a.b.c.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/c/a.class */
public class C6726a {

    /* renamed from: a */
    public Context f20746a;

    /* renamed from: b */
    public C6761a f20747b;

    public C6726a(Context context) {
        this.f20746a = context;
        this.f20747b = new C6761a(this.f20746a);
        m19978b();
    }

    /* renamed from: a */
    public void m19980a() {
        if (this.f20747b != null) {
            CBPhoneStateReceiver.m3275a(this.f20746a).m3267b(this.f20747b);
            this.f20747b.m19858e();
            this.f20747b = null;
        }
    }

    /* renamed from: a */
    public void m19979a(Context context, Intent intent) {
        if (intent != null) {
            int intExtra = intent.getIntExtra("AntiHarassCommand", 1);
            if (intExtra == 1) {
                m19977c();
            } else if (intExtra != 2) {
                m19977c();
            } else {
                m19978b();
            }
        }
    }

    /* renamed from: b */
    public final void m19978b() {
        if (this.f20747b != null) {
            CBPhoneStateReceiver.m3275a(this.f20746a).m3273a(this.f20747b);
        }
    }

    /* renamed from: c */
    public final void m19977c() {
        if (this.f20747b != null) {
            CBPhoneStateReceiver.m3275a(this.f20746a).m3267b(this.f20747b);
        }
    }
}
