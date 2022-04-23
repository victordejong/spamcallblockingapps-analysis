package com.dropbox.core.v2.files;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.v2.c;
import com.dropbox.core.v2.files.aa;
import com.dropbox.core.v2.files.ac;
import com.dropbox.core.v2.files.ae;
import com.dropbox.core.v2.files.e;
import com.dropbox.core.v2.files.f;
import com.dropbox.core.v2.files.g;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    final c f18301a;

    public d(c cVar) {
        this.f18301a = cVar;
    }

    public final ae a(aa aaVar) throws ListFolderErrorException, DbxException {
        try {
            c cVar = this.f18301a;
            return (ae) cVar.a(cVar.f17948a.f17753b, "2/files/list_folder", aaVar, aa.a.f18128a, ae.a.f18144a, ac.a.f18140a);
        } catch (DbxWrappedException e) {
            throw new ListFolderErrorException("2/files/list_folder", e.f17696b, e.f17697c, (ac) e.f17695a);
        }
    }

    public final g a(e eVar) throws DeleteErrorException, DbxException {
        try {
            c cVar = this.f18301a;
            return (g) cVar.a(cVar.f17948a.f17753b, "2/files/delete_v2", eVar, e.a.f18304a, g.a.f18312a, f.a.f18310a);
        } catch (DbxWrappedException e) {
            throw new DeleteErrorException("2/files/delete_v2", e.f17696b, e.f17697c, (f) e.f17695a);
        }
    }
}
