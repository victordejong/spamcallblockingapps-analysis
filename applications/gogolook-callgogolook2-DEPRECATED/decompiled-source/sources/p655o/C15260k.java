package p655o;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.appsflyer.internal.referrer.Payload;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import p626l.C14915d;
import p626l.C14979k;
import p626l.C14982l;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15059b;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.AbstractC15068d;
import p626l.p634w.p636k.p637a.AbstractC15070f;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��.\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a%\u0010��\u001a\u0002H\u0001\"\b\b��\u0010\u0001*\u00020\u0002*\b\u0012\u0004\u0012\u0002H\u00010\u0003H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0004\u001a+\u0010��\u001a\u0004\u0018\u0001H\u0001\"\b\b��\u0010\u0001*\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0003H\u0087@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0004\u001a+\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0007\"\b\b��\u0010\u0001*\u00020\u0002*\b\u0012\u0004\u0012\u0002H\u00010\u0003H\u0086@ø\u0001��¢\u0006\u0002\u0010\u0004\u001a\u001a\u0010\b\u001a\u0002H\u0001\"\u0006\b��\u0010\u0001\u0018\u0001*\u00020\tH\u0086\b¢\u0006\u0002\u0010\n\u001a\u0019\u0010\u000b\u001a\u00020\f*\u00060\rj\u0002`\u000eH\u0080@ø\u0001��¢\u0006\u0002\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, m815d2 = {"await", ExifInterface.GPS_DIRECTION_TRUE, "", "Lretrofit2/Call;", "(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitNullable", "awaitResponse", "Lretrofit2/Response;", "create", "Lretrofit2/Retrofit;", "(Lretrofit2/Retrofit;)Ljava/lang/Object;", "suspendAndThrow", "", "Ljava/lang/Exception;", "Lkotlin/Exception;", "(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrofit"}, m814k = 2, m813mv = {1, 1, 13})
/* renamed from: o.k */
/* loaded from: classes3-dex2jar.jar:o/k.class */
public final class C15260k {

    /* renamed from: o.k$a */
    /* loaded from: classes3-dex2jar.jar:o/k$a.class */
    public static final class C15261a extends AbstractC15150l implements AbstractC15118l<Throwable, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15235b f33279a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15261a(AbstractC15235b bVar) {
            super(1);
            this.f33279a = bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Throwable th) {
            invoke2(th);
            return C14989s.f33022a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            this.f33279a.cancel();
        }
    }

    /* renamed from: o.k$b */
    /* loaded from: classes3-dex2jar.jar:o/k$b.class */
    public static final class C15262b extends AbstractC15150l implements AbstractC15118l<Throwable, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15235b f33280a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15262b(AbstractC15235b bVar) {
            super(1);
            this.f33280a = bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Throwable th) {
            invoke2(th);
            return C14989s.f33022a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            this.f33280a.cancel();
        }
    }

    /* renamed from: o.k$c */
    /* loaded from: classes3-dex2jar.jar:o/k$c.class */
    public static final class C15263c implements AbstractC15238d<T> {

        /* renamed from: a */
        public final /* synthetic */ CancellableContinuation f33281a;

        public C15263c(CancellableContinuation cancellableContinuation) {
            this.f33281a = cancellableContinuation;
        }

        @Override // p655o.AbstractC15238d
        public void onFailure(AbstractC15235b<T> bVar, Throwable th) {
            C15149k.m377b(bVar, NotificationCompat.CATEGORY_CALL);
            C15149k.m377b(th, "t");
            CancellableContinuation cancellableContinuation = this.f33281a;
            C14979k.C14980a aVar = C14979k.f33013a;
            Object a = C14982l.m652a(th);
            C14979k.m657a(a);
            cancellableContinuation.resumeWith(a);
        }

        @Override // p655o.AbstractC15238d
        public void onResponse(AbstractC15235b<T> bVar, C15299r<T> rVar) {
            C15149k.m377b(bVar, NotificationCompat.CATEGORY_CALL);
            C15149k.m377b(rVar, Payload.RESPONSE);
            if (rVar.m90d()) {
                Object a = rVar.m95a();
                if (a == null) {
                    Object tag = bVar.request().tag(C15259j.class);
                    if (tag != null) {
                        C15149k.m383a(tag, "call.request().tag(Invocation::class.java)!!");
                        Method a2 = ((C15259j) tag).m146a();
                        StringBuilder sb = new StringBuilder();
                        sb.append("Response from ");
                        C15149k.m383a((Object) a2, "method");
                        Class<?> declaringClass = a2.getDeclaringClass();
                        C15149k.m383a((Object) declaringClass, "method.declaringClass");
                        sb.append(declaringClass.getName());
                        sb.append('.');
                        sb.append(a2.getName());
                        sb.append(" was null but response body type was declared as non-null");
                        C14915d dVar = new C14915d(sb.toString());
                        CancellableContinuation cancellableContinuation = this.f33281a;
                        C14979k.C14980a aVar = C14979k.f33013a;
                        Object a3 = C14982l.m652a((Throwable) dVar);
                        C14979k.m657a(a3);
                        cancellableContinuation.resumeWith(a3);
                        return;
                    }
                    C15149k.m378b();
                    throw null;
                }
                CancellableContinuation cancellableContinuation2 = this.f33281a;
                C14979k.C14980a aVar2 = C14979k.f33013a;
                C14979k.m657a(a);
                cancellableContinuation2.resumeWith(a);
                return;
            }
            CancellableContinuation cancellableContinuation3 = this.f33281a;
            C15254h hVar = new C15254h(rVar);
            C14979k.C14980a aVar3 = C14979k.f33013a;
            Object a4 = C14982l.m652a((Throwable) hVar);
            C14979k.m657a(a4);
            cancellableContinuation3.resumeWith(a4);
        }
    }

    /* renamed from: o.k$d */
    /* loaded from: classes3-dex2jar.jar:o/k$d.class */
    public static final class C15264d implements AbstractC15238d<T> {

        /* renamed from: a */
        public final /* synthetic */ CancellableContinuation f33282a;

        public C15264d(CancellableContinuation cancellableContinuation) {
            this.f33282a = cancellableContinuation;
        }

        @Override // p655o.AbstractC15238d
        public void onFailure(AbstractC15235b<T> bVar, Throwable th) {
            C15149k.m377b(bVar, NotificationCompat.CATEGORY_CALL);
            C15149k.m377b(th, "t");
            CancellableContinuation cancellableContinuation = this.f33282a;
            C14979k.C14980a aVar = C14979k.f33013a;
            Object a = C14982l.m652a(th);
            C14979k.m657a(a);
            cancellableContinuation.resumeWith(a);
        }

        @Override // p655o.AbstractC15238d
        public void onResponse(AbstractC15235b<T> bVar, C15299r<T> rVar) {
            C15149k.m377b(bVar, NotificationCompat.CATEGORY_CALL);
            C15149k.m377b(rVar, Payload.RESPONSE);
            if (rVar.m90d()) {
                CancellableContinuation cancellableContinuation = this.f33282a;
                Object a = rVar.m95a();
                C14979k.C14980a aVar = C14979k.f33013a;
                C14979k.m657a(a);
                cancellableContinuation.resumeWith(a);
                return;
            }
            CancellableContinuation cancellableContinuation2 = this.f33282a;
            C15254h hVar = new C15254h(rVar);
            C14979k.C14980a aVar2 = C14979k.f33013a;
            Object a2 = C14982l.m652a((Throwable) hVar);
            C14979k.m657a(a2);
            cancellableContinuation2.resumeWith(a2);
        }
    }

    /* renamed from: o.k$e */
    /* loaded from: classes3-dex2jar.jar:o/k$e.class */
    public static final class C15265e extends AbstractC15150l implements AbstractC15118l<Throwable, C14989s> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15235b f33283a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15265e(AbstractC15235b bVar) {
            super(1);
            this.f33283a = bVar;
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ C14989s invoke(Throwable th) {
            invoke2(th);
            return C14989s.f33022a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            this.f33283a.cancel();
        }
    }

    /* renamed from: o.k$f */
    /* loaded from: classes3-dex2jar.jar:o/k$f.class */
    public static final class C15266f implements AbstractC15238d<T> {

        /* renamed from: a */
        public final /* synthetic */ CancellableContinuation f33284a;

        public C15266f(CancellableContinuation cancellableContinuation) {
            this.f33284a = cancellableContinuation;
        }

        @Override // p655o.AbstractC15238d
        public void onFailure(AbstractC15235b<T> bVar, Throwable th) {
            C15149k.m377b(bVar, NotificationCompat.CATEGORY_CALL);
            C15149k.m377b(th, "t");
            CancellableContinuation cancellableContinuation = this.f33284a;
            C14979k.C14980a aVar = C14979k.f33013a;
            Object a = C14982l.m652a(th);
            C14979k.m657a(a);
            cancellableContinuation.resumeWith(a);
        }

        @Override // p655o.AbstractC15238d
        public void onResponse(AbstractC15235b<T> bVar, C15299r<T> rVar) {
            C15149k.m377b(bVar, NotificationCompat.CATEGORY_CALL);
            C15149k.m377b(rVar, Payload.RESPONSE);
            CancellableContinuation cancellableContinuation = this.f33284a;
            C14979k.C14980a aVar = C14979k.f33013a;
            C14979k.m657a(rVar);
            cancellableContinuation.resumeWith(rVar);
        }
    }

    /* renamed from: o.k$g */
    /* loaded from: classes3-dex2jar.jar:o/k$g.class */
    public static final class RunnableC15267g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC15044d f33285a;

        /* renamed from: b */
        public final /* synthetic */ Exception f33286b;

        public RunnableC15267g(AbstractC15044d dVar, Exception exc) {
            this.f33285a = dVar;
            this.f33286b = exc;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractC15044d a = C15059b.m481a(this.f33285a);
            Exception exc = this.f33286b;
            C14979k.C14980a aVar = C14979k.f33013a;
            Object a2 = C14982l.m652a((Throwable) exc);
            C14979k.m657a(a2);
            a.resumeWith(a2);
        }
    }

    @AbstractC15070f(m473c = "retrofit2/KotlinExtensions", m472f = "KotlinExtensions.kt", m471l = {112, 119}, m470m = "suspendAndThrow")
    /* renamed from: o.k$h */
    /* loaded from: classes3-dex2jar.jar:o/k$h.class */
    public static final class C15268h extends AbstractC15068d {

        /* renamed from: a */
        public /* synthetic */ Object f33287a;

        /* renamed from: b */
        public int f33288b;

        /* renamed from: c */
        public Object f33289c;

        public C15268h(AbstractC15044d dVar) {
            super(dVar);
        }

        @Override // p626l.p634w.p636k.p637a.AbstractC15065a
        public final Object invokeSuspend(Object obj) {
            this.f33287a = obj;
            this.f33288b |= Integer.MIN_VALUE;
            return C15260k.m145a((Exception) null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m145a(java.lang.Exception r7, p626l.p634w.AbstractC15044d<?> r8) {
        /*
            r0 = r8
            boolean r0 = r0 instanceof p655o.C15260k.C15268h
            if (r0 == 0) goto L_0x0025
            r0 = r8
            o.k$h r0 = (p655o.C15260k.C15268h) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f33288b
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0025
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f33288b = r1
            r0 = r9
            r8 = r0
            goto L_0x002e
        L_0x0025:
            o.k$h r0 = new o.k$h
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            r8 = r0
        L_0x002e:
            r0 = r8
            java.lang.Object r0 = r0.f33287a
            r9 = r0
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r11 = r0
            r0 = r8
            int r0 = r0.f33288b
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x006a
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L_0x0060
            r0 = r8
            java.lang.Object r0 = r0.f33289c
            java.lang.Exception r0 = (java.lang.Exception) r0
            r7 = r0
            r0 = r9
            boolean r0 = r0 instanceof p626l.C14979k.C14981b
            if (r0 != 0) goto L_0x0058
            goto L_0x00a8
        L_0x0058:
            r0 = r9
            l.k$b r0 = (p626l.C14979k.C14981b) r0
            java.lang.Throwable r0 = r0.f33014a
            throw r0
        L_0x0060:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x006a:
            r0 = r9
            boolean r0 = r0 instanceof p626l.C14979k.C14981b
            if (r0 != 0) goto L_0x00ac
            r0 = r8
            r1 = r7
            r0.f33289c = r1
            r0 = r8
            r1 = 1
            r0.f33288b = r1
            kotlinx.coroutines.CoroutineDispatcher r0 = kotlinx.coroutines.Dispatchers.getDefault()
            r1 = r8
            l.w.g r1 = r1.getContext()
            o.k$g r2 = new o.k$g
            r3 = r2
            r4 = r8
            r5 = r7
            r3.<init>(r4, r5)
            r0.dispatch(r1, r2)
            java.lang.Object r0 = p626l.p634w.p635j.C15064c.m478a()
            r7 = r0
            r0 = r7
            java.lang.Object r1 = p626l.p634w.p635j.C15064c.m478a()
            if (r0 != r1) goto L_0x009f
            r0 = r8
            p626l.p634w.p636k.p637a.C15072h.m462c(r0)
        L_0x009f:
            r0 = r7
            r1 = r11
            if (r0 != r1) goto L_0x00a8
            r0 = r11
            return r0
        L_0x00a8:
            l.s r0 = p626l.C14989s.f33022a
            return r0
        L_0x00ac:
            r0 = r9
            l.k$b r0 = (p626l.C14979k.C14981b) r0
            java.lang.Throwable r0 = r0.f33014a
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p655o.C15260k.m145a(java.lang.Exception, l.w.d):java.lang.Object");
    }

    /* renamed from: a */
    public static final <T> Object m144a(AbstractC15235b<T> bVar, AbstractC15044d<? super T> dVar) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
        cancellableContinuationImpl.invokeOnCancellation(new C15261a(bVar));
        bVar.mo140a(new C15263c(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result;
    }

    /* renamed from: b */
    public static final <T> Object m143b(AbstractC15235b<T> bVar, AbstractC15044d<? super T> dVar) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
        cancellableContinuationImpl.invokeOnCancellation(new C15262b(bVar));
        bVar.mo140a(new C15264d(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result;
    }

    /* renamed from: c */
    public static final <T> Object m142c(AbstractC15235b<T> bVar, AbstractC15044d<? super C15299r<T>> dVar) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(C15059b.m481a(dVar), 1);
        cancellableContinuationImpl.invokeOnCancellation(new C15265e(bVar));
        bVar.mo140a(new C15266f(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result;
    }
}
