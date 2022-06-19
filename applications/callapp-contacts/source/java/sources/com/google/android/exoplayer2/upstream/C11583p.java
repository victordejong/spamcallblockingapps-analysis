package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.upstream.AbstractC11585r;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: com.google.android.exoplayer2.upstream.p */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/p.class */
public final class C11583p implements AbstractC11585r {

    /* renamed from: a */
    private final int f38610a;

    public C11583p() {
        this(-1);
    }

    public C11583p(int i) {
        this.f38610a = i;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11585r
    /* renamed from: a */
    public final int mo20038a(int i) {
        int i2 = this.f38610a;
        return i2 == -1 ? i == 7 ? 6 : 3 : i2;
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11585r
    /* renamed from: a */
    public /* synthetic */ long mo20039a() {
        return AbstractC11585r._CC.$default$a(this);
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC11585r
    /* renamed from: a */
    public final long mo20037a(AbstractC11585r.C11586a c11586a) {
        IOException iOException = c11586a.f38615c;
        if ((iOException instanceof ParserException) || (iOException instanceof FileNotFoundException) || (iOException instanceof HttpDataSource.CleartextNotPermittedException) || (iOException instanceof Loader.UnexpectedLoaderException)) {
            return -9223372036854775807L;
        }
        return Math.min((c11586a.f38616d - 1) * 1000, 5000);
    }
}
