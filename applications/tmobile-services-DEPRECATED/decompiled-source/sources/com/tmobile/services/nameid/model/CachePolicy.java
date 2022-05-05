package com.tmobile.services.nameid.model;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018��*\u0004\b��\u0010\u00012\u00020\u0002J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028��H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/tmobile/services/nameid/model/CachePolicy;", "T", "Lkotlin/Any;", "record", "", "isValid", "(Ljava/lang/Object;)Z", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/CachePolicy.class */
public interface CachePolicy<T> {
    boolean isValid(T t);
}
