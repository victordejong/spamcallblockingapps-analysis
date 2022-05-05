package b;
/* loaded from: classes-dex2jar.jar:b/n.class */
final class n {

    /* renamed from: a  reason: collision with root package name */
    final byte[] f339a;

    /* renamed from: b  reason: collision with root package name */
    int f340b;
    int c;
    boolean d;
    boolean e;
    n f;
    n g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n() {
        this.f339a = new byte[2048];
        this.e = true;
        this.d = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(n nVar) {
        this(nVar.f339a, nVar.f340b, nVar.c);
        nVar.d = true;
    }

    private n(byte[] bArr, int i, int i2) {
        this.f339a = bArr;
        this.f340b = i;
        this.c = i2;
        this.e = false;
        this.d = true;
    }

    public final n a() {
        n nVar = this.f != this ? this.f : null;
        this.g.f = this.f;
        this.f.g = this.g;
        this.f = null;
        this.g = null;
        return nVar;
    }

    public final n a(n nVar) {
        nVar.g = this;
        nVar.f = this.f;
        this.f.g = nVar;
        this.f = nVar;
        return nVar;
    }

    public final void a(n nVar, int i) {
        if (!nVar.e) {
            throw new IllegalArgumentException();
        }
        if (nVar.c + i > 2048) {
            if (nVar.d) {
                throw new IllegalArgumentException();
            } else if ((nVar.c + i) - nVar.f340b > 2048) {
                throw new IllegalArgumentException();
            } else {
                System.arraycopy(nVar.f339a, nVar.f340b, nVar.f339a, 0, nVar.c - nVar.f340b);
                nVar.c -= nVar.f340b;
                nVar.f340b = 0;
            }
        }
        System.arraycopy(this.f339a, this.f340b, nVar.f339a, nVar.c, i);
        nVar.c += i;
        this.f340b += i;
    }
}
