package com.dropbox.core;

import com.dropbox.core.v2.auth.a;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/AccessErrorException.class */
public class AccessErrorException extends DbxException {

    /* renamed from: a  reason: collision with root package name */
    private final a f17677a;

    public AccessErrorException(String str, String str2, a aVar) {
        super(str, str2);
        this.f17677a = aVar;
    }
}
