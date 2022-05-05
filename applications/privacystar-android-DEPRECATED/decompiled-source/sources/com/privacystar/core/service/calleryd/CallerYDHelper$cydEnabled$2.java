package com.privacystar.core.service.calleryd;

import android.content.Context;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\b\n��\n\u0002\u0010\u000b\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m254d2 = {"<anonymous>", "", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/calleryd/CallerYDHelper$cydEnabled$2.class */
final class CallerYDHelper$cydEnabled$2 extends Lambda implements Function0<Boolean> {
    public static final CallerYDHelper$cydEnabled$2 INSTANCE = new CallerYDHelper$cydEnabled$2();

    CallerYDHelper$cydEnabled$2() {
        super(0);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Boolean, boolean] */
    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Boolean invoke2() {
        Context context = PSApplication.context();
        Intrinsics.checkExpressionValueIsNotNull(context, "PSApplication.context()");
        return context.getResources().getBoolean(C1566R.bool.calleryd_enabled);
    }
}
