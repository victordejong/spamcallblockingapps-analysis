package com.sinch.metadata.collector;

import com.sinch.metadata.model.network.NetworkData;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18521m;
import kotlin.reflect.KDeclarationContainer;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lcom/sinch/metadata/model/network/NetworkData;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/BasicNetworkInfoCollector$collect$networkData$1.class */
public final /* synthetic */ class BasicNetworkInfoCollector$collect$networkData$1 extends C18521m implements Function0<NetworkData> {
    public BasicNetworkInfoCollector$collect$networkData$1(BasicNetworkInfoCollector basicNetworkInfoCollector) {
        super(0, basicNetworkInfoCollector);
    }

    @Override // kotlin.jvm.internal.AbstractC18511e, kotlin.reflect.KCallable
    public final String getName() {
        return "collectNetworkData";
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    public final KDeclarationContainer getOwner() {
        return C18496ac.m3882b(BasicNetworkInfoCollector.class);
    }

    @Override // kotlin.jvm.internal.AbstractC18511e
    public final String getSignature() {
        return "collectNetworkData()Lcom/sinch/metadata/model/network/NetworkData;";
    }

    @Override // kotlin.jvm.functions.Function0
    public final NetworkData invoke() {
        NetworkData collectNetworkData;
        collectNetworkData = ((BasicNetworkInfoCollector) this.receiver).collectNetworkData();
        return collectNetworkData;
    }
}
