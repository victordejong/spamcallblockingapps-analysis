package okhttp3.internal.cache;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
import okhttp3.internal.cache.DiskLruCache;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "", "it", "Ljava/io/IOException;", "invoke", "okhttp3/internal/cache/DiskLruCache$Editor$newSink$1$1"}, k = 3, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/cache/DiskLruCache$Editor$newSink$$inlined$synchronized$lambda$1.class */
public final class DiskLruCache$Editor$newSink$$inlined$synchronized$lambda$1 extends r implements Function1<IOException, v> {
    final /* synthetic */ int $index$inlined;
    final /* synthetic */ DiskLruCache.Editor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiskLruCache$Editor$newSink$$inlined$synchronized$lambda$1(DiskLruCache.Editor editor, int i) {
        super(1);
        this.this$0 = editor;
        this.$index$inlined = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ v invoke(IOException iOException) {
        invoke2(iOException);
        return v.f38654a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(IOException it2) {
        p.d(it2, "it");
        synchronized (this.this$0.this$0) {
            this.this$0.detach$okhttp();
            v vVar = v.f38654a;
        }
    }
}
