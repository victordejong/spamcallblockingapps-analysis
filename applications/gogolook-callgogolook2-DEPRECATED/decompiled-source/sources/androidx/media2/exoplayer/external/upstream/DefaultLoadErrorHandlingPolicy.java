package androidx.media2.exoplayer.external.upstream;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.upstream.Loader;
import java.io.FileNotFoundException;
import java.io.IOException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy.class */
public class DefaultLoadErrorHandlingPolicy implements LoadErrorHandlingPolicy {
    public static final int DEFAULT_BEHAVIOR_MIN_LOADABLE_RETRY_COUNT = -1;
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT = 3;
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT_PROGRESSIVE_LIVE = 6;
    public static final long DEFAULT_TRACK_BLACKLIST_MS = 60000;
    public final int minimumLoadableRetryCount;

    public DefaultLoadErrorHandlingPolicy() {
        this(-1);
    }

    public DefaultLoadErrorHandlingPolicy(int i) {
        this.minimumLoadableRetryCount = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002b, code lost:
        if (r0 == 410) goto L_0x002e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    @Override // androidx.media2.exoplayer.external.upstream.LoadErrorHandlingPolicy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getBlacklistDurationMsFor(int r4, long r5, java.io.IOException r7, int r8) {
        /*
            r3 = this;
            r0 = r7
            boolean r0 = r0 instanceof androidx.media2.exoplayer.external.upstream.HttpDataSource.InvalidResponseCodeException
            r9 = r0
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r10 = r0
            r0 = r10
            r5 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0032
            r0 = r7
            androidx.media2.exoplayer.external.upstream.HttpDataSource$InvalidResponseCodeException r0 = (androidx.media2.exoplayer.external.upstream.HttpDataSource.InvalidResponseCodeException) r0
            int r0 = r0.responseCode
            r4 = r0
            r0 = r4
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L_0x002e
            r0 = r10
            r5 = r0
            r0 = r4
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 != r1) goto L_0x0032
        L_0x002e:
            r0 = 60000(0xea60, double:2.9644E-319)
            r5 = r0
        L_0x0032:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.DefaultLoadErrorHandlingPolicy.getBlacklistDurationMsFor(int, long, java.io.IOException, int):long");
    }

    @Override // androidx.media2.exoplayer.external.upstream.LoadErrorHandlingPolicy
    public int getMinimumLoadableRetryCount(int i) {
        int i2 = this.minimumLoadableRetryCount;
        if (i2 != -1) {
            return i2;
        }
        return i == 7 ? 6 : 3;
    }

    @Override // androidx.media2.exoplayer.external.upstream.LoadErrorHandlingPolicy
    public long getRetryDelayMsFor(int i, long j, IOException iOException, int i2) {
        return ((iOException instanceof ParserException) || (iOException instanceof FileNotFoundException) || (iOException instanceof Loader.UnexpectedLoaderException)) ? C0463C.TIME_UNSET : Math.min((i2 - 1) * 1000, 5000);
    }
}
