package retrofit2;

import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.lang.reflect.Method;
import kotlin.KotlinNullPointerException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.o;
import kotlin.v;
import kotlinx.coroutines.n;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a%\u0010��\u001a\u0002H\u0001\"\b\b��\u0010\u0001*\u00020\u0002*\b\u0012\u0004\u0012\u0002H\u00010\u0003H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0004\u001a+\u0010��\u001a\u0004\u0018\u0001H\u0001\"\b\b��\u0010\u0001*\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0003H\u0087@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0004\u001a'\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0007\"\u0004\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0003H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0004\u001a\u001a\u0010\b\u001a\u0002H\u0001\"\u0006\b��\u0010\u0001\u0018\u0001*\u00020\tH\u0086\b¢\u0006\u0002\u0010\n\u001a\u0019\u0010\u000b\u001a\u00020\f*\u00060\rj\u0002`\u000eH\u0080@ø\u0001��¢\u0006\u0002\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"await", "T", "", "Lretrofit2/Call;", "(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitNullable", "awaitResponse", "Lretrofit2/Response;", "create", "Lretrofit2/Retrofit;", "(Lretrofit2/Retrofit;)Ljava/lang/Object;", "suspendAndThrow", "", "Ljava/lang/Exception;", "Lkotlin/Exception;", "(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrofit"}, k = 2, mv = {1, 1, 15})
/* loaded from: classes5-dex2jar.jar:retrofit2/i.class */
public final class i {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n¢\u0006\u0002\b\u0006¨\u0006\u0007"}, d2 = {"<anonymous>", "", "T", "", "it", "", "invoke", "retrofit2/KotlinExtensions$await$2$1"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$a.class */
    static final class a extends r implements Function1<Throwable, v> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Call f39458a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Call call) {
            super(1);
            this.f39458a = call;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(Throwable th) {
            this.f39458a.b();
            return v.f38654a;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n¢\u0006\u0002\b\u0006¨\u0006\u0007"}, d2 = {"<anonymous>", "", "T", "", "it", "", "invoke", "retrofit2/KotlinExtensions$await$4$1"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$b.class */
    static final class b extends r implements Function1<Throwable, v> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Call f39459a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Call call) {
            super(1);
            this.f39459a = call;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(Throwable th) {
            this.f39459a.b();
            return v.f38654a;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J$\u0010\b\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\nH\u0016¨\u0006\u000b"}, d2 = {"retrofit2/KotlinExtensions$await$2$2", "Lretrofit2/Callback;", "onFailure", "", "call", "Lretrofit2/Call;", "t", "", "onResponse", Payload.RESPONSE, "Lretrofit2/Response;", "retrofit"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$c.class */
    public static final class c implements retrofit2.c<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n f39460a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(n nVar) {
            this.f39460a = nVar;
        }

        @Override // retrofit2.c
        public final void onFailure(Call<T> call, Throwable t) {
            p.c(call, "call");
            p.c(t, "t");
            n nVar = this.f39460a;
            o.a aVar = o.f36812a;
            nVar.b(o.d(kotlin.p.a(t)));
        }

        @Override // retrofit2.c
        public final void onResponse(Call<T> call, Response<T> response) {
            p.c(call, "call");
            p.c(response, "response");
            if (response.a()) {
                Object b2 = response.b();
                if (b2 == null) {
                    Object tag = call.e().tag(retrofit2.h.class);
                    if (tag == null) {
                        p.a();
                    }
                    p.a(tag, "call.request().tag(Invocation::class.java)!!");
                    Method method = ((retrofit2.h) tag).a();
                    StringBuilder sb = new StringBuilder("Response from ");
                    p.a((Object) method, "method");
                    Class<?> declaringClass = method.getDeclaringClass();
                    p.a((Object) declaringClass, "method.declaringClass");
                    sb.append(declaringClass.getName());
                    sb.append('.');
                    sb.append(method.getName());
                    sb.append(" was null but response body type was declared as non-null");
                    KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException(sb.toString());
                    n nVar = this.f39460a;
                    o.a aVar = o.f36812a;
                    nVar.b(o.d(kotlin.p.a((Throwable) kotlinNullPointerException)));
                    return;
                }
                n nVar2 = this.f39460a;
                o.a aVar2 = o.f36812a;
                nVar2.b(o.d(b2));
                return;
            }
            n nVar3 = this.f39460a;
            HttpException httpException = new HttpException(response);
            o.a aVar3 = o.f36812a;
            nVar3.b(o.d(kotlin.p.a((Throwable) httpException)));
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u0001J \u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\b\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u00052\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\nH\u0016¨\u0006\u000b"}, d2 = {"retrofit2/KotlinExtensions$await$4$2", "Lretrofit2/Callback;", "onFailure", "", "call", "Lretrofit2/Call;", "t", "", "onResponse", Payload.RESPONSE, "Lretrofit2/Response;", "retrofit"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$d.class */
    public static final class d implements retrofit2.c<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n f39461a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(n nVar) {
            this.f39461a = nVar;
        }

        @Override // retrofit2.c
        public final void onFailure(Call<T> call, Throwable t) {
            p.c(call, "call");
            p.c(t, "t");
            n nVar = this.f39461a;
            o.a aVar = o.f36812a;
            nVar.b(o.d(kotlin.p.a(t)));
        }

        @Override // retrofit2.c
        public final void onResponse(Call<T> call, Response<T> response) {
            p.c(call, "call");
            p.c(response, "response");
            if (response.a()) {
                n nVar = this.f39461a;
                Object b2 = response.b();
                o.a aVar = o.f36812a;
                nVar.b(o.d(b2));
                return;
            }
            n nVar2 = this.f39461a;
            HttpException httpException = new HttpException(response);
            o.a aVar2 = o.f36812a;
            nVar2.b(o.d(kotlin.p.a((Throwable) httpException)));
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n¢\u0006\u0002\b\u0005¨\u0006\u0006"}, d2 = {"<anonymous>", "", "T", "it", "", "invoke", "retrofit2/KotlinExtensions$awaitResponse$2$1"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$e.class */
    static final class e extends r implements Function1<Throwable, v> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Call f39462a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Call call) {
            super(1);
            this.f39462a = call;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(Throwable th) {
            this.f39462a.b();
            return v.f38654a;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J$\u0010\b\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\nH\u0016¨\u0006\u000b"}, d2 = {"retrofit2/KotlinExtensions$awaitResponse$2$2", "Lretrofit2/Callback;", "onFailure", "", "call", "Lretrofit2/Call;", "t", "", "onResponse", Payload.RESPONSE, "Lretrofit2/Response;", "retrofit"}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$f.class */
    public static final class f implements retrofit2.c<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n f39463a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public f(n nVar) {
            this.f39463a = nVar;
        }

        @Override // retrofit2.c
        public final void onFailure(Call<T> call, Throwable t) {
            p.c(call, "call");
            p.c(t, "t");
            n nVar = this.f39463a;
            o.a aVar = o.f36812a;
            nVar.b(o.d(kotlin.p.a(t)));
        }

        @Override // retrofit2.c
        public final void onResponse(Call<T> call, Response<T> response) {
            p.c(call, "call");
            p.c(response, "response");
            n nVar = this.f39463a;
            o.a aVar = o.f36812a;
            nVar.b(o.d(response));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, d2 = {"<anonymous>", "", "run", "retrofit2/KotlinExtensions$suspendAndThrow$2$1"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$g.class */
    public static final class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlin.c.d f39464a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Exception f39465b;

        g(kotlin.c.d dVar, Exception exc) {
            this.f39464a = dVar;
            this.f39465b = exc;
        }

        @Override // java.lang.Runnable
        public final void run() {
            kotlin.c.d a2 = kotlin.c.a.b.a(this.f39464a);
            Exception exc = this.f39465b;
            o.a aVar = o.f36812a;
            a2.b(o.d(kotlin.p.a((Throwable) exc)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @kotlin.c.b.a.e(b = "KotlinExtensions.kt", c = {113}, d = "suspendAndThrow", e = "retrofit2.KotlinExtensions")
    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0001\u0010��\u001a\u0004\u0018\u00010\u0001*\u00060\u0002j\u0002`\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0080@"}, d2 = {"suspendAndThrow", "", "Ljava/lang/Exception;", "Lkotlin/Exception;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$h.class */
    public static final class h extends kotlin.c.b.a.c {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f39466a;

        /* renamed from: b  reason: collision with root package name */
        int f39467b;

        /* renamed from: c  reason: collision with root package name */
        Object f39468c;

        h(kotlin.c.d dVar) {
            super(dVar);
        }

        @Override // kotlin.c.b.a.a
        public final Object a(Object obj) {
            this.f39466a = obj;
            this.f39467b |= BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            return i.a(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(java.lang.Exception r7, kotlin.c.d<?> r8) {
        /*
            r0 = r8
            boolean r0 = r0 instanceof retrofit2.i.h
            if (r0 == 0) goto L_0x0026
            r0 = r8
            retrofit2.i$h r0 = (retrofit2.i.h) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f39467b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0026
            r0 = r9
            r1 = r9
            int r1 = r1.f39467b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f39467b = r1
            r0 = r9
            r8 = r0
            goto L_0x002f
        L_0x0026:
            retrofit2.i$h r0 = new retrofit2.i$h
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            r8 = r0
        L_0x002f:
            r0 = r8
            java.lang.Object r0 = r0.f39466a
            r10 = r0
            kotlin.c.a.a r0 = kotlin.c.a.a.COROUTINE_SUSPENDED
            r9 = r0
            r0 = r8
            int r0 = r0.f39467b
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x005a
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L_0x0050
            r0 = r10
            kotlin.p.a(r0)
            goto L_0x009d
        L_0x0050:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x005a:
            r0 = r10
            kotlin.p.a(r0)
            r0 = r8
            r1 = r7
            r0.f39468c = r1
            r0 = r8
            r1 = 1
            r0.f39467b = r1
            r0 = r8
            kotlin.c.d r0 = (kotlin.c.d) r0
            r8 = r0
            kotlinx.coroutines.af r0 = kotlinx.coroutines.az.a()
            r1 = r8
            kotlin.c.f r1 = r1.b()
            retrofit2.i$g r2 = new retrofit2.i$g
            r3 = r2
            r4 = r8
            r5 = r7
            r3.<init>(r4, r5)
            java.lang.Runnable r2 = (java.lang.Runnable) r2
            r0.a(r1, r2)
            kotlin.c.a.a r0 = kotlin.c.a.a.COROUTINE_SUSPENDED
            r7 = r0
            r0 = r7
            kotlin.c.a.a r1 = kotlin.c.a.a.COROUTINE_SUSPENDED
            if (r0 != r1) goto L_0x0096
            r0 = r8
            java.lang.String r1 = "frame"
            kotlin.jvm.internal.p.d(r0, r1)
        L_0x0096:
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L_0x009d
            r0 = r9
            return r0
        L_0x009d:
            kotlin.v r0 = kotlin.v.f38654a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.i.a(java.lang.Exception, kotlin.c.d):java.lang.Object");
    }
}
