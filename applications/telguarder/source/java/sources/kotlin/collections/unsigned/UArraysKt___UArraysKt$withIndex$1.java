package kotlin.collections.unsigned;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\f\n��\n\u0002\u0010(\n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, m400d2 = {"<anonymous>", "", "Lkotlin/UInt;", "invoke"}, m399k = 3, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/collections/unsigned/UArraysKt___UArraysKt$withIndex$1.class */
final class UArraysKt___UArraysKt$withIndex$1 extends Lambda implements Function0<Iterator<? extends UInt>> {
    final /* synthetic */ int[] $this_withIndex;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UArraysKt___UArraysKt$withIndex$1(int[] iArr) {
        super(0);
        this.$this_withIndex = iArr;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Iterator<? extends UInt> invoke() {
        return UIntArray.m4312iteratorimpl(this.$this_withIndex);
    }
}
