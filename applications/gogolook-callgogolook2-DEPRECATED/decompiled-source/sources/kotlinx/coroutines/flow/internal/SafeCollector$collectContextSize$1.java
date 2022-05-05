package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m815d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "count", "<anonymous parameter 1>", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/SafeCollector$collectContextSize$1.class */
public final class SafeCollector$collectContextSize$1 extends AbstractC15150l implements AbstractC15122p<Integer, AbstractC15049g.AbstractC15052b, Integer> {
    public static final SafeCollector$collectContextSize$1 INSTANCE = new SafeCollector$collectContextSize$1();

    public SafeCollector$collectContextSize$1() {
        super(2);
    }

    public final int invoke(int i, AbstractC15049g.AbstractC15052b bVar) {
        return i + 1;
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public /* bridge */ /* synthetic */ Integer invoke(Integer num, AbstractC15049g.AbstractC15052b bVar) {
        return Integer.valueOf(invoke(num.intValue(), bVar));
    }
}
