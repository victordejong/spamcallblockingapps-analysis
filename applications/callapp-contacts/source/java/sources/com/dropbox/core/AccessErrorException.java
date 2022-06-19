package com.dropbox.core;

import com.dropbox.core.p265v2.auth.C8665a;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/AccessErrorException.class */
public class AccessErrorException extends DbxException {

    /* renamed from: a */
    private final C8665a f30407a;

    public AccessErrorException(String str, String str2, C8665a c8665a) {
        super(str, str2);
        this.f30407a = c8665a;
    }
}
