package com.dropbox.core.p265v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.p265v2.AbstractC8685c;
import com.dropbox.core.p265v2.files.C8796aa;
import com.dropbox.core.p265v2.files.C8802ac;
import com.dropbox.core.p265v2.files.C8807ae;
import com.dropbox.core.p265v2.files.C8923e;
import com.dropbox.core.p265v2.files.C8925f;
import com.dropbox.core.p265v2.files.C8929g;
/* renamed from: com.dropbox.core.v2.files.d */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/d.class */
public final class C8922d {

    /* renamed from: a */
    final AbstractC8685c f31242a;

    public C8922d(AbstractC8685c abstractC8685c) {
        this.f31242a = abstractC8685c;
    }

    /* renamed from: a */
    public final C8807ae m24967a(C8796aa c8796aa) throws ListFolderErrorException, DbxException {
        try {
            AbstractC8685c abstractC8685c = this.f31242a;
            return (C8807ae) abstractC8685c.m25175a(abstractC8685c.f30788a.f30533b, "2/files/list_folder", c8796aa, C8796aa.C8797a.f31010a, C8807ae.C8808a.f31026a, C8802ac.C8804a.f31022a);
        } catch (DbxWrappedException e) {
            throw new ListFolderErrorException("2/files/list_folder", e.f30438b, e.f30439c, (C8802ac) e.f30437a);
        }
    }

    /* renamed from: a */
    public final C8929g m24966a(C8923e c8923e) throws DeleteErrorException, DbxException {
        try {
            AbstractC8685c abstractC8685c = this.f31242a;
            return (C8929g) abstractC8685c.m25175a(abstractC8685c.f30788a.f30533b, "2/files/delete_v2", c8923e, C8923e.C8924a.f31245a, C8929g.C8930a.f31255a, C8925f.C8927a.f31253a);
        } catch (DbxWrappedException e) {
            throw new DeleteErrorException("2/files/delete_v2", e.f30438b, e.f30439c, (C8925f) e.f30437a);
        }
    }
}
