package okhttp3.internal.cache;

import java.io.IOException;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import okhttp3.internal.cache.DiskLruCache;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, m4298d2 = {"<anonymous>", "", "it", "Ljava/io/IOException;", "invoke", "okhttp3/internal/cache/DiskLruCache$Editor$newSink$1$1"}, m4297k = 3, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Editor$newSink$$inlined$synchronized$lambda$1.class */
public final class DiskLruCache$Editor$newSink$$inlined$synchronized$lambda$1 extends AbstractC18526r implements Function1<IOException, C20128v> {
    final /* synthetic */ int $index$inlined;
    final /* synthetic */ DiskLruCache.Editor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiskLruCache$Editor$newSink$$inlined$synchronized$lambda$1(DiskLruCache.Editor editor, int i) {
        super(1);
        this.this$0 = editor;
        this.$index$inlined = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ C20128v invoke(IOException iOException) {
        invoke2(iOException);
        return C20128v.f66529a;
    }

    /* renamed from: invoke */
    public final void invoke2(IOException it2) {
        C18524p.m3840d(it2, "it");
        synchronized (this.this$0.this$0) {
            this.this$0.detach$okhttp();
            C20128v c20128v = C20128v.f66529a;
        }
    }
}
