package kotlin.jvm.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KTypeProjection;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lkotlin/reflect/KTypeProjection;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/TypeReference$asString$args$1.class */
public final class TypeReference$asString$args$1 extends Lambda implements Function1<KTypeProjection, CharSequence> {

    /* renamed from: f */
    final /* synthetic */ TypeReference f20765f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TypeReference$asString$args$1(TypeReference typeReference) {
        super(1);
        this.f20765f = typeReference;
    }

    @NotNull
    /* renamed from: b */
    public final CharSequence invoke(@NotNull KTypeProjection it) {
        String d;
        Intrinsics.m1830e(it, "it");
        d = this.f20765f.m1773d(it);
        return d;
    }
}
