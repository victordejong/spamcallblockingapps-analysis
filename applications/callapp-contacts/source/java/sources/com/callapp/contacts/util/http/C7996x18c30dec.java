package com.callapp.contacts.util.http;

import com.callapp.contacts.util.http.-$;
import com.callapp.contacts.util.http.ObsoleteUrlFactory;
import okhttp3.Interceptor;
import okhttp3.Response;
/* renamed from: com.callapp.contacts.util.http._$$Lambda$ObsoleteUrlFactory$UnexpectedException$i_HLn2NKxQ3qA8_hD8QlFg7Sc0o */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/_$$Lambda$ObsoleteUrlFactory$UnexpectedException$i_HLn2NKxQ3qA8_hD8QlFg7Sc0o.class */
public final /* synthetic */ class C7996x18c30dec implements Interceptor {
    public static final /* synthetic */ -$.Lambda.ObsoleteUrlFactory.UnexpectedException.i_HLn2NKxQ3qA8-hD8QlFg7Sc0o INSTANCE = new C7996x18c30dec();

    private /* synthetic */ C7996x18c30dec() {
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        Response m26938a;
        m26938a = ObsoleteUrlFactory.UnexpectedException.m26938a(chain);
        return m26938a;
    }
}
