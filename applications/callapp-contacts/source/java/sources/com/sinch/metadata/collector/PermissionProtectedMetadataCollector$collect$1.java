package com.sinch.metadata.collector;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18521m;
import kotlin.reflect.KDeclarationContainer;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0004\n\u0002\b\u0004\u0010��\u001a\u0004\u0018\u0001H\u0001\"\u0004\b��\u0010\u0001¢\u0006\u0004\b\u0002\u0010\u0003"}, m4298d2 = {"<anonymous>", "Metadata", "invoke", "()Ljava/lang/Object;"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/PermissionProtectedMetadataCollector$collect$1.class */
final /* synthetic */ class PermissionProtectedMetadataCollector$collect$1 extends C18521m implements Function0<Metadata> {
    public PermissionProtectedMetadataCollector$collect$1(PermissionProtectedMetadataCollector permissionProtectedMetadataCollector) {
        super(0, permissionProtectedMetadataCollector);
    }

    @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
    public final String getName() {
        return "collectWithPermissionsGranted";
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    public final KDeclarationContainer getOwner() {
        return C18496ac.m3882b(PermissionProtectedMetadataCollector.class);
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    public final String getSignature() {
        return "collectWithPermissionsGranted()Ljava/lang/Object;";
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [Metadata, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    public final Metadata invoke() {
        return ((PermissionProtectedMetadataCollector) this.receiver).collectWithPermissionsGranted();
    }
}
