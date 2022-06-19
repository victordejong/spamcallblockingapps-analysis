package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0010\n��\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010&\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u0006\b\u0001\u0010\u0003 \u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0005H\n¢\u0006\u0002\b\u0006"}, m400d2 = {"<anonymous>", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "it", "", "invoke"}, m399k = 3, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/collections/AbstractMap$toString$1.class */
final class AbstractMap$toString$1 extends Lambda implements Function1<Map.Entry<? extends K, ? extends V>, CharSequence> {
    final /* synthetic */ AbstractMap this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractMap$toString$1(AbstractMap abstractMap) {
        super(1);
        this.this$0 = abstractMap;
    }

    public final CharSequence invoke(Map.Entry<? extends K, ? extends V> it) {
        String abstractMap;
        Intrinsics.checkNotNullParameter(it, "it");
        abstractMap = this.this$0.toString((Map.Entry) it);
        return abstractMap;
    }
}
