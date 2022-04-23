package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.l;
import com.dropbox.core.v2.d;
import com.dropbox.core.v2.files.b;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bb.class */
public final class bb extends d<q, bc, UploadErrorException> {

    /* renamed from: a  reason: collision with root package name */
    public final b.a f18250a;

    /* renamed from: b  reason: collision with root package name */
    private final d f18251b;

    public bb(d dVar, b.a aVar) {
        Objects.requireNonNull(dVar, "_client");
        this.f18251b = dVar;
        Objects.requireNonNull(aVar, "_builder");
        this.f18250a = aVar;
    }

    @Override // com.dropbox.core.v2.d
    public final /* synthetic */ l<q, bc, UploadErrorException> a() throws DbxException {
        b a2 = this.f18250a.a();
        d dVar = this.f18251b;
        return new bh(dVar.f18301a.a(dVar.f18301a.f17948a.f17754c, "2/files/upload", a2, b.C0368b.f18243a), dVar.f18301a.f17949b);
    }
}
