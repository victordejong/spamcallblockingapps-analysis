package com.privacystar.core.p011ui.intro.intro_core;

import com.privacystar.core.data.providers.LogProvider;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001c\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u0015\u0010\u0002\u001a\u00110\u0003¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u00062\u0015\u0010\u0007\u001a\u00110\b¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\t¢\u0006\u0002\b\n"}, m254d2 = {"<anonymous>", "", "p1", "Lcom/privacystar/core/data/providers/LogProvider;", "Lkotlin/ParameterName;", "name", "logProvider", "p2", "", "loaded", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.intro_core.IntroPresenter$loadActivityLog$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/intro_core/IntroPresenter$loadActivityLog$1.class */
public final class IntroPresenter$loadActivityLog$1 extends FunctionReference implements Function2<LogProvider, Boolean, Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public IntroPresenter$loadActivityLog$1(IntroPresenter introPresenter) {
        super(2, introPresenter);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public final String getName() {
        return "logProviderAction";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(IntroPresenter.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        return "logProviderAction(Lcom/privacystar/core/data/providers/LogProvider;Z)V";
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(LogProvider logProvider, Boolean bool) {
        invoke(logProvider, bool.booleanValue());
        return Unit.INSTANCE;
    }

    public final void invoke(@NotNull LogProvider p1, boolean z) {
        Intrinsics.checkParameterIsNotNull(p1, "p1");
        ((IntroPresenter) this.receiver).logProviderAction(p1, z);
    }
}
