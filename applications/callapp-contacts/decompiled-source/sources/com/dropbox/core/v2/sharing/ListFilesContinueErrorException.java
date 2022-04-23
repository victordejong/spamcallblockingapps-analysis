package com.dropbox.core.v2.sharing;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.n;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ListFilesContinueErrorException.class */
public class ListFilesContinueErrorException extends DbxApiException {

    /* renamed from: a  reason: collision with root package name */
    public final ae f18417a;

    public ListFilesContinueErrorException(String str, String str2, n nVar, ae aeVar) {
        super(str2, nVar, a(str, nVar, aeVar));
        Objects.requireNonNull(aeVar, "errorValue");
        this.f18417a = aeVar;
    }
}
