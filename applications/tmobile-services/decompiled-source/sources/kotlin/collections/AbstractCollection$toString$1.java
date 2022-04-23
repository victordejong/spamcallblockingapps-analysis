package kotlin.collections;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\n\n��\n\u0002\u0010\r\n\u0002\b\u0004\u0010��\u001a\u00020\u0001\"\u0006\b��\u0010\u0002 \u00012\u0006\u0010\u0003\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "E", "it", "invoke", "(Ljava/lang/Object;)Ljava/lang/CharSequence;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractCollection$toString$1.class */
final class AbstractCollection$toString$1 extends Lambda implements Function1<E, CharSequence> {

    /* renamed from: f */
    final /* synthetic */ AbstractCollection f20451f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractCollection$toString$1(AbstractCollection abstractCollection) {
        super(1);
        this.f20451f = abstractCollection;
    }

    @NotNull
    /* renamed from: b */
    public final CharSequence invoke(E e) {
        return e == this.f20451f ? "(this Collection)" : String.valueOf(e);
    }
}
