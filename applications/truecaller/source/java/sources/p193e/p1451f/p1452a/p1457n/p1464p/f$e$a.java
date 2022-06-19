package p193e.p1451f.p1452a.p1457n.p1464p;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import p193e.p1451f.p1452a.p1457n.p1464p.C22419f;
/* renamed from: e.f.a.n.p.f$e$a */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/f$e$a.class */
public class f$e$a implements C22419f.AbstractC22422d<InputStream> {
    @Override // p193e.p1451f.p1452a.p1457n.p1464p.C22419f.AbstractC22422d
    /* renamed from: a */
    public Class<InputStream> mo8241a() {
        return InputStream.class;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.C22419f.AbstractC22422d
    /* renamed from: b */
    public void mo8240b(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.C22419f.AbstractC22422d
    /* renamed from: c */
    public InputStream mo8239c(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }
}
