package io.bidmachine.models;

import io.bidmachine.models.RequestParams;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/models/RequestParams.class */
public abstract class RequestParams<SelfType extends RequestParams<SelfType>> {
    public static <T extends RequestParams<T>> T resolveParams(T t, T t2) {
        if (t == null) {
            return t2;
        }
        if (t2 != null) {
            t.merge(t2);
        }
        return t;
    }

    public abstract void merge(SelfType selftype);
}
