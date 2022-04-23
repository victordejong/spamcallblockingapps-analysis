package okhttp3.internal.cache;

import java.io.IOException;
import p645m.AbstractC15176g;
import p645m.AbstractC15192r;
import p645m.C15170c;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/cache/FaultHidingSink.class */
public class FaultHidingSink extends AbstractC15176g {
    public boolean hasErrors;

    public FaultHidingSink(AbstractC15192r rVar) {
        super(rVar);
    }

    @Override // p645m.AbstractC15176g, p645m.AbstractC15192r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.hasErrors) {
            try {
                super.close();
            } catch (IOException e) {
                this.hasErrors = true;
                onException(e);
            }
        }
    }

    @Override // p645m.AbstractC15176g, p645m.AbstractC15192r, java.io.Flushable
    public void flush() throws IOException {
        if (!this.hasErrors) {
            try {
                super.flush();
            } catch (IOException e) {
                this.hasErrors = true;
                onException(e);
            }
        }
    }

    public void onException(IOException iOException) {
        throw null;
    }

    @Override // p645m.AbstractC15176g, p645m.AbstractC15192r
    public void write(C15170c cVar, long j) throws IOException {
        if (this.hasErrors) {
            cVar.skip(j);
            return;
        }
        try {
            super.write(cVar, j);
        } catch (IOException e) {
            this.hasErrors = true;
            onException(e);
        }
    }
}
