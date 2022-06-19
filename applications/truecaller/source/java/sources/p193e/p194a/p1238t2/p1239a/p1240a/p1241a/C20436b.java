package p193e.p194a.p1238t2.p1239a.p1240a.p1241a;

import com.google.protobuf.ExtensionRegistryLite;
import com.truecaller.api.services.callerid.p135v1.CallEnded;
import com.truecaller.api.services.callerid.p135v1.CallInitiated;
import com.truecaller.api.services.callerid.p135v1.CallNotificationResponse;
import com.truecaller.api.services.callerid.p135v1.CallUpdated;
import com.truecaller.api.services.callerid.p135v1.GetBusinessCard;
import com.truecaller.api.services.callerid.p135v1.GetCallContextMessages;
import p3.a.c;
import p3.a.d;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.a;
import p3.a.q1.b;
import p3.a.q1.e;
/* renamed from: e.a.t2.a.a.a.b */
/* loaded from: classes5-dex2jar.jar:e/a/t2/a/a/a/b.class */
public final class C20436b {

    /* renamed from: a */
    public static volatile p0<GetBusinessCard.Request, GetBusinessCard.Response> f57507a;

    /* renamed from: b */
    public static volatile p0<CallInitiated.Request, CallNotificationResponse> f57508b;

    /* renamed from: c */
    public static volatile p0<CallUpdated.Request, CallUpdated.Response> f57509c;

    /* renamed from: d */
    public static volatile p0<CallEnded.Request, CallNotificationResponse> f57510d;

    /* renamed from: e */
    public static volatile p0<GetCallContextMessages.Request, GetCallContextMessages.Response> f57511e;

    /* renamed from: e.a.t2.a.a.a.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/a/a/b$a.class */
    public static final class C20437a extends b<C20437a> {
        public C20437a(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20437a(d dVar, c cVar, C20435a c20435a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11145a(d dVar, c cVar) {
            return new C20437a(dVar, cVar);
        }

        /* renamed from: c */
        public CallNotificationResponse m11144c(CallEnded.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<CallEnded.Request, CallNotificationResponse> p0Var = C20436b.f57510d;
            p0<CallEnded.Request, CallNotificationResponse> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20436b.class) {
                    try {
                        p0<CallEnded.Request, CallNotificationResponse> p0Var3 = C20436b.f57510d;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.callerid.v1.CallerId", "CallEnded");
                            b.e = true;
                            CallEnded.Request defaultInstance = CallEnded.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(CallNotificationResponse.getDefaultInstance());
                            p0Var2 = b.a();
                            C20436b.f57510d = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (CallNotificationResponse) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: d */
        public CallNotificationResponse m11143d(CallInitiated.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<CallInitiated.Request, CallNotificationResponse> p0Var = C20436b.f57508b;
            p0<CallInitiated.Request, CallNotificationResponse> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20436b.class) {
                    try {
                        p0<CallInitiated.Request, CallNotificationResponse> p0Var3 = C20436b.f57508b;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.callerid.v1.CallerId", "CallInitiated");
                            b.e = true;
                            CallInitiated.Request defaultInstance = CallInitiated.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(CallNotificationResponse.getDefaultInstance());
                            p0Var2 = b.a();
                            C20436b.f57508b = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (CallNotificationResponse) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: e */
        public CallUpdated.Response m11142e(CallUpdated.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<CallUpdated.Request, CallUpdated.Response> p0Var = C20436b.f57509c;
            p0<CallUpdated.Request, CallUpdated.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20436b.class) {
                    try {
                        p0<CallUpdated.Request, CallUpdated.Response> p0Var3 = C20436b.f57509c;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.callerid.v1.CallerId", "CallUpdated");
                            b.e = true;
                            CallUpdated.Request defaultInstance = CallUpdated.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(CallUpdated.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20436b.f57509c = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (CallUpdated.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: f */
        public GetBusinessCard.Response m11141f(GetBusinessCard.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GetBusinessCard.Request, GetBusinessCard.Response> p0Var = C20436b.f57507a;
            p0<GetBusinessCard.Request, GetBusinessCard.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20436b.class) {
                    try {
                        p0<GetBusinessCard.Request, GetBusinessCard.Response> p0Var3 = C20436b.f57507a;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.callerid.v1.CallerId", "GetBusinessCard");
                            b.e = true;
                            GetBusinessCard.Request defaultInstance = GetBusinessCard.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GetBusinessCard.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20436b.f57507a = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GetBusinessCard.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }

        /* renamed from: g */
        public GetCallContextMessages.Response m11140g(GetCallContextMessages.Request request) {
            d dVar = ((p3.a.q1.c) this).a;
            p0<GetCallContextMessages.Request, GetCallContextMessages.Response> p0Var = C20436b.f57511e;
            p0<GetCallContextMessages.Request, GetCallContextMessages.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20436b.class) {
                    try {
                        p0<GetCallContextMessages.Request, GetCallContextMessages.Response> p0Var3 = C20436b.f57511e;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.callerid.v1.CallerId", "GetCallContextMessages");
                            b.e = true;
                            GetCallContextMessages.Request defaultInstance = GetCallContextMessages.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = p3.a.p1.a.b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(GetCallContextMessages.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20436b.f57511e = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (GetCallContextMessages.Response) e.a(dVar, p0Var2, ((p3.a.q1.c) this).b, request);
        }
    }

    /* renamed from: e.a.t2.a.a.a.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/t2/a/a/a/b$b.class */
    public static final class C20438b extends a<C20438b> {
        public C20438b(d dVar, c cVar) {
            super(dVar, cVar);
        }

        public C20438b(d dVar, c cVar, C20435a c20435a) {
            super(dVar, cVar);
        }

        /* renamed from: a */
        public p3.a.q1.c m11139a(d dVar, c cVar) {
            return new C20438b(dVar, cVar);
        }
    }
}
