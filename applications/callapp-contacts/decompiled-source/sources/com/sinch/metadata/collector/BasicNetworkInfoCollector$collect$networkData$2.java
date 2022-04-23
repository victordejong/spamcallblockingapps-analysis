package com.sinch.metadata.collector;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.m;
import kotlin.reflect.KDeclarationContainer;
import kotlin.v;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/BasicNetworkInfoCollector$collect$networkData$2.class */
public final /* synthetic */ class BasicNetworkInfoCollector$collect$networkData$2 extends m implements Function0<v> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public BasicNetworkInfoCollector$collect$networkData$2(BasicNetworkInfoCollector basicNetworkInfoCollector) {
        super(0, basicNetworkInfoCollector);
    }

    @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
    public final String getName() {
        return "emitPermissionWarning";
    }

    @Override // kotlin.jvm.internal.e
    public final KDeclarationContainer getOwner() {
        return ac.b(BasicNetworkInfoCollector.class);
    }

    @Override // kotlin.jvm.internal.e
    public final String getSignature() {
        return "emitPermissionWarning()V";
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((BasicNetworkInfoCollector) this.receiver).emitPermissionWarning();
    }
}
