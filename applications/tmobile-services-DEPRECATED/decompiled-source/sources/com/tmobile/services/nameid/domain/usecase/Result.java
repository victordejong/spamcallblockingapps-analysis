package com.tmobile.services.nameid.domain.usecase;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0016\u0018��*\u0004\b��\u0010\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0002\u001a\u00028��¢\u0006\u0004\b\n\u0010\u000bR\u0019\u0010\u0002\u001a\u00028��8\u0006@\u0006¢\u0006\f\n\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005R\u0019\u0010\u0007\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0007\u0010\t¨\u0006\f"}, d2 = {"Lcom/tmobile/services/nameid/domain/usecase/Result;", "T", "data", "Ljava/lang/Object;", "getData", "()Ljava/lang/Object;", "", "isSuccess", "Z", "()Z", "<init>", "(ZLjava/lang/Object;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/domain/usecase/Result.class */
public class Result<T> {

    /* renamed from: a */
    private final T f13477a;

    public Result(boolean z, T t) {
        this.f13477a = t;
    }

    /* renamed from: a */
    public final T m6583a() {
        return this.f13477a;
    }
}
