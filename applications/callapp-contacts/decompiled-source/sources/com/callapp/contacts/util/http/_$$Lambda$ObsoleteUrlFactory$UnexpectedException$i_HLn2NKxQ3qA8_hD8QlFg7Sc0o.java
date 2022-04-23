package com.callapp.contacts.util.http;

import com.callapp.contacts.util.http.-$;
import com.callapp.contacts.util.http.ObsoleteUrlFactory;
import okhttp3.Interceptor;
import okhttp3.Response;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/_$$Lambda$ObsoleteUrlFactory$UnexpectedException$i_HLn2NKxQ3qA8_hD8QlFg7Sc0o.class */
public final /* synthetic */ class _$$Lambda$ObsoleteUrlFactory$UnexpectedException$i_HLn2NKxQ3qA8_hD8QlFg7Sc0o implements Interceptor {
    public static final /* synthetic */ -$.Lambda.ObsoleteUrlFactory.UnexpectedException.i_HLn2NKxQ3qA8-hD8QlFg7Sc0o INSTANCE = new _$$Lambda$ObsoleteUrlFactory$UnexpectedException$i_HLn2NKxQ3qA8_hD8QlFg7Sc0o();

    private /* synthetic */ _$$Lambda$ObsoleteUrlFactory$UnexpectedException$i_HLn2NKxQ3qA8_hD8QlFg7Sc0o() {
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        Response a2;
        a2 = ObsoleteUrlFactory.UnexpectedException.a(chain);
        return a2;
    }
}
