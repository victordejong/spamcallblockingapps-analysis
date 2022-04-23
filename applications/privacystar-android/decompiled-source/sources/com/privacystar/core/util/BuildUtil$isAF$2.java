package com.privacystar.core.util;

import com.privacystar.core.BuildConfig;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\b\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m254d2 = {"<anonymous>", "", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/BuildUtil$isAF$2.class */
final class BuildUtil$isAF$2 extends Lambda implements Function0<Boolean> {
    public static final BuildUtil$isAF$2 INSTANCE = new BuildUtil$isAF$2();

    BuildUtil$isAF$2() {
        super(0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Boolean, boolean] */
    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Boolean invoke2() {
        return Text.containsIgnoreCase(BuildConfig.FLAVOR, "anchor");
    }
}
