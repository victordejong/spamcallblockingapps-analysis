package p193e.p1577m.p1578a.p1596c.p1634p1;

import android.net.Uri;
import android.text.TextUtils;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.p1.w */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/w.class */
public final class C24753w extends AbstractC24698g {

    /* renamed from: e */
    public RandomAccessFile f69407e;

    /* renamed from: f */
    public Uri f69408f;

    /* renamed from: g */
    public long f69409g;

    /* renamed from: h */
    public boolean f69410h;

    /* renamed from: e.m.a.c.p1.w$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/w$a.class */
    public static final class C24754a implements AbstractC24739l.AbstractC24740a {
        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l.AbstractC24740a
        /* renamed from: a */
        public AbstractC24739l mo4656a() {
            return new C24753w();
        }
    }

    /* renamed from: e.m.a.c.p1.w$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/w$b.class */
    public static class C24755b extends IOException {
        public C24755b(IOException iOException) {
            super(iOException);
        }

        public C24755b(String str, IOException iOException) {
            super(str, iOException);
        }
    }

    public C24753w() {
        super(false);
    }

    /* renamed from: h */
    public static RandomAccessFile m4657h(Uri uri) throws C24755b {
        try {
            String path = uri.getPath();
            Objects.requireNonNull(path);
            return new RandomAccessFile(path, "r");
        } catch (FileNotFoundException e) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new C24755b(e);
            }
            throw new C24755b(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    /* renamed from: b */
    public long mo4658b(C24742n c24742n) throws C24755b {
        try {
            Uri uri = c24742n.f69328a;
            this.f69408f = uri;
            m4766f(c24742n);
            RandomAccessFile m4657h = m4657h(uri);
            this.f69407e = m4657h;
            m4657h.seek(c24742n.f69333f);
            ?? r0 = c24742n.f69334g;
            char c = r0;
            if (r0 == -1) {
                c = this.f69407e.length() - c24742n.f69333f;
            }
            this.f69409g = c;
            if (c < 0) {
                throw new EOFException();
            }
            this.f69410h = true;
            m4765g(c24742n);
            return this.f69409g;
        } catch (IOException e) {
            throw new C24755b(e);
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public void close() throws C24755b {
        this.f69408f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f69407e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f69407e = null;
                if (!this.f69410h) {
                    return;
                }
                this.f69410h = false;
                m4767e();
            } catch (IOException e) {
                throw new C24755b(e);
            }
        } catch (Throwable th) {
            this.f69407e = null;
            if (this.f69410h) {
                this.f69410h = false;
                m4767e();
            }
            throw th;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public Uri getUri() {
        return this.f69408f;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l
    public int read(byte[] bArr, int i, int i2) throws C24755b {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f69409g;
        if (j == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.f69407e;
            int i3 = C24773d0.f69427a;
            int read = randomAccessFile.read(bArr, i, (int) Math.min(j, i2));
            if (read > 0) {
                this.f69409g -= read;
                m4768d(read);
            }
            return read;
        } catch (IOException e) {
            throw new C24755b(e);
        }
    }
}
