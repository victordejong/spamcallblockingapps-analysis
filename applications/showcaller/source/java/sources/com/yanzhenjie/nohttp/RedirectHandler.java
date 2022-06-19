package com.yanzhenjie.nohttp;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/RedirectHandler.class */
public interface RedirectHandler {
    boolean isDisallowedRedirect(Headers headers);

    BasicRequest<?> onRedirect(BasicRequest<?> basicRequest, Headers headers);
}
