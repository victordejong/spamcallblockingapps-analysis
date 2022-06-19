package p193e.p1451f.p1452a.p1457n.p1464p;

import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import p193e.p1451f.p1452a.p1457n.p1464p.C22419f;
/* renamed from: e.f.a.n.p.f$b$a */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/f$b$a.class */
public class f$b$a implements C22419f.AbstractC22422d<ParcelFileDescriptor> {
    @Override // p193e.p1451f.p1452a.p1457n.p1464p.C22419f.AbstractC22422d
    /* renamed from: a */
    public Class<ParcelFileDescriptor> mo8241a() {
        return ParcelFileDescriptor.class;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.C22419f.AbstractC22422d
    /* renamed from: b */
    public void mo8240b(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1464p.C22419f.AbstractC22422d
    /* renamed from: c */
    public ParcelFileDescriptor mo8239c(File file) throws FileNotFoundException {
        return ParcelFileDescriptor.open(file, 268435456);
    }
}
