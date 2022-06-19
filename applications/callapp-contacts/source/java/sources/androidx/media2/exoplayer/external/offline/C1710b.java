package androidx.media2.exoplayer.external.offline;

import android.net.Uri;
import androidx.media2.exoplayer.external.offline.AbstractC1709a;
import androidx.media2.exoplayer.external.upstream.C1987u;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.offline.b */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/offline/b.class */
public final class C1710b<T extends AbstractC1709a<T>> implements C1987u.AbstractC1988a<T> {

    /* renamed from: a */
    private final C1987u.AbstractC1988a<? extends T> f6717a;

    /* renamed from: b */
    private final List<StreamKey> f6718b;

    public C1710b(C1987u.AbstractC1988a<? extends T> abstractC1988a, List<StreamKey> list) {
        this.f6717a = abstractC1988a;
        this.f6718b = list;
    }

    @Override // androidx.media2.exoplayer.external.upstream.C1987u.AbstractC1988a
    /* renamed from: a */
    public final /* synthetic */ Object mo41698a(Uri uri, InputStream inputStream) throws IOException {
        T mo41698a = this.f6717a.mo41698a(uri, inputStream);
        List<StreamKey> list = this.f6718b;
        Object obj = mo41698a;
        if (list != null) {
            obj = list.isEmpty() ? mo41698a : (AbstractC1709a) mo41698a.mo42145a(this.f6718b);
        }
        return obj;
    }
}
