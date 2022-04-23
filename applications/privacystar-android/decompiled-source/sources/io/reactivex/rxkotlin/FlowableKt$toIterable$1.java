package io.reactivex.rxkotlin;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��\u0013\n��\n\u0002\u0010\u001c\n\u0002\b\u0002\n\u0002\u0010(\n��*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004H\u0096\u0002¨\u0006\u0005"}, m254d2 = {"io/reactivex/rxkotlin/FlowableKt$toIterable$1", "", "(Ljava/util/Iterator;)V", "iterator", "", "rxkotlin_main"}, m253k = 1, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/FlowableKt$toIterable$1.class */
public final class FlowableKt$toIterable$1 implements Iterable<T>, KMappedMarker {
    final /* synthetic */ Iterator receiver$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowableKt$toIterable$1(Iterator<? extends T> it) {
        this.receiver$0 = it;
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<T> iterator() {
        return this.receiver$0;
    }
}
