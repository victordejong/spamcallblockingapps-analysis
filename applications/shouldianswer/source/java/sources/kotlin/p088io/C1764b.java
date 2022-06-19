package kotlin.p088io;

import java.io.BufferedReader;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.p081e.p083b.C1694h;
import kotlin.p086h.AbstractC1728b;
/* renamed from: kotlin.io.b */
/* loaded from: classes-dex2jar.jar:kotlin/io/b.class */
public final class C1764b implements AbstractC1728b<String> {

    /* renamed from: a */
    private final BufferedReader f4438a;

    /* renamed from: kotlin.io.b$a */
    /* loaded from: classes-dex2jar.jar:kotlin/io/b$a.class */
    public static final class C1765a implements Iterator<String> {

        /* renamed from: b */
        private String f4440b;

        /* renamed from: c */
        private boolean f4441c;

        C1765a() {
            C1764b.this = r4;
        }

        /* renamed from: a */
        public String next() {
            if (hasNext()) {
                String str = this.f4440b;
                this.f4440b = null;
                if (str == null) {
                    C1694h.m3124a();
                }
                return str;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            boolean z = true;
            if (this.f4440b == null && !this.f4441c) {
                this.f4440b = C1764b.this.f4438a.readLine();
                if (this.f4440b == null) {
                    this.f4441c = true;
                }
            }
            if (this.f4440b == null) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public C1764b(BufferedReader bufferedReader) {
        C1694h.m3117b(bufferedReader, "reader");
        this.f4438a = bufferedReader;
    }

    @Override // kotlin.p086h.AbstractC1728b
    /* renamed from: a */
    public Iterator<String> mo2994a() {
        return new C1765a();
    }
}
