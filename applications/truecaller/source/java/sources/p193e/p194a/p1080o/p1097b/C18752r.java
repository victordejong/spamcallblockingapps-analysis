package p193e.p194a.p1080o.p1097b;

import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.callerid.p135v1.CallUpdated;
import com.truecaller.api.services.callerid.p135v1.model.CallContext;
import com.truecaller.api.services.callerid.p135v1.model.Phone;
import com.truecaller.data.entity.CallContextMessage;
import java.io.IOException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1238t2.p1239a.p1240a.p1241a.C20436b;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.contextcall.utils.ContextCallStubManagerImpl$sendCallReason$2", f = "ContextCallStubManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.o.b.r */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/r.class */
public final class C18752r extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C18753s f52686e;

    /* renamed from: f */
    public final /* synthetic */ CallContextMessage f52687f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18752r(C18753s c18753s, CallContextMessage callContextMessage, d dVar) {
        super(2, dVar);
        this.f52686e = c18753s;
        this.f52687f = callContextMessage;
    }

    /* renamed from: i */
    public final d<s> m14552i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18752r(this.f52686e, this.f52687f, dVar);
    }

    /* renamed from: k */
    public final Object m14551k(Object obj, Object obj2) {
        Boolean bool;
        C20436b.C20437a mo20911c;
        C20436b.C20437a c20437a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C18753s c18753s = this.f52686e;
        CallContextMessage callContextMessage = this.f52687f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        boolean z = false;
        try {
            mo20911c = c18753s.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            c20437a = mo20911c;
        } catch (IOException | RuntimeException e) {
        }
        if (c20437a == null) {
            bool = Boolean.FALSE;
            return bool;
        }
        CallUpdated.Request.C2906a newBuilder = CallUpdated.Request.newBuilder();
        CallContext m15615f = C17891a1.C17902k.m15615f(callContextMessage);
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setCallContext(m15615f);
        Phone m15609h = C17891a1.C17902k.m15609h(callContextMessage.f11497b);
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setPhone(m15609h);
        c20437a.m11142e((CallUpdated.Request) newBuilder.build());
        z = true;
        bool = Boolean.valueOf(z);
        return bool;
    }

    /* renamed from: s */
    public final Object m14550s(Object obj) {
        C20436b.C20437a mo20911c;
        C20436b.C20437a c20437a;
        C25225a.m3932a3(obj);
        boolean z = false;
        try {
            mo20911c = this.f52686e.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            c20437a = mo20911c;
        } catch (IOException | RuntimeException e) {
        }
        if (c20437a != null) {
            CallUpdated.Request.C2906a newBuilder = CallUpdated.Request.newBuilder();
            CallContext m15615f = C17891a1.C17902k.m15615f(this.f52687f);
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setCallContext(m15615f);
            Phone m15609h = C17891a1.C17902k.m15609h(this.f52687f.f11497b);
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setPhone(m15609h);
            c20437a.m11142e((CallUpdated.Request) newBuilder.build());
            z = true;
            return Boolean.valueOf(z);
        }
        return Boolean.FALSE;
    }
}
