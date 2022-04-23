package com.dropbox.core;

import com.dropbox.core.v2.c.b;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/PathRootErrorException.class */
public class PathRootErrorException extends DbxException {

    /* renamed from: a  reason: collision with root package name */
    private final b f17704a;

    public PathRootErrorException(String str, String str2, b bVar) {
        super(str, str2);
        this.f17704a = bVar;
    }
}
