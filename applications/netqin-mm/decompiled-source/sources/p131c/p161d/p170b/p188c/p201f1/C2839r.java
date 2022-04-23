package p131c.p161d.p170b.p188c.p201f1;

import android.net.Uri;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.f1.r */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/r.class */
public final class C2839r implements AbstractC2827j {

    /* renamed from: a */
    public final AbstractC2827j f10330a;

    /* renamed from: b */
    public long f10331b;

    /* renamed from: c */
    public Uri f10332c = Uri.EMPTY;

    /* renamed from: d */
    public Map<String, List<String>> f10333d = Collections.emptyMap();

    public C2839r(AbstractC2827j jVar) {
        C2877e.m28737a(jVar);
        this.f10330a = jVar;
    }

    /* renamed from: a */
    public long m28894a() {
        return this.f10331b;
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: a */
    public long mo18288a(C2829k kVar) throws IOException {
        this.f10332c = kVar.f10265a;
        this.f10333d = Collections.emptyMap();
        long a = this.f10330a.mo18288a(kVar);
        Uri o = mo18287o();
        C2877e.m28737a(o);
        this.f10332c = o;
        this.f10333d = mo28874p();
        return a;
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: a */
    public void mo28885a(AbstractC2841t tVar) {
        this.f10330a.mo28885a(tVar);
    }

    /* renamed from: b */
    public Uri m28893b() {
        return this.f10332c;
    }

    /* renamed from: c */
    public Map<String, List<String>> m28892c() {
        return this.f10333d;
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    public void close() throws IOException {
        this.f10330a.close();
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: o */
    public Uri mo18287o() {
        return this.f10330a.mo18287o();
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: p */
    public Map<String, List<String>> mo28874p() {
        return this.f10330a.mo28874p();
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.f10330a.read(bArr, i, i2);
        if (read != -1) {
            this.f10331b += read;
        }
        return read;
    }
}
