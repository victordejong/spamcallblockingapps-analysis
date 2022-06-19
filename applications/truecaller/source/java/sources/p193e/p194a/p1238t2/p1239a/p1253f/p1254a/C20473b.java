package p193e.p194a.p1238t2.p1239a.p1253f.p1254a;

import com.google.protobuf.Empty;
import com.google.protobuf.ExtensionRegistryLite;
import com.truecaller.api.services.presence.p139v1.GetPresenceRequest;
import com.truecaller.api.services.presence.p139v1.GetPresenceResponse;
import com.truecaller.api.services.presence.p139v1.SetLastSeenRequest;
import com.truecaller.api.services.presence.p139v1.SetPresenceRequest;
import p3.a.c;
import p3.a.d;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.a;
import p3.a.q1.b;
import p3.a.q1.e;
/* renamed from: e.a.t2.a.f.a.b */
/* loaded from: classes5-dex2jar.jar:e/a/t2/a/f/a/b.class */
public final class C20473b {

    /* renamed from: a */
    public static volatile p0<SetLastSeenRequest, Empty> f57545a;

    /* renamed from: b */
    public static volatile p0<SetPresenceRequest, Empty> f57546b;

    /* renamed from: c */
    public static volatile p0<GetPresenceRequest, GetPresenceResponse> f57547c;

    /* renamed from: e.a.t2.a.f.a.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/f/a/b$a.class */
    public static final class C20474a extends b<C20474a> {
        public C20474a(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20474a(d dVar, c cVar, C20472a c20472a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11099a(d dVar, c cVar) {
            return new C20474a(dVar, cVar);
        }

        /* renamed from: c */
        public GetPresenceResponse m11098c(GetPresenceRequest getPresenceRequest) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GetPresenceRequest, GetPresenceResponse> p0Var = C20473b.f57547c;
            p0<GetPresenceRequest, GetPresenceResponse> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20473b.class) {
                    try {
                        p0<GetPresenceRequest, GetPresenceResponse> p0Var3 = C20473b.f57547c;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.presence.v1.Presence", "GetPresence");
                            b.e = true;
                            GetPresenceRequest defaultInstance = GetPresenceRequest.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GetPresenceResponse.getDefaultInstance());
                            p0Var2 = b.a();
                            C20473b.f57547c = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GetPresenceResponse) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, getPresenceRequest);
        }

        /* renamed from: d */
        public Empty m11097d(SetLastSeenRequest setLastSeenRequest) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<SetLastSeenRequest, Empty> p0Var = C20473b.f57545a;
            p0<SetLastSeenRequest, Empty> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20473b.class) {
                    try {
                        p0<SetLastSeenRequest, Empty> p0Var3 = C20473b.f57545a;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.presence.v1.Presence", "SetLastSeen");
                            b.e = true;
                            SetLastSeenRequest defaultInstance = SetLastSeenRequest.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(Empty.getDefaultInstance());
                            p0Var2 = b.a();
                            C20473b.f57545a = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (Empty) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, setLastSeenRequest);
        }

        /* renamed from: e */
        public Empty m11096e(SetPresenceRequest setPresenceRequest) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<SetPresenceRequest, Empty> p0Var = C20473b.f57546b;
            p0<SetPresenceRequest, Empty> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20473b.class) {
                    try {
                        p0<SetPresenceRequest, Empty> p0Var3 = C20473b.f57546b;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.presence.v1.Presence", "SetPresence");
                            b.e = true;
                            SetPresenceRequest defaultInstance = SetPresenceRequest.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(Empty.getDefaultInstance());
                            p0Var2 = b.a();
                            C20473b.f57546b = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (Empty) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, setPresenceRequest);
        }
    }

    /* renamed from: e.a.t2.a.f.a.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/f/a/b$b.class */
    public static final class C20475b extends a<C20475b> {
        public C20475b(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20475b(d dVar, c cVar, C20472a c20472a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11095a(d dVar, c cVar) {
            return new C20475b(dVar, cVar);
        }
    }
}
