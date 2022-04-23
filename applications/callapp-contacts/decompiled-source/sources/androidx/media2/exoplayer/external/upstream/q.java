package androidx.media2.exoplayer.external.upstream;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.upstream.HttpDataSource;
import androidx.media2.exoplayer.external.upstream.Loader;
import com.callapp.contacts.model.Constants;
import java.io.FileNotFoundException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/q.class */
public final class q implements t {

    /* renamed from: a  reason: collision with root package name */
    private final int f4102a;

    public q() {
        this(-1);
    }

    public q(int i) {
        this.f4102a = i;
    }

    @Override // androidx.media2.exoplayer.external.upstream.t
    public final int a(int i) {
        int i2 = this.f4102a;
        return i2 == -1 ? i == 7 ? 6 : 3 : i2;
    }

    @Override // androidx.media2.exoplayer.external.upstream.t
    public final long a(IOException iOException) {
        if (!(iOException instanceof HttpDataSource.InvalidResponseCodeException)) {
            return -9223372036854775807L;
        }
        int i = ((HttpDataSource.InvalidResponseCodeException) iOException).f4026c;
        if (i == 404 || i == 410) {
            return Constants.MINUTE_IN_MILLIS;
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media2.exoplayer.external.upstream.t
    public final long a(IOException iOException, int i) {
        if ((iOException instanceof ParserException) || (iOException instanceof FileNotFoundException) || (iOException instanceof Loader.UnexpectedLoaderException)) {
            return -9223372036854775807L;
        }
        return Math.min((i - 1) * 1000, 5000);
    }
}
