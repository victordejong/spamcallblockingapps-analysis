package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.r;
import java.io.FileNotFoundException;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/p.class */
public final class p implements r {

    /* renamed from: a  reason: collision with root package name */
    private final int f22241a;

    public p() {
        this(-1);
    }

    public p(int i) {
        this.f22241a = i;
    }

    @Override // com.google.android.exoplayer2.upstream.r
    public final int a(int i) {
        int i2 = this.f22241a;
        return i2 == -1 ? i == 7 ? 6 : 3 : i2;
    }

    @Override // com.google.android.exoplayer2.upstream.r
    public /* synthetic */ long a() {
        return r._CC.$default$a(this);
    }

    @Override // com.google.android.exoplayer2.upstream.r
    public final long a(r.a aVar) {
        IOException iOException = aVar.f22246c;
        if ((iOException instanceof ParserException) || (iOException instanceof FileNotFoundException) || (iOException instanceof HttpDataSource.CleartextNotPermittedException) || (iOException instanceof Loader.UnexpectedLoaderException)) {
            return -9223372036854775807L;
        }
        return Math.min((aVar.f22247d - 1) * 1000, 5000);
    }
}
