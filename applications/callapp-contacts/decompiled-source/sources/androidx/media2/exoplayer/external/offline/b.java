package androidx.media2.exoplayer.external.offline;

import android.net.Uri;
import androidx.media2.exoplayer.external.offline.a;
import androidx.media2.exoplayer.external.upstream.u;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/offline/b.class */
public final class b<T extends a<T>> implements u.a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final u.a<? extends T> f3473a;

    /* renamed from: b  reason: collision with root package name */
    private final List<StreamKey> f3474b;

    public b(u.a<? extends T> aVar, List<StreamKey> list) {
        this.f3473a = aVar;
        this.f3474b = list;
    }

    @Override // androidx.media2.exoplayer.external.upstream.u.a
    public final /* synthetic */ Object a(Uri uri, InputStream inputStream) throws IOException {
        a aVar = (a) this.f3473a.a(uri, inputStream);
        List<StreamKey> list = this.f3474b;
        a aVar2 = aVar;
        if (list != null) {
            aVar2 = list.isEmpty() ? aVar : (a) aVar.a(this.f3474b);
        }
        return aVar2;
    }
}
