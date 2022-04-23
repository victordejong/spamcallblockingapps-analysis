package io.grpc;

import java.io.InputStream;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:io/grpc/MethodDescriptor.class */
public final class MethodDescriptor<ReqT, RespT> {

    /* renamed from: a */
    public final MethodType f37969a;

    /* renamed from: b */
    public final String f37970b;

    /* renamed from: c */
    public final String f37971c;

    /* renamed from: d */
    public final AbstractC10301c<ReqT> f37972d;

    /* renamed from: e */
    public final AbstractC10301c<RespT> f37973e;

    /* renamed from: f */
    public final Object f37974f;

    /* renamed from: g */
    public final boolean f37975g;

    /* renamed from: h */
    public final boolean f37976h;

    /* renamed from: i */
    public final boolean f37977i;

    /* loaded from: classes2-dex2jar.jar:io/grpc/MethodDescriptor$MethodType.class */
    public enum MethodType {
        UNARY,
        CLIENT_STREAMING,
        SERVER_STREAMING,
        BIDI_STREAMING,
        UNKNOWN;

        public final boolean clientSendsOneMessage() {
            return this == UNARY || this == SERVER_STREAMING;
        }

        public final boolean serverSendsOneMessage() {
            return this == UNARY || this == CLIENT_STREAMING;
        }
    }

    /* renamed from: io.grpc.MethodDescriptor$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/MethodDescriptor$b.class */
    public static final class C10300b<ReqT, RespT> {

        /* renamed from: a */
        public AbstractC10301c<ReqT> f37978a;

        /* renamed from: b */
        public AbstractC10301c<RespT> f37979b;

        /* renamed from: c */
        public MethodType f37980c;

        /* renamed from: d */
        public String f37981d;

        /* renamed from: e */
        public boolean f37982e;

        /* renamed from: f */
        public boolean f37983f;

        /* renamed from: g */
        public Object f37984g;

        /* renamed from: h */
        public boolean f37985h;

        public C10300b() {
        }

        /* renamed from: a */
        public C10300b<ReqT, RespT> m624a(MethodType methodType) {
            this.f37980c = methodType;
            return this;
        }

        /* renamed from: a */
        public C10300b<ReqT, RespT> m623a(AbstractC10301c<ReqT> cVar) {
            this.f37978a = cVar;
            return this;
        }

        /* renamed from: a */
        public C10300b<ReqT, RespT> m622a(String str) {
            this.f37981d = str;
            return this;
        }

        /* renamed from: a */
        public C10300b<ReqT, RespT> m621a(boolean z) {
            this.f37985h = z;
            return this;
        }

        /* renamed from: a */
        public MethodDescriptor<ReqT, RespT> m625a() {
            return new MethodDescriptor<>(this.f37980c, this.f37981d, this.f37978a, this.f37979b, this.f37984g, this.f37982e, this.f37983f, this.f37985h);
        }

        /* renamed from: b */
        public C10300b<ReqT, RespT> m620b(AbstractC10301c<RespT> cVar) {
            this.f37979b = cVar;
            return this;
        }
    }

    /* renamed from: io.grpc.MethodDescriptor$c */
    /* loaded from: classes2-dex2jar.jar:io/grpc/MethodDescriptor$c.class */
    public interface AbstractC10301c<T> {
        /* renamed from: a */
        InputStream mo618a(T t);

        /* renamed from: a */
        T mo619a(InputStream inputStream);
    }

    /* renamed from: io.grpc.MethodDescriptor$d */
    /* loaded from: classes2-dex2jar.jar:io/grpc/MethodDescriptor$d.class */
    public interface AbstractC10302d<T> extends AbstractC10303e<T> {
    }

    /* renamed from: io.grpc.MethodDescriptor$e */
    /* loaded from: classes2-dex2jar.jar:io/grpc/MethodDescriptor$e.class */
    public interface AbstractC10303e<T> extends AbstractC10301c<T> {
    }

    public MethodDescriptor(MethodType methodType, String str, AbstractC10301c<ReqT> cVar, AbstractC10301c<RespT> cVar2, Object obj, boolean z, boolean z2, boolean z3) {
        new AtomicReferenceArray(2);
        C4933n.m24794a(methodType, "type");
        this.f37969a = methodType;
        C4933n.m24794a(str, "fullMethodName");
        this.f37970b = str;
        this.f37971c = m631a(str);
        C4933n.m24794a(cVar, "requestMarshaller");
        this.f37972d = cVar;
        C4933n.m24794a(cVar2, "responseMarshaller");
        this.f37973e = cVar2;
        this.f37974f = obj;
        this.f37975g = z;
        this.f37976h = z2;
        this.f37977i = z3;
    }

    /* renamed from: a */
    public static <ReqT, RespT> C10300b<ReqT, RespT> m634a(AbstractC10301c<ReqT> cVar, AbstractC10301c<RespT> cVar2) {
        C10300b<ReqT, RespT> bVar = new C10300b<>();
        bVar.m623a(cVar);
        bVar.m620b(cVar2);
        return bVar;
    }

    /* renamed from: a */
    public static String m631a(String str) {
        C4933n.m24794a(str, "fullMethodName");
        int lastIndexOf = str.lastIndexOf(47);
        if (lastIndexOf == -1) {
            return null;
        }
        return str.substring(0, lastIndexOf);
    }

    /* renamed from: a */
    public static String m630a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        C4933n.m24794a(str, "fullServiceName");
        sb.append(str);
        sb.append("/");
        C4933n.m24794a(str2, "methodName");
        sb.append(str2);
        return sb.toString();
    }

    /* renamed from: e */
    public static <ReqT, RespT> C10300b<ReqT, RespT> m626e() {
        return m634a((AbstractC10301c) null, (AbstractC10301c) null);
    }

    /* renamed from: a */
    public InputStream m632a(ReqT reqt) {
        return this.f37972d.mo618a((AbstractC10301c<ReqT>) reqt);
    }

    /* renamed from: a */
    public RespT m633a(InputStream inputStream) {
        return this.f37973e.mo619a(inputStream);
    }

    /* renamed from: a */
    public String m635a() {
        return this.f37970b;
    }

    /* renamed from: b */
    public String m629b() {
        return this.f37971c;
    }

    /* renamed from: c */
    public MethodType m628c() {
        return this.f37969a;
    }

    /* renamed from: d */
    public boolean m627d() {
        return this.f37976h;
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24813a("fullMethodName", this.f37970b);
        a.m24813a("type", this.f37969a);
        a.m24812a("idempotent", this.f37975g);
        a.m24812a("safe", this.f37976h);
        a.m24812a("sampledToLocalTracing", this.f37977i);
        a.m24813a("requestMarshaller", this.f37972d);
        a.m24813a("responseMarshaller", this.f37973e);
        a.m24813a("schemaDescriptor", this.f37974f);
        a.m24811b();
        return a.toString();
    }
}
