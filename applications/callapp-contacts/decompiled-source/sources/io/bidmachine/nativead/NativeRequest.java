package io.bidmachine.nativead;

import io.bidmachine.AdRequest;
import io.bidmachine.AdsType;
import io.bidmachine.MediaAssetType;
import io.bidmachine.TargetingParams;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.INativeRequestBuilder;
import io.bidmachine.unified.UnifiedNativeAdRequestParams;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/NativeRequest.class */
public final class NativeRequest extends AdRequest<NativeRequest, UnifiedNativeAdRequestParams> {
    private List<MediaAssetType> mediaAssetTypes;

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/NativeRequest$AdRequestListener.class */
    public interface AdRequestListener extends AdRequest.AdRequestListener<NativeRequest> {
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/NativeRequest$Builder.class */
    public static final class Builder extends AdRequest.AdRequestBuilderImpl<Builder, NativeRequest> implements INativeRequestBuilder<Builder> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.bidmachine.AdRequest.AdRequestBuilderImpl
        public final NativeRequest createRequest() {
            return new NativeRequest();
        }

        @Override // io.bidmachine.models.INativeRequestBuilder
        public final Builder setMediaAssetTypes(MediaAssetType... mediaAssetTypeArr) {
            prepareRequest();
            if (mediaAssetTypeArr.length > 0) {
                ((NativeRequest) this.params).mediaAssetTypes.clear();
                ((NativeRequest) this.params).mediaAssetTypes.addAll(Arrays.asList(mediaAssetTypeArr));
            }
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/NativeRequest$a.class */
    public final class a extends AdRequest<NativeRequest, UnifiedNativeAdRequestParams>.BaseUnifiedAdRequestParams implements UnifiedNativeAdRequestParams {
        a(TargetingParams targetingParams, DataRestrictions dataRestrictions) {
            super(targetingParams, dataRestrictions);
        }

        @Override // io.bidmachine.unified.UnifiedNativeAdRequestParams
        public final boolean containsAssetType(MediaAssetType mediaAssetType) {
            return NativeRequest.this.containsAssetType(mediaAssetType);
        }
    }

    private NativeRequest() {
        super(AdsType.Native);
        this.mediaAssetTypes = new ArrayList<MediaAssetType>(MediaAssetType.values().length) { // from class: io.bidmachine.nativead.NativeRequest.1
            {
                add(MediaAssetType.Icon);
                add(MediaAssetType.Image);
            }
        };
    }

    public final boolean containsAssetType(MediaAssetType mediaAssetType) {
        return this.mediaAssetTypes.isEmpty() || this.mediaAssetTypes.contains(mediaAssetType) || this.mediaAssetTypes.contains(MediaAssetType.All);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.AdRequest
    public final UnifiedNativeAdRequestParams createUnifiedAdRequestParams(TargetingParams targetingParams, DataRestrictions dataRestrictions) {
        return new a(targetingParams, dataRestrictions);
    }
}
