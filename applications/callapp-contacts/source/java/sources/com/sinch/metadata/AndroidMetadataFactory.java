package com.sinch.metadata;

import android.content.Context;
import com.sinch.metadata.collector.BasicBatteryLevelCollector;
import com.sinch.metadata.collector.BasicDeviceMetadataCollector;
import com.sinch.metadata.collector.BasicLocaleCollector;
import com.sinch.metadata.collector.BasicNetworkInfoCollector;
import com.sinch.metadata.collector.sim.BasicSimStateCollector;
import com.sinch.metadata.collector.sim.LollipopSimCardInfoCollector;
import com.sinch.metadata.collector.sim.ReflectionSafeSimCardInfoCollector;
import com.sinch.metadata.model.PhoneMetadata;
import com.sinch.verification.utils.Factory;
import com.sinch.verification.utils.api.ApiLevelUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018��2\f\u0012\u0004\u0012\u00020\u00020\u0001j\u0002`\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lcom/sinch/metadata/AndroidMetadataFactory;", "Lcom/sinch/verification/utils/Factory;", "Lcom/sinch/metadata/model/PhoneMetadata;", "Lcom/sinch/metadata/model/PhoneMetadataFactory;", "context", "Landroid/content/Context;", "sdk", "", "sdkFlavor", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V", "create", "metadata-collector_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/metadata/AndroidMetadataFactory.class */
public final class AndroidMetadataFactory implements Factory<PhoneMetadata> {
    private final Context context;
    private final String sdk;
    private final String sdkFlavor;

    public AndroidMetadataFactory(Context context, String sdk, String sdkFlavor) {
        C18524p.m3841c(context, "context");
        C18524p.m3841c(sdk, "sdk");
        C18524p.m3841c(sdkFlavor, "sdkFlavor");
        this.context = context;
        this.sdk = sdk;
        this.sdkFlavor = sdkFlavor;
    }

    @Override // com.sinch.verification.utils.Factory
    public final PhoneMetadata create() {
        return PhoneMetadata.Companion.createUsing(this.sdk, this.sdkFlavor, new BasicDeviceMetadataCollector(), ApiLevelUtils.INSTANCE.isApi22OrLater() ? new ReflectionSafeSimCardInfoCollector(this.context) : new LollipopSimCardInfoCollector(), new BasicSimStateCollector(this.context), new BasicLocaleCollector(this.context), new BasicPermissionsCollector(this.context), new BasicNetworkInfoCollector(this.context), new BasicBatteryLevelCollector(this.context));
    }
}
