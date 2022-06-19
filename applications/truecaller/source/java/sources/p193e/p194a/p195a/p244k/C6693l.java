package p193e.p194a.p195a.p244k;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.mopub.volley.BuildConfig;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import java.util.List;
import java.util.Set;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0;
import p193e.p194a.p195a.p244k.AbstractC6704q;
import p193e.p194a.p195a.p244k.C6713w;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p437c.p580r.p587h.C10545d;
import w3.b.a.b;
/* renamed from: e.a.a.k.l */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/l.class */
public class C6693l implements AbstractC6704q<C6713w> {

    /* renamed from: a */
    public final Context f22060a;

    public C6693l(Context context) {
        this.f22060a = context;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: A */
    public boolean mo15188A() {
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: B */
    public AbstractC6704q.C6705a mo15187B(Message message, Participant[] participantArr) {
        return new AbstractC6704q.C6705a(0);
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: C */
    public Bundle mo15186C(Intent intent, int i) {
        return Bundle.EMPTY;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: a */
    public C6702p mo15185a(Message message) {
        return C6702p.m30566a();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: b */
    public AbstractC6696o mo15184b(Message message) {
        return null;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: c */
    public int mo15183c(Message message) {
        return 0;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: d */
    public boolean mo15182d(Message message, Entity entity, boolean z) {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: e */
    public boolean mo15181e(Message message) {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: f */
    public boolean mo15180f(Message message, Entity entity) {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: g */
    public boolean mo15179g() {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public String getName() {
        return BuildConfig.VERSION_NAME;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    public int getType() {
        return 3;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: h */
    public void mo14986h(b bVar) {
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: i */
    public boolean mo15178i(Message message) {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: j */
    public b mo14985j() {
        return new b();
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: k */
    public long mo15177k(long j) {
        return j;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: l */
    public String mo15176l(String str) {
        return str;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: m */
    public long mo14984m(AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, AbstractC6139g0 abstractC6139g0, b bVar, b bVar2, int i, List<ContentProviderOperation> list, AbstractC19244l0 abstractC19244l0, boolean z, C10545d c10545d) {
        return Long.MIN_VALUE;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: n */
    public boolean mo15175n(C6713w c6713w) {
        boolean z;
        if (!c6713w.mo30534c()) {
            String str = c6713w.f22101a;
            Uri uri = C17891a1.f50888a;
            if (str.equals("com.truecaller")) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: o */
    public boolean mo15174o(TransportInfo transportInfo, C6713w c6713w, boolean z, Set<Long> set) {
        c6713w.m30536a(c6713w.m30533d(C8582g0.m28340A(transportInfo.mo34879u())).m30531a());
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: p */
    public boolean mo15173p(C6713w c6713w) {
        try {
            ContentProviderResult[] m30535b = c6713w.m30535b(this.f22060a.getContentResolver());
            boolean z = false;
            if (m30535b != null) {
                z = false;
                if (m30535b.length != 0) {
                    z = true;
                }
            }
            return z;
        } catch (OperationApplicationException | RemoteException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            return false;
        }
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: q */
    public void mo15172q(BinaryEntity binaryEntity) {
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: r */
    public boolean mo15171r() {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: s */
    public boolean mo15170s(Message message, int i, C6713w c6713w) {
        C6713w.C6715b.C6716a m30532e = c6713w.m30532e(C8582g0.m28340A(message.f13380a));
        m30532e.f22110c.put(UpdateKey.STATUS, Integer.valueOf(i));
        int i2 = message.f13386g;
        m30532e.f22111d = "status = ?";
        m30532e.f22112e = new String[]{String.valueOf(i2)};
        c6713w.m30536a(m30532e.m30531a());
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: t */
    public void mo15169t(long j) {
        throw new IllegalStateException("Null transport does not support retry");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: u */
    public boolean mo15168u(TransportInfo transportInfo, long j, long j2, C6713w c6713w, boolean z) {
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: v */
    public boolean mo15167v(Message message) {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: w */
    public C6713w mo15166w() {
        Uri uri = C17891a1.f50888a;
        return new C6713w("com.truecaller");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: x */
    public boolean mo15165x(Participant participant) {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: y */
    public boolean mo15164y(TransportInfo transportInfo, C6713w c6713w) {
        C6713w.C6715b.C6716a m30532e = c6713w.m30532e(C8582g0.m28340A(transportInfo.mo34879u()));
        m30532e.f22110c.put("seen", (Integer) 1);
        c6713w.m30536a(m30532e.m30531a());
        return true;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6704q
    /* renamed from: z */
    public boolean mo15163z(String str, C6676e c6676e) {
        c6676e.m30585a(0, 0, 0, 3);
        return false;
    }
}
