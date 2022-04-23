package com.sinch.metadata.collector;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.m;
import kotlin.reflect.KDeclarationContainer;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0004\n\u0002\b\u0004\u0010��\u001a\u0004\u0018\u0001H\u0001\"\u0004\b��\u0010\u0001¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"<anonymous>", "Metadata", "invoke", "()Ljava/lang/Object;"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/PermissionProtectedMetadataCollector$collect$1.class */
final /* synthetic */ class PermissionProtectedMetadataCollector$collect$1 extends m implements Function0<Metadata> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public PermissionProtectedMetadataCollector$collect$1(PermissionProtectedMetadataCollector permissionProtectedMetadataCollector) {
        super(0, permissionProtectedMetadataCollector);
    }

    @Override // kotlin.jvm.internal.e, kotlin.reflect.KCallable
    public final String getName() {
        return "collectWithPermissionsGranted";
    }

    @Override // kotlin.jvm.internal.e
    public final KDeclarationContainer getOwner() {
        return ac.b(PermissionProtectedMetadataCollector.class);
    }

    @Override // kotlin.jvm.internal.e
    public final String getSignature() {
        return "collectWithPermissionsGranted()Ljava/lang/Object;";
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [Metadata, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    public final Metadata invoke() {
        return ((PermissionProtectedMetadataCollector) this.receiver).collectWithPermissionsGranted();
    }
}
