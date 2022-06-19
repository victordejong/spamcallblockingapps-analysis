package com.dropbox.core.p265v2.files;

import com.dropbox.core.AbstractC8619l;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.http.AbstractC8582a;
import com.dropbox.core.p265v2.files.C8884bc;
import com.dropbox.core.p265v2.files.C8957q;
/* renamed from: com.dropbox.core.v2.files.bh */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bh.class */
public final class C8902bh extends AbstractC8619l<C8957q, C8884bc, UploadErrorException> {
    public C8902bh(AbstractC8582a.AbstractC8585c abstractC8585c, String str) {
        super(abstractC8585c, C8957q.C8958a.f31309a, C8884bc.C8886a.f31187a, str);
    }

    @Override // com.dropbox.core.AbstractC8619l
    /* renamed from: a */
    public final /* synthetic */ UploadErrorException mo24988a(DbxWrappedException dbxWrappedException) {
        return new UploadErrorException("2/files/upload", dbxWrappedException.f30438b, dbxWrappedException.f30439c, (C8884bc) dbxWrappedException.f30437a);
    }
}
