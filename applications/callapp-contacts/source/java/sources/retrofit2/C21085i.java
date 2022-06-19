package retrofit2;

import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.lang.reflect.Method;
import kotlin.C18539o;
import kotlin.C18542p;
import kotlin.C20128v;
import kotlin.KotlinNullPointerException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.p522a.C18308b;
import kotlin.p521c.p523b.p524a.AbstractC18318c;
import kotlin.p521c.p523b.p524a.AbstractC18320e;
import kotlinx.coroutines.AbstractC20308n;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a%\u0010��\u001a\u0002H\u0001\"\b\b��\u0010\u0001*\u00020\u0002*\b\u0012\u0004\u0012\u0002H\u00010\u0003H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0004\u001a+\u0010��\u001a\u0004\u0018\u0001H\u0001\"\b\b��\u0010\u0001*\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0003H\u0087@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0004\u001a'\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0007\"\u0004\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0003H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0004\u001a\u001a\u0010\b\u001a\u0002H\u0001\"\u0006\b��\u0010\u0001\u0018\u0001*\u00020\tH\u0086\b¢\u0006\u0002\u0010\n\u001a\u0019\u0010\u000b\u001a\u00020\f*\u00060\rj\u0002`\u000eH\u0080@ø\u0001��¢\u0006\u0002\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, m4298d2 = {"await", "T", "", "Lretrofit2/Call;", "(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitNullable", "awaitResponse", "Lretrofit2/Response;", "create", "Lretrofit2/Retrofit;", "(Lretrofit2/Retrofit;)Ljava/lang/Object;", "suspendAndThrow", "", "Ljava/lang/Exception;", "Lkotlin/Exception;", "(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrofit"}, m4297k = 2, m4296mv = {1, 1, 15})
/* renamed from: retrofit2.i */
/* loaded from: classes5-dex2jar.jar:retrofit2/i.class */
public final class C21085i {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n¢\u0006\u0002\b\u0006¨\u0006\u0007"}, m4298d2 = {"<anonymous>", "", "T", "", "it", "", "invoke", "retrofit2/KotlinExtensions$await$2$1"}, m4297k = 3, m4296mv = {1, 1, 15})
    /* renamed from: retrofit2.i$a */
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$a.class */
    static final class C21086a extends AbstractC18526r implements Function1<Throwable, C20128v> {

        /* renamed from: a */
        final /* synthetic */ Call f67698a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21086a(Call call) {
            super(1);
            this.f67698a = call;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(Throwable th) {
            this.f67698a.mo53b();
            return C20128v.f66529a;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n¢\u0006\u0002\b\u0006¨\u0006\u0007"}, m4298d2 = {"<anonymous>", "", "T", "", "it", "", "invoke", "retrofit2/KotlinExtensions$await$4$1"}, m4297k = 3, m4296mv = {1, 1, 15})
    /* renamed from: retrofit2.i$b */
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$b.class */
    static final class C21087b extends AbstractC18526r implements Function1<Throwable, C20128v> {

        /* renamed from: a */
        final /* synthetic */ Call f67699a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21087b(Call call) {
            super(1);
            this.f67699a = call;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(Throwable th) {
            this.f67699a.mo53b();
            return C20128v.f66529a;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J$\u0010\b\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\nH\u0016¨\u0006\u000b"}, m4298d2 = {"retrofit2/KotlinExtensions$await$2$2", "Lretrofit2/Callback;", "onFailure", "", "call", "Lretrofit2/Call;", "t", "", "onResponse", Payload.RESPONSE, "Lretrofit2/Response;", "retrofit"}, m4297k = 1, m4296mv = {1, 1, 15})
    /* renamed from: retrofit2.i$c */
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$c.class */
    public static final class C21088c implements AbstractC21067c<T> {

        /* renamed from: a */
        final /* synthetic */ AbstractC20308n f67700a;

        public C21088c(AbstractC20308n abstractC20308n) {
            this.f67700a = abstractC20308n;
        }

        @Override // retrofit2.AbstractC21067c
        public final void onFailure(Call<T> call, Throwable t) {
            C18524p.m3841c(call, "call");
            C18524p.m3841c(t, "t");
            AbstractC20308n abstractC20308n = this.f67700a;
            C18539o.C18540a c18540a = C18539o.f63626a;
            abstractC20308n.mo786b(C18539o.m3836d(C18542p.m3834a(t)));
        }

        @Override // retrofit2.AbstractC21067c
        public final void onResponse(Call<T> call, Response<T> response) {
            C18524p.m3841c(call, "call");
            C18524p.m3841c(response, "response");
            if (!response.m114a()) {
                AbstractC20308n abstractC20308n = this.f67700a;
                HttpException httpException = new HttpException(response);
                C18539o.C18540a c18540a = C18539o.f63626a;
                abstractC20308n.mo786b(C18539o.m3836d(C18542p.m3834a((Throwable) httpException)));
                return;
            }
            Object m111b = response.m111b();
            if (m111b != null) {
                AbstractC20308n abstractC20308n2 = this.f67700a;
                C18539o.C18540a c18540a2 = C18539o.f63626a;
                abstractC20308n2.mo786b(C18539o.m3836d(m111b));
                return;
            }
            Object tag = call.mo50e().tag(C21084h.class);
            if (tag == null) {
                C18524p.m3855a();
            }
            C18524p.m3849a(tag, "call.request().tag(Invocation::class.java)!!");
            Method method = ((C21084h) tag).m59a();
            StringBuilder sb = new StringBuilder("Response from ");
            C18524p.m3849a((Object) method, "method");
            Class<?> declaringClass = method.getDeclaringClass();
            C18524p.m3849a((Object) declaringClass, "method.declaringClass");
            sb.append(declaringClass.getName());
            sb.append('.');
            sb.append(method.getName());
            sb.append(" was null but response body type was declared as non-null");
            KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException(sb.toString());
            AbstractC20308n abstractC20308n3 = this.f67700a;
            C18539o.C18540a c18540a3 = C18539o.f63626a;
            abstractC20308n3.mo786b(C18539o.m3836d(C18542p.m3834a((Throwable) kotlinNullPointerException)));
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u0001J \u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J(\u0010\b\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u00052\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018��0\nH\u0016¨\u0006\u000b"}, m4298d2 = {"retrofit2/KotlinExtensions$await$4$2", "Lretrofit2/Callback;", "onFailure", "", "call", "Lretrofit2/Call;", "t", "", "onResponse", Payload.RESPONSE, "Lretrofit2/Response;", "retrofit"}, m4297k = 1, m4296mv = {1, 1, 15})
    /* renamed from: retrofit2.i$d */
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$d.class */
    public static final class C21089d implements AbstractC21067c<T> {

        /* renamed from: a */
        final /* synthetic */ AbstractC20308n f67701a;

        public C21089d(AbstractC20308n abstractC20308n) {
            this.f67701a = abstractC20308n;
        }

        @Override // retrofit2.AbstractC21067c
        public final void onFailure(Call<T> call, Throwable t) {
            C18524p.m3841c(call, "call");
            C18524p.m3841c(t, "t");
            AbstractC20308n abstractC20308n = this.f67701a;
            C18539o.C18540a c18540a = C18539o.f63626a;
            abstractC20308n.mo786b(C18539o.m3836d(C18542p.m3834a(t)));
        }

        @Override // retrofit2.AbstractC21067c
        public final void onResponse(Call<T> call, Response<T> response) {
            C18524p.m3841c(call, "call");
            C18524p.m3841c(response, "response");
            if (response.m114a()) {
                AbstractC20308n abstractC20308n = this.f67701a;
                Object m111b = response.m111b();
                C18539o.C18540a c18540a = C18539o.f63626a;
                abstractC20308n.mo786b(C18539o.m3836d(m111b));
                return;
            }
            AbstractC20308n abstractC20308n2 = this.f67701a;
            HttpException httpException = new HttpException(response);
            C18539o.C18540a c18540a2 = C18539o.f63626a;
            abstractC20308n2.mo786b(C18539o.m3836d(C18542p.m3834a((Throwable) httpException)));
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n¢\u0006\u0002\b\u0005¨\u0006\u0006"}, m4298d2 = {"<anonymous>", "", "T", "it", "", "invoke", "retrofit2/KotlinExtensions$awaitResponse$2$1"}, m4297k = 3, m4296mv = {1, 1, 15})
    /* renamed from: retrofit2.i$e */
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$e.class */
    static final class C21090e extends AbstractC18526r implements Function1<Throwable, C20128v> {

        /* renamed from: a */
        final /* synthetic */ Call f67702a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21090e(Call call) {
            super(1);
            this.f67702a = call;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(Throwable th) {
            this.f67702a.mo53b();
            return C20128v.f66529a;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J$\u0010\b\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\nH\u0016¨\u0006\u000b"}, m4298d2 = {"retrofit2/KotlinExtensions$awaitResponse$2$2", "Lretrofit2/Callback;", "onFailure", "", "call", "Lretrofit2/Call;", "t", "", "onResponse", Payload.RESPONSE, "Lretrofit2/Response;", "retrofit"}, m4297k = 1, m4296mv = {1, 1, 15})
    /* renamed from: retrofit2.i$f */
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$f.class */
    public static final class C21091f implements AbstractC21067c<T> {

        /* renamed from: a */
        final /* synthetic */ AbstractC20308n f67703a;

        public C21091f(AbstractC20308n abstractC20308n) {
            this.f67703a = abstractC20308n;
        }

        @Override // retrofit2.AbstractC21067c
        public final void onFailure(Call<T> call, Throwable t) {
            C18524p.m3841c(call, "call");
            C18524p.m3841c(t, "t");
            AbstractC20308n abstractC20308n = this.f67703a;
            C18539o.C18540a c18540a = C18539o.f63626a;
            abstractC20308n.mo786b(C18539o.m3836d(C18542p.m3834a(t)));
        }

        @Override // retrofit2.AbstractC21067c
        public final void onResponse(Call<T> call, Response<T> response) {
            C18524p.m3841c(call, "call");
            C18524p.m3841c(response, "response");
            AbstractC20308n abstractC20308n = this.f67703a;
            C18539o.C18540a c18540a = C18539o.f63626a;
            abstractC20308n.mo786b(C18539o.m3836d(response));
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\n\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0003"}, m4298d2 = {"<anonymous>", "", "run", "retrofit2/KotlinExtensions$suspendAndThrow$2$1"}, m4297k = 3, m4296mv = {1, 1, 15})
    /* renamed from: retrofit2.i$g */
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$g.class */
    public static final class RunnableC21092g implements Runnable {

        /* renamed from: a */
        final /* synthetic */ AbstractC18332d f67704a;

        /* renamed from: b */
        final /* synthetic */ Exception f67705b;

        RunnableC21092g(AbstractC18332d abstractC18332d, Exception exc) {
            this.f67704a = abstractC18332d;
            this.f67705b = exc;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractC18332d a = C18308b.m4100a(this.f67704a);
            Exception exc = this.f67705b;
            C18539o.C18540a c18540a = C18539o.f63626a;
            a.mo786b(C18539o.m3836d(C18542p.m3834a((Throwable) exc)));
        }
    }

    @AbstractC18320e(m4089b = "KotlinExtensions.kt", m4088c = {113}, m4087d = "suspendAndThrow", m4086e = "retrofit2.KotlinExtensions")
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0001\u0010��\u001a\u0004\u0018\u00010\u0001*\u00060\u0002j\u0002`\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0080@"}, m4298d2 = {"suspendAndThrow", "", "Ljava/lang/Exception;", "Lkotlin/Exception;", "continuation", "Lkotlin/coroutines/Continuation;", ""}, m4297k = 3, m4296mv = {1, 1, 15})
    /* renamed from: retrofit2.i$h */
    /* loaded from: classes5-dex2jar.jar:retrofit2/i$h.class */
    public static final class C21093h extends AbstractC18318c {

        /* renamed from: a */
        /* synthetic */ Object f67706a;

        /* renamed from: b */
        int f67707b;

        /* renamed from: c */
        Object f67708c;

        C21093h(AbstractC18332d abstractC18332d) {
            super(abstractC18332d);
        }

        @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
        /* renamed from: a */
        public final Object mo57a(Object obj) {
            this.f67706a = obj;
            this.f67707b |= BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
            return C21085i.m58a(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m58a(java.lang.Exception r7, kotlin.p521c.AbstractC18332d<?> r8) {
        /*
            r0 = r8
            boolean r0 = r0 instanceof retrofit2.C21085i.C21093h
            if (r0 == 0) goto L26
            r0 = r8
            retrofit2.i$h r0 = (retrofit2.C21085i.C21093h) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f67707b
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L26
            r0 = r9
            r1 = r9
            int r1 = r1.f67707b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f67707b = r1
            r0 = r9
            r8 = r0
            goto L2f
        L26:
            retrofit2.i$h r0 = new retrofit2.i$h
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            r8 = r0
        L2f:
            r0 = r8
            java.lang.Object r0 = r0.f67706a
            r10 = r0
            kotlin.c.a.a r0 = kotlin.p521c.p522a.EnumC18307a.COROUTINE_SUSPENDED
            r9 = r0
            r0 = r8
            int r0 = r0.f67707b
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L5a
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r10
            kotlin.C18542p.m3835a(r0)
            goto L9d
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5a:
            r0 = r10
            kotlin.C18542p.m3835a(r0)
            r0 = r8
            r1 = r7
            r0.f67708c = r1
            r0 = r8
            r1 = 1
            r0.f67707b = r1
            r0 = r8
            kotlin.c.d r0 = (kotlin.p521c.AbstractC18332d) r0
            r8 = r0
            kotlinx.coroutines.af r0 = kotlinx.coroutines.C20172az.m1061a()
            r1 = r8
            kotlin.c.f r1 = r1.mo787b()
            retrofit2.i$g r2 = new retrofit2.i$g
            r3 = r2
            r4 = r8
            r5 = r7
            r3.<init>(r4, r5)
            java.lang.Runnable r2 = (java.lang.Runnable) r2
            r0.mo763a(r1, r2)
            kotlin.c.a.a r0 = kotlin.p521c.p522a.EnumC18307a.COROUTINE_SUSPENDED
            r7 = r0
            r0 = r7
            kotlin.c.a.a r1 = kotlin.p521c.p522a.EnumC18307a.COROUTINE_SUSPENDED
            if (r0 != r1) goto L96
            r0 = r8
            java.lang.String r1 = "frame"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
        L96:
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L9d
            r0 = r9
            return r0
        L9d:
            kotlin.v r0 = kotlin.C20128v.f66529a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.C21085i.m58a(java.lang.Exception, kotlin.c.d):java.lang.Object");
    }
}
