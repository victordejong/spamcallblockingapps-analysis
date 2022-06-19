package p193e.p194a.p195a.p244k;

import android.content.ContentProviderOperation;
import android.content.Intent;
import android.os.Bundle;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import java.util.List;
import java.util.Set;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0;
import p193e.p194a.p195a.p244k.C6713w;
import p193e.p194a.p437c.p580r.p587h.C10545d;
import w3.b.a.b;
/* renamed from: e.a.a.k.q */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/q.class */
public interface AbstractC6704q<TransactionType extends C6713w> {

    /* renamed from: e.a.a.k.q$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/q$a.class */
    public static class C6705a {

        /* renamed from: a */
        public final int f22072a;

        /* renamed from: b */
        public final TransportInfo f22073b;

        public C6705a(int i) {
            this.f22072a = i;
            this.f22073b = null;
        }

        public C6705a(TransportInfo transportInfo) {
            this.f22072a = 1;
            this.f22073b = transportInfo;
        }
    }

    /* renamed from: A */
    boolean mo15188A();

    /* renamed from: B */
    C6705a mo15187B(Message message, Participant[] participantArr);

    /* renamed from: C */
    Bundle mo15186C(Intent intent, int i);

    /* renamed from: a */
    C6702p mo15185a(Message message);

    /* renamed from: b */
    AbstractC6696o mo15184b(Message message);

    /* renamed from: c */
    int mo15183c(Message message);

    /* renamed from: d */
    boolean mo15182d(Message message, Entity entity, boolean z);

    /* renamed from: e */
    boolean mo15181e(Message message);

    /* renamed from: f */
    boolean mo15180f(Message message, Entity entity);

    /* renamed from: g */
    boolean mo15179g();

    String getName();

    int getType();

    /* renamed from: h */
    void mo14986h(b bVar);

    /* renamed from: i */
    boolean mo15178i(Message message);

    /* renamed from: j */
    b mo14985j();

    /* renamed from: k */
    long mo15177k(long j);

    /* renamed from: l */
    String mo15176l(String str);

    /* renamed from: m */
    long mo14984m(AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, AbstractC6139g0 abstractC6139g0, b bVar, b bVar2, int i, List<ContentProviderOperation> list, AbstractC19244l0 abstractC19244l0, boolean z, C10545d c10545d);

    /* renamed from: n */
    boolean mo15175n(C6713w c6713w);

    /* renamed from: o */
    boolean mo15174o(TransportInfo transportInfo, TransactionType transactiontype, boolean z, Set<Long> set);

    /* renamed from: p */
    boolean mo15173p(TransactionType transactiontype);

    /* renamed from: q */
    void mo15172q(BinaryEntity binaryEntity);

    /* renamed from: r */
    boolean mo15171r();

    /* renamed from: s */
    boolean mo15170s(Message message, int i, TransactionType transactiontype);

    /* renamed from: t */
    void mo15169t(long j);

    /* renamed from: u */
    boolean mo15168u(TransportInfo transportInfo, long j, long j2, TransactionType transactiontype, boolean z);

    /* renamed from: v */
    boolean mo15167v(Message message);

    /* renamed from: w */
    TransactionType mo15166w();

    /* renamed from: x */
    boolean mo15165x(Participant participant);

    /* renamed from: y */
    boolean mo15164y(TransportInfo transportInfo, TransactionType transactiontype);

    /* renamed from: z */
    boolean mo15163z(String str, C6676e c6676e);
}
