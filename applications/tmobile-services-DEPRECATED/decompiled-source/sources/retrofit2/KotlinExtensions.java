package retrofit2;

import java.lang.reflect.Method;
import kotlin.KotlinNullPointerException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0003\u001a'\u0010\u0003\u001a\u00028��\"\b\b��\u0010\u0001*\u00020��*\b\u0012\u0004\u0012\u00028��0\u0002H\u0086@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004\u001a+\u0010\u0003\u001a\u0004\u0018\u00018��\"\b\b��\u0010\u0001*\u00020��*\n\u0012\u0006\u0012\u0004\u0018\u00018��0\u0002H\u0087@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0004\u001a)\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028��0\u0006\"\u0004\b��\u0010\u0001*\b\u0012\u0004\u0012\u00028��0\u0002H\u0086@ø\u0001��¢\u0006\u0004\b\u0007\u0010\u0004\u001a\u001c\u0010\t\u001a\u00028��\"\u0006\b��\u0010\u0001\u0018\u0001*\u00020\bH\u0086\b¢\u0006\u0004\b\t\u0010\n\u001a\u001b\u0010\u000e\u001a\u00020\r*\u00060\u000bj\u0002`\fH\u0080@ø\u0001��¢\u0006\u0004\b\u000e\u0010\u000f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"", "T", "Lretrofit2/Call;", "await", "(Lretrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitNullable", "Lretrofit2/Response;", "awaitResponse", "Lretrofit2/Retrofit;", "create", "(Lretrofit2/Retrofit;)Ljava/lang/Object;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "", "suspendAndThrow", "(Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "retrofit"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@JvmName
/* loaded from: classes2-dex2jar.jar:retrofit2/KotlinExtensions.class */
public final class KotlinExtensions {
    @Nullable
    public static final <T> Object await(@NotNull Call<T> call, @NotNull Continuation<? super T> continuation) {
        Continuation c;
        Object d;
        c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(continuation);
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(c, 1);
        cancellableContinuationImpl.mo1351p(new C2459x19835f10(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$2$2
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<T> call2, @NotNull Throwable t) {
                Intrinsics.m1829f(call2, "call");
                Intrinsics.m1829f(t, "t");
                CancellableContinuation cancellableContinuation = CancellableContinuation.this;
                Result.Companion companion = Result.f20418g;
                Object a = ResultKt.m2473a(t);
                Result.m2481b(a);
                cancellableContinuation.resumeWith(a);
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<T> call2, @NotNull Response<T> response) {
                Intrinsics.m1829f(call2, "call");
                Intrinsics.m1829f(response, "response");
                if (response.isSuccessful()) {
                    Object body = response.body();
                    if (body == null) {
                        Object tag = call2.request().tag(Invocation.class);
                        if (tag != null) {
                            Intrinsics.m1833b(tag, "call.request().tag(Invocation::class.java)!!");
                            Method method = ((Invocation) tag).method();
                            StringBuilder sb = new StringBuilder();
                            sb.append("Response from ");
                            Intrinsics.m1833b(method, "method");
                            Class<?> declaringClass = method.getDeclaringClass();
                            Intrinsics.m1833b(declaringClass, "method.declaringClass");
                            sb.append(declaringClass.getName());
                            sb.append('.');
                            sb.append(method.getName());
                            sb.append(" was null but response body type was declared as non-null");
                            KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException(sb.toString());
                            CancellableContinuation cancellableContinuation = CancellableContinuation.this;
                            Result.Companion companion = Result.f20418g;
                            Object a = ResultKt.m2473a(kotlinNullPointerException);
                            Result.m2481b(a);
                            cancellableContinuation.resumeWith(a);
                            return;
                        }
                        Intrinsics.m1820o();
                        throw null;
                    }
                    CancellableContinuation cancellableContinuation2 = CancellableContinuation.this;
                    Result.Companion companion2 = Result.f20418g;
                    Result.m2481b(body);
                    cancellableContinuation2.resumeWith(body);
                    return;
                }
                CancellableContinuation cancellableContinuation3 = CancellableContinuation.this;
                HttpException httpException = new HttpException(response);
                Result.Companion companion3 = Result.f20418g;
                Object a2 = ResultKt.m2473a(httpException);
                Result.m2481b(a2);
                cancellableContinuation3.resumeWith(a2);
            }
        });
        Object t = cancellableContinuationImpl.m1347t();
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        if (t == d) {
            DebugProbesKt.m1904c(continuation);
        }
        return t;
    }

    @JvmName
    @Nullable
    public static final <T> Object awaitNullable(@NotNull Call<T> call, @NotNull Continuation<? super T> continuation) {
        Continuation c;
        Object d;
        c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(continuation);
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(c, 1);
        cancellableContinuationImpl.mo1351p(new C2460x19835f11(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$4$2
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<T> call2, @NotNull Throwable t) {
                Intrinsics.m1829f(call2, "call");
                Intrinsics.m1829f(t, "t");
                CancellableContinuation cancellableContinuation = CancellableContinuation.this;
                Result.Companion companion = Result.f20418g;
                Object a = ResultKt.m2473a(t);
                Result.m2481b(a);
                cancellableContinuation.resumeWith(a);
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<T> call2, @NotNull Response<T> response) {
                Intrinsics.m1829f(call2, "call");
                Intrinsics.m1829f(response, "response");
                if (response.isSuccessful()) {
                    CancellableContinuation cancellableContinuation = CancellableContinuation.this;
                    Object body = response.body();
                    Result.Companion companion = Result.f20418g;
                    Result.m2481b(body);
                    cancellableContinuation.resumeWith(body);
                    return;
                }
                CancellableContinuation cancellableContinuation2 = CancellableContinuation.this;
                HttpException httpException = new HttpException(response);
                Result.Companion companion2 = Result.f20418g;
                Object a = ResultKt.m2473a(httpException);
                Result.m2481b(a);
                cancellableContinuation2.resumeWith(a);
            }
        });
        Object t = cancellableContinuationImpl.m1347t();
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        if (t == d) {
            DebugProbesKt.m1904c(continuation);
        }
        return t;
    }

    @Nullable
    public static final <T> Object awaitResponse(@NotNull Call<T> call, @NotNull Continuation<? super Response<T>> continuation) {
        Continuation c;
        Object d;
        c = IntrinsicsKt__IntrinsicsJvmKt.m1921c(continuation);
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(c, 1);
        cancellableContinuationImpl.mo1351p(new C2461xc95e9eb1(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$awaitResponse$2$2
            @Override // retrofit2.Callback
            public void onFailure(@NotNull Call<T> call2, @NotNull Throwable t) {
                Intrinsics.m1829f(call2, "call");
                Intrinsics.m1829f(t, "t");
                CancellableContinuation cancellableContinuation = CancellableContinuation.this;
                Result.Companion companion = Result.f20418g;
                Object a = ResultKt.m2473a(t);
                Result.m2481b(a);
                cancellableContinuation.resumeWith(a);
            }

            @Override // retrofit2.Callback
            public void onResponse(@NotNull Call<T> call2, @NotNull Response<T> response) {
                Intrinsics.m1829f(call2, "call");
                Intrinsics.m1829f(response, "response");
                CancellableContinuation cancellableContinuation = CancellableContinuation.this;
                Result.Companion companion = Result.f20418g;
                Result.m2481b(response);
                cancellableContinuation.resumeWith(response);
            }
        });
        Object t = cancellableContinuationImpl.m1347t();
        d = IntrinsicsKt__IntrinsicsKt.m1920d();
        if (t == d) {
            DebugProbesKt.m1904c(continuation);
        }
        return t;
    }

    public static final /* synthetic */ <T> T create(@NotNull Retrofit create) {
        Intrinsics.m1829f(create, "$this$create");
        Intrinsics.m1825j(4, "T");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object suspendAndThrow(@org.jetbrains.annotations.NotNull final java.lang.Exception r7, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<?> r8) {
        /*
            r0 = r8
            boolean r0 = r0 instanceof retrofit2.KotlinExtensions$suspendAndThrow$1
            if (r0 == 0) goto L_0x0025
            r0 = r8
            retrofit2.KotlinExtensions$suspendAndThrow$1 r0 = (retrofit2.KotlinExtensions$suspendAndThrow$1) r0
            r9 = r0
            r0 = r9
            int r0 = r0.label
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0025
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.label = r1
            r0 = r9
            r8 = r0
            goto L_0x002e
        L_0x0025:
            retrofit2.KotlinExtensions$suspendAndThrow$1 r0 = new retrofit2.KotlinExtensions$suspendAndThrow$1
            r1 = r0
            r2 = r8
            r1.<init>(r2)
            r8 = r0
        L_0x002e:
            r0 = r8
            java.lang.Object r0 = r0.result
            r9 = r0
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            r11 = r0
            r0 = r8
            int r0 = r0.label
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x005f
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L_0x0055
            r0 = r8
            java.lang.Object r0 = r0.L$0
            java.lang.Exception r0 = (java.lang.Exception) r0
            r7 = r0
            r0 = r9
            kotlin.ResultKt.m2472b(r0)
            goto L_0x009a
        L_0x0055:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x005f:
            r0 = r9
            kotlin.ResultKt.m2472b(r0)
            r0 = r8
            r1 = r7
            r0.L$0 = r1
            r0 = r8
            r1 = 1
            r0.label = r1
            kotlinx.coroutines.CoroutineDispatcher r0 = kotlinx.coroutines.Dispatchers.m1268a()
            r1 = r8
            kotlin.coroutines.CoroutineContext r1 = r1.getContext()
            retrofit2.KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1 r2 = new retrofit2.KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1
            r3 = r2
            r4 = r8
            r5 = r7
            r3.<init>()
            r0.mo241t(r1, r2)
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            r7 = r0
            r0 = r7
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            if (r0 != r1) goto L_0x0091
            r0 = r8
            kotlin.coroutines.jvm.internal.DebugProbesKt.m1904c(r0)
        L_0x0091:
            r0 = r7
            r1 = r11
            if (r0 != r1) goto L_0x009a
            r0 = r11
            return r0
        L_0x009a:
            kotlin.Unit r0 = kotlin.Unit.f20447a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: retrofit2.KotlinExtensions.suspendAndThrow(java.lang.Exception, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
