package com.tmobile.services.nameid.utility;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Lcom/tmobile/services/nameid/utility/ErrorMessage;", "it", "", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/MetroApiErrorInterpreter$Companion$addCallerIdErrors$1.class */
final class MetroApiErrorInterpreter$Companion$addCallerIdErrors$1 extends Lambda implements Function1<String, ErrorMessage> {

    /* renamed from: f */
    public static final MetroApiErrorInterpreter$Companion$addCallerIdErrors$1 f14393f = new MetroApiErrorInterpreter$Companion$addCallerIdErrors$1();

    MetroApiErrorInterpreter$Companion$addCallerIdErrors$1() {
        super(1);
    }

    @NotNull
    /* renamed from: b */
    public final ErrorMessage invoke(@NotNull String it) {
        ErrorMessage errorMessage;
        Intrinsics.m1830e(it, "it");
        errorMessage = MetroApiErrorInterpreter.f14388b;
        return errorMessage;
    }
}
