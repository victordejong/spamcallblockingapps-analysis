package com.privacystar.core.p011ui.report;

import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.ReportDebtCollectorStartBuilder$setButtonEnabled$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/ReportDebtCollectorStartBuilder$setButtonEnabled$1.class */
final class ReportDebtCollectorStartBuilder$setButtonEnabled$1 extends MutablePropertyReference0 {
    ReportDebtCollectorStartBuilder$setButtonEnabled$1(ReportDebtCollectorStartBuilder reportDebtCollectorStartBuilder) {
        super(reportDebtCollectorStartBuilder);
    }

    @Override // kotlin.reflect.KProperty0
    @Nullable
    public Object get() {
        return ReportDebtCollectorStartBuilder.access$getSubmitButton$p((ReportDebtCollectorStartBuilder) this.receiver);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public String getName() {
        return "submitButton";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(ReportDebtCollectorStartBuilder.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public String getSignature() {
        return "getSubmitButton()Ljava/lang/ref/WeakReference;";
    }

    @Override // kotlin.reflect.KMutableProperty0
    public void set(@Nullable Object obj) {
        ReportDebtCollectorStartBuilder reportDebtCollectorStartBuilder = (ReportDebtCollectorStartBuilder) this.receiver;
        ReportDebtCollectorStartBuilder.submitButton = (WeakReference) obj;
    }
}
