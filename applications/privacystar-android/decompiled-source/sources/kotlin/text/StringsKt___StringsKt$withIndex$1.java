package kotlin.text;

import kotlin.Metadata;
import kotlin.collections.CharIterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m254d2 = {"<anonymous>", "Lkotlin/collections/CharIterator;", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/text/StringsKt___StringsKt$withIndex$1.class */
final class StringsKt___StringsKt$withIndex$1 extends Lambda implements Function0<CharIterator> {
    final /* synthetic */ CharSequence $this_withIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringsKt___StringsKt$withIndex$1(CharSequence charSequence) {
        super(0);
        this.$this_withIndex = charSequence;
    }

    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final CharIterator invoke() {
        return StringsKt.iterator(this.$this_withIndex);
    }
}
