package kotlin.text;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\u0010��\u001a\u00020\u0001\"\u0014\b��\u0010\u0002\u0018\u0001*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u000e\u0010\u0005\u001a\n \u0006*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"<anonymous>", "", "T", "Lkotlin/text/FlagEnum;", "", "it", "kotlin.jvm.PlatformType", "invoke", "(Ljava/lang/Enum;)Z", "kotlin/text/RegexKt$fromInt$1$1"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/text/RegexKt$fromInt$$inlined$apply$lambda$1.class */
public final class RegexKt$fromInt$$inlined$apply$lambda$1 extends Lambda implements Function1<T, Boolean> {

    /* renamed from: f */
    final /* synthetic */ int f21046f;

    /* JADX WARN: Incorrect types in method signature: (TT;)Z */
    /* renamed from: b */
    public final boolean m1544b(Enum r4) {
        FlagEnum flagEnum = (FlagEnum) r4;
        return (this.f21046f & flagEnum.getMask()) == flagEnum.getValue();
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
        return Boolean.valueOf(m1544b((Enum) obj));
    }
}
