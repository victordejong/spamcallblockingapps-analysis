package com.sinch.metadata.collector;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\bf\u0018��*\u0004\b��\u0010\u00012\u00020\u0002J\r\u0010\u0003\u001a\u00028��H&¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/sinch/metadata/collector/MetadataCollector;", "Metadata", "", "collect", "()Ljava/lang/Object;", "metadata-collector_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/MetadataCollector.class */
public interface MetadataCollector<Metadata> {
    Metadata collect();
}
