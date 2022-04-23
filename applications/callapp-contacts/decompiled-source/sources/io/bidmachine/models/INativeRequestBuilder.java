package io.bidmachine.models;

import io.bidmachine.MediaAssetType;
import io.bidmachine.models.INativeRequestBuilder;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/models/INativeRequestBuilder.class */
public interface INativeRequestBuilder<SelfType extends INativeRequestBuilder> {
    SelfType setMediaAssetTypes(MediaAssetType... mediaAssetTypeArr);
}
