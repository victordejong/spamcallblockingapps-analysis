package p106g8;

import android.support.p012v4.media.C0082b;
import ba.C0748b;
import com.google.android.gms.internal.ads.C1676a;
import com.mglab.scm.api.AlarmJobIntentService;
import p007a6.C0028d;
import p074d9.C2497h;
import p095f8.C2780h;
import p117h8.C3043q;
import p149k8.C3389e;
import p170m7.AbstractC3656d;
import p233s6.C4316k;
/* renamed from: g8.c */
/* loaded from: classes2-dex2jar.jar:g8/c.class */
public final /* synthetic */ class C2913c implements AbstractC3656d, C2497h.AbstractC2499b {

    /* renamed from: a */
    public final /* synthetic */ AlarmJobIntentService f9816a;

    public /* synthetic */ C2913c(AlarmJobIntentService alarmJobIntentService) {
        this.f9816a = alarmJobIntentService;
    }

    @Override // p170m7.AbstractC3656d
    /* renamed from: a */
    public void mo99a(Exception exc, Object obj) {
        AlarmJobIntentService alarmJobIntentService = this.f9816a;
        C4316k c4316k = (C4316k) obj;
        int i = AlarmJobIntentService.f7284l;
        if (c4316k != null) {
            C2780h.m3043j0(alarmJobIntentService.getApplicationContext(), "lastblid", Integer.valueOf(C3043q.m2701u()));
            alarmJobIntentService.m3972g();
            return;
        }
        C2780h.m3051f0(alarmJobIntentService.getApplicationContext());
        C1676a.m4785l(".uploadBL no result", 1, C0082b.m8759c(-3, C0748b.m7409b()));
    }

    @Override // p074d9.C2497h.AbstractC2499b
    /* renamed from: f */
    public void mo847f(C2497h c2497h, Throwable th) {
        AlarmJobIntentService alarmJobIntentService = this.f9816a;
        int i = AlarmJobIntentService.f7284l;
        C2780h.m3051f0(alarmJobIntentService.getApplicationContext());
        C0748b.m7409b().m7404g(new C3389e("Download not completed\nTransaction error", 1));
        C0028d.m8914f(-3, C0748b.m7409b());
    }
}
