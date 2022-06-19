package com.dropbox.core.p265v2.files;

import com.dropbox.core.AbstractC8619l;
import com.dropbox.core.DbxException;
import com.dropbox.core.p265v2.AbstractC8737d;
import com.dropbox.core.p265v2.files.C8876b;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.files.bb */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/bb.class */
public final class C8883bb extends AbstractC8737d<C8957q, C8884bc, UploadErrorException> {

    /* renamed from: a */
    public final C8876b.C8877a f31180a;

    /* renamed from: b */
    private final C8922d f31181b;

    public C8883bb(C8922d c8922d, C8876b.C8877a c8877a) {
        Objects.requireNonNull(c8922d, "_client");
        this.f31181b = c8922d;
        Objects.requireNonNull(c8877a, "_builder");
        this.f31180a = c8877a;
    }

    @Override // com.dropbox.core.p265v2.AbstractC8737d
    /* renamed from: a */
    public final /* synthetic */ AbstractC8619l<C8957q, C8884bc, UploadErrorException> mo25011a() throws DbxException {
        C8876b m25016a = this.f31180a.m25016a();
        C8922d c8922d = this.f31181b;
        return new C8902bh(c8922d.f31242a.m25176a(c8922d.f31242a.f30788a.f30534c, "2/files/upload", m25016a, C8876b.C8878b.f31169a), c8922d.f31242a.f30789b);
    }
}
