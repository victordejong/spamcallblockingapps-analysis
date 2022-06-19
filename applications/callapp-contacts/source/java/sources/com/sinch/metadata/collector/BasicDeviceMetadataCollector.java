package com.sinch.metadata.collector;

import android.os.Build;
import com.sinch.metadata.model.DeviceMetadata;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\f\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0002H\u0016¨\u0006\u0006"}, m4298d2 = {"Lcom/sinch/metadata/collector/BasicDeviceMetadataCollector;", "Lcom/sinch/metadata/collector/MetadataCollector;", "Lcom/sinch/metadata/model/DeviceMetadata;", "Lcom/sinch/metadata/collector/DeviceMetadataCollector;", "()V", "collect", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/collector/BasicDeviceMetadataCollector.class */
public final class BasicDeviceMetadataCollector implements MetadataCollector<DeviceMetadata> {
    @Override // com.sinch.metadata.collector.MetadataCollector
    public final DeviceMetadata collect() {
        String str = Build.MODEL;
        C18524p.m3849a((Object) str, "Build.MODEL");
        String str2 = Build.DEVICE;
        C18524p.m3849a((Object) str2, "Build.DEVICE");
        String str3 = Build.MANUFACTURER;
        C18524p.m3849a((Object) str3, "Build.MANUFACTURER");
        return new DeviceMetadata(str, str2, str3);
    }
}
