package p193e.p194a.p1238t2.p1239a.p1243b.p1244a;

import com.google.protobuf.ExtensionRegistryLite;
import com.truecaller.api.services.callmeback.p136v1.CallbackLogRequest;
import com.truecaller.api.services.callmeback.p136v1.CallbackLogResponse;
import p3.a.c;
import p3.a.d;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.a;
import p3.a.q1.b;
import p3.a.q1.e;
/* renamed from: e.a.t2.a.b.a.b */
/* loaded from: classes5-dex2jar.jar:e/a/t2/a/b/a/b.class */
public final class C20442b {

    /* renamed from: a */
    public static volatile p0<CallbackLogRequest, CallbackLogResponse> f57512a;

    /* renamed from: e.a.t2.a.b.a.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/b/a/b$a.class */
    public static final class C20443a extends b<C20443a> {
        public C20443a(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20443a(d dVar, c cVar, C20441a c20441a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11138a(d dVar, c cVar) {
            return new C20443a(dVar, cVar);
        }

        /* renamed from: c */
        public CallbackLogResponse m11137c(CallbackLogRequest callbackLogRequest) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<CallbackLogRequest, CallbackLogResponse> p0Var = C20442b.f57512a;
            p0<CallbackLogRequest, CallbackLogResponse> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20442b.class) {
                    try {
                        p0<CallbackLogRequest, CallbackLogResponse> p0Var3 = C20442b.f57512a;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.callmeback.v1.CallbackLogService", "CreateCallbackLog");
                            b.e = true;
                            CallbackLogRequest defaultInstance = CallbackLogRequest.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(CallbackLogResponse.getDefaultInstance());
                            p0Var2 = b.a();
                            C20442b.f57512a = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (CallbackLogResponse) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, callbackLogRequest);
        }
    }

    /* renamed from: e.a.t2.a.b.a.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/b/a/b$b.class */
    public static final class C20444b extends a<C20444b> {
        public C20444b(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20444b(d dVar, c cVar, C20441a c20441a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11136a(d dVar, c cVar) {
            return new C20444b(dVar, cVar);
        }
    }
}
