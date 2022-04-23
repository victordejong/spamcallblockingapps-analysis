package com.dropbox.core.v2.files;

import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.a;
import com.dropbox.core.l;
import com.dropbox.core.v2.files.bc;
import com.dropbox.core.v2.files.q;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bh.class */
public final class bh extends l<q, bc, UploadErrorException> {
    public bh(a.c cVar, String str) {
        super(cVar, q.a.f18354a, bc.a.f18257a, str);
    }

    @Override // com.dropbox.core.l
    public final /* synthetic */ UploadErrorException a(DbxWrappedException dbxWrappedException) {
        return new UploadErrorException("2/files/upload", dbxWrappedException.f17696b, dbxWrappedException.f17697c, (bc) dbxWrappedException.f17695a);
    }
}
