package androidx.media2.exoplayer.external.upstream;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.upstream.HttpDataSource;
import androidx.media2.exoplayer.external.upstream.Loader;
import com.callapp.contacts.model.Constants;
import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: androidx.media2.exoplayer.external.upstream.q */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/q.class */
public final class C1983q implements AbstractC1986t {

    /* renamed from: a */
    private final int f8040a;

    public C1983q() {
        this(-1);
    }

    public C1983q(int i) {
        this.f8040a = i;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1986t
    /* renamed from: a */
    public final int mo41703a(int i) {
        int i2 = this.f8040a;
        return i2 == -1 ? i == 7 ? 6 : 3 : i2;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1986t
    /* renamed from: a */
    public final long mo41702a(IOException iOException) {
        if (iOException instanceof HttpDataSource.InvalidResponseCodeException) {
            int i = ((HttpDataSource.InvalidResponseCodeException) iOException).f7894c;
            if (i != 404 && i != 410) {
                return -9223372036854775807L;
            }
            return Constants.MINUTE_IN_MILLIS;
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media2.exoplayer.external.upstream.AbstractC1986t
    /* renamed from: a */
    public final long mo41701a(IOException iOException, int i) {
        if ((iOException instanceof ParserException) || (iOException instanceof FileNotFoundException) || (iOException instanceof Loader.UnexpectedLoaderException)) {
            return -9223372036854775807L;
        }
        return Math.min((i - 1) * 1000, 5000);
    }
}
