package io.bidmachine.protobuf;

import com.explorestack.protobuf.AbstractMessageLite;
import com.explorestack.protobuf.AbstractParser;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.CodedInputStream;
import com.explorestack.protobuf.CodedOutputStream;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.Internal;
import com.explorestack.protobuf.InvalidProtocolBufferException;
import com.explorestack.protobuf.MapEntry;
import com.explorestack.protobuf.MapField;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Parser;
import com.explorestack.protobuf.RepeatedFieldBuilderV3;
import com.explorestack.protobuf.SingleFieldBuilderV3;
import com.explorestack.protobuf.UnknownFieldSet;
import com.explorestack.protobuf.WireFormat;
import com.explorestack.protobuf.adcom.Ad;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/AdExtension.class */
public final class AdExtension extends GeneratedMessageV3 implements AdExtensionOrBuilder {
    public static final int CLOSE_BUTTON_FIELD_NUMBER = 15;
    public static final int COMPANION_SKIPOFFSET_FIELD_NUMBER = 10;
    public static final int COUNTDOWN_FIELD_NUMBER = 14;
    public static final int CUSTOM_PARAMS_FIELD_NUMBER = 8;
    public static final int EVENT_FIELD_NUMBER = 7;
    public static final int IGNORES_SAFE_AREA_LAYOUT_GUIDE_FIELD_NUMBER = 16;
    public static final int LOAD_SKIPOFFSET_FIELD_NUMBER = 3;
    public static final int PRELOAD_FIELD_NUMBER = 2;
    public static final int PROGRESS_DURATION_FIELD_NUMBER = 19;
    public static final int PROGRESS_FIELD_NUMBER = 18;
    public static final int R1_FIELD_NUMBER = 12;
    public static final int R2_FIELD_NUMBER = 13;
    public static final int SKIPOFFSET_FIELD_NUMBER = 9;
    public static final int STORE_URL_FIELD_NUMBER = 17;
    public static final int USE_NATIVE_CLOSE_FIELD_NUMBER = 11;
    public static final int VIEWABILITY_DURATION_THRESHOLD_FIELD_NUMBER = 6;
    public static final int VIEWABILITY_IGNORE_WINDOW_FOCUS_FIELD_NUMBER = 20;
    public static final int VIEWABILITY_PIXEL_THRESHOLD_FIELD_NUMBER = 5;
    public static final int VIEWABILITY_TIME_THRESHOLD_FIELD_NUMBER = 4;
    private static final long serialVersionUID = 0;
    private ControlAsset closeButton_;
    private int companionSkipoffset_;
    private ControlAsset countdown_;
    private MapField<String, String> customParams_;
    private List<Ad.Event> event_;
    private boolean ignoresSafeAreaLayoutGuide_;
    private int loadSkipoffset_;
    private byte memoizedIsInitialized;
    private boolean preload_;
    private int progressDuration_;
    private ControlAsset progress_;
    private boolean r1_;
    private boolean r2_;
    private int skipoffset_;
    private volatile Object storeUrl_;
    private boolean useNativeClose_;
    private float viewabilityDurationThreshold_;
    private boolean viewabilityIgnoreWindowFocus_;
    private float viewabilityPixelThreshold_;
    private int viewabilityTimeThreshold_;
    private static final AdExtension DEFAULT_INSTANCE = new AdExtension();
    private static final Parser<AdExtension> PARSER = new AbstractParser<AdExtension>() { // from class: io.bidmachine.protobuf.AdExtension.1
        @Override // com.explorestack.protobuf.Parser
        public final AdExtension parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new AdExtension(codedInputStream, extensionRegistryLite);
        }
    };

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/AdExtension$Builder.class */
    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements AdExtensionOrBuilder {
        private int bitField0_;
        private SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> closeButtonBuilder_;
        private ControlAsset closeButton_;
        private int companionSkipoffset_;
        private SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> countdownBuilder_;
        private ControlAsset countdown_;
        private MapField<String, String> customParams_;
        private RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> eventBuilder_;
        private List<Ad.Event> event_;
        private boolean ignoresSafeAreaLayoutGuide_;
        private int loadSkipoffset_;
        private boolean preload_;
        private SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> progressBuilder_;
        private int progressDuration_;
        private ControlAsset progress_;
        private boolean r1_;
        private boolean r2_;
        private int skipoffset_;
        private Object storeUrl_;
        private boolean useNativeClose_;
        private float viewabilityDurationThreshold_;
        private boolean viewabilityIgnoreWindowFocus_;
        private float viewabilityPixelThreshold_;
        private int viewabilityTimeThreshold_;

        private Builder() {
            this.storeUrl_ = "";
            this.event_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.storeUrl_ = "";
            this.event_ = Collections.emptyList();
            maybeForceBuilderInitialization();
        }

        private void ensureEventIsMutable() {
            if ((this.bitField0_ & 1) == 0) {
                this.event_ = new ArrayList(this.event_);
                this.bitField0_ |= 1;
            }
        }

        private SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> getCloseButtonFieldBuilder() {
            if (this.closeButtonBuilder_ == null) {
                this.closeButtonBuilder_ = new SingleFieldBuilderV3<>(getCloseButton(), getParentForChildren(), isClean());
                this.closeButton_ = null;
            }
            return this.closeButtonBuilder_;
        }

        private SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> getCountdownFieldBuilder() {
            if (this.countdownBuilder_ == null) {
                this.countdownBuilder_ = new SingleFieldBuilderV3<>(getCountdown(), getParentForChildren(), isClean());
                this.countdown_ = null;
            }
            return this.countdownBuilder_;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_AdExtension_descriptor;
        }

        private RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> getEventFieldBuilder() {
            if (this.eventBuilder_ == null) {
                List<Ad.Event> list = this.event_;
                boolean z = true;
                if ((this.bitField0_ & 1) == 0) {
                    z = false;
                }
                this.eventBuilder_ = new RepeatedFieldBuilderV3<>(list, z, getParentForChildren(), isClean());
                this.event_ = null;
            }
            return this.eventBuilder_;
        }

        private SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> getProgressFieldBuilder() {
            if (this.progressBuilder_ == null) {
                this.progressBuilder_ = new SingleFieldBuilderV3<>(getProgress(), getParentForChildren(), isClean());
                this.progress_ = null;
            }
            return this.progressBuilder_;
        }

        private MapField<String, String> internalGetCustomParams() {
            MapField<String, String> mapField = this.customParams_;
            MapField<String, String> mapField2 = mapField;
            if (mapField == null) {
                mapField2 = MapField.emptyMapField(CustomParamsDefaultEntryHolder.defaultEntry);
            }
            return mapField2;
        }

        private MapField<String, String> internalGetMutableCustomParams() {
            onChanged();
            if (this.customParams_ == null) {
                this.customParams_ = MapField.newMapField(CustomParamsDefaultEntryHolder.defaultEntry);
            }
            if (!this.customParams_.isMutable()) {
                this.customParams_ = this.customParams_.copy();
            }
            return this.customParams_;
        }

        private void maybeForceBuilderInitialization() {
            if (AdExtension.alwaysUseFieldBuilders) {
                getEventFieldBuilder();
            }
        }

        public final Builder addAllEvent(Iterable<? extends Ad.Event> iterable) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureEventIsMutable();
                AbstractMessageLite.Builder.addAll((Iterable) iterable, (List) this.event_);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addAllMessages(iterable);
            }
            return this;
        }

        public final Builder addEvent(int i, Ad.Event.Builder builder) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureEventIsMutable();
                this.event_.add(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, builder.build());
            }
            return this;
        }

        public final Builder addEvent(int i, Ad.Event event) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(event);
                ensureEventIsMutable();
                this.event_.add(i, event);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(i, event);
            }
            return this;
        }

        public final Builder addEvent(Ad.Event.Builder builder) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureEventIsMutable();
                this.event_.add(builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(builder.build());
            }
            return this;
        }

        public final Builder addEvent(Ad.Event event) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(event);
                ensureEventIsMutable();
                this.event_.add(event);
                onChanged();
            } else {
                repeatedFieldBuilderV3.addMessage(event);
            }
            return this;
        }

        public final Ad.Event.Builder addEventBuilder() {
            return getEventFieldBuilder().addBuilder(Ad.Event.getDefaultInstance());
        }

        public final Ad.Event.Builder addEventBuilder(int i) {
            return getEventFieldBuilder().addBuilder(i, Ad.Event.getDefaultInstance());
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final AdExtension build() {
            AdExtension buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException((Message) buildPartial);
        }

        @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final AdExtension buildPartial() {
            AdExtension adExtension = new AdExtension(this);
            adExtension.preload_ = this.preload_;
            adExtension.loadSkipoffset_ = this.loadSkipoffset_;
            adExtension.skipoffset_ = this.skipoffset_;
            adExtension.companionSkipoffset_ = this.companionSkipoffset_;
            adExtension.useNativeClose_ = this.useNativeClose_;
            adExtension.r1_ = this.r1_;
            adExtension.r2_ = this.r2_;
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.countdownBuilder_;
            if (singleFieldBuilderV3 == null) {
                adExtension.countdown_ = this.countdown_;
            } else {
                adExtension.countdown_ = singleFieldBuilderV3.build();
            }
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV32 = this.closeButtonBuilder_;
            if (singleFieldBuilderV32 == null) {
                adExtension.closeButton_ = this.closeButton_;
            } else {
                adExtension.closeButton_ = singleFieldBuilderV32.build();
            }
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV33 = this.progressBuilder_;
            if (singleFieldBuilderV33 == null) {
                adExtension.progress_ = this.progress_;
            } else {
                adExtension.progress_ = singleFieldBuilderV33.build();
            }
            adExtension.progressDuration_ = this.progressDuration_;
            adExtension.ignoresSafeAreaLayoutGuide_ = this.ignoresSafeAreaLayoutGuide_;
            adExtension.storeUrl_ = this.storeUrl_;
            adExtension.viewabilityTimeThreshold_ = this.viewabilityTimeThreshold_;
            adExtension.viewabilityPixelThreshold_ = this.viewabilityPixelThreshold_;
            adExtension.viewabilityDurationThreshold_ = this.viewabilityDurationThreshold_;
            adExtension.viewabilityIgnoreWindowFocus_ = this.viewabilityIgnoreWindowFocus_;
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                if ((this.bitField0_ & 1) != 0) {
                    this.event_ = Collections.unmodifiableList(this.event_);
                    this.bitField0_ &= -2;
                }
                adExtension.event_ = this.event_;
            } else {
                adExtension.event_ = repeatedFieldBuilderV3.build();
            }
            adExtension.customParams_ = internalGetCustomParams();
            adExtension.customParams_.makeImmutable();
            onBuilt();
            return adExtension;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clear() {
            super.clear();
            this.preload_ = false;
            this.loadSkipoffset_ = 0;
            this.skipoffset_ = 0;
            this.companionSkipoffset_ = 0;
            this.useNativeClose_ = false;
            this.r1_ = false;
            this.r2_ = false;
            if (this.countdownBuilder_ == null) {
                this.countdown_ = null;
            } else {
                this.countdown_ = null;
                this.countdownBuilder_ = null;
            }
            if (this.closeButtonBuilder_ == null) {
                this.closeButton_ = null;
            } else {
                this.closeButton_ = null;
                this.closeButtonBuilder_ = null;
            }
            if (this.progressBuilder_ == null) {
                this.progress_ = null;
            } else {
                this.progress_ = null;
                this.progressBuilder_ = null;
            }
            this.progressDuration_ = 0;
            this.ignoresSafeAreaLayoutGuide_ = false;
            this.storeUrl_ = "";
            this.viewabilityTimeThreshold_ = 0;
            this.viewabilityPixelThreshold_ = BitmapDescriptorFactory.HUE_RED;
            this.viewabilityDurationThreshold_ = BitmapDescriptorFactory.HUE_RED;
            this.viewabilityIgnoreWindowFocus_ = false;
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.event_ = Collections.emptyList();
                this.bitField0_ &= -2;
            } else {
                repeatedFieldBuilderV3.clear();
            }
            internalGetMutableCustomParams().clear();
            return this;
        }

        public final Builder clearCloseButton() {
            if (this.closeButtonBuilder_ == null) {
                this.closeButton_ = null;
                onChanged();
            } else {
                this.closeButton_ = null;
                this.closeButtonBuilder_ = null;
            }
            return this;
        }

        public final Builder clearCompanionSkipoffset() {
            this.companionSkipoffset_ = 0;
            onChanged();
            return this;
        }

        public final Builder clearCountdown() {
            if (this.countdownBuilder_ == null) {
                this.countdown_ = null;
                onChanged();
            } else {
                this.countdown_ = null;
                this.countdownBuilder_ = null;
            }
            return this;
        }

        public final Builder clearCustomParams() {
            internalGetMutableCustomParams().getMutableMap().clear();
            return this;
        }

        public final Builder clearEvent() {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                this.event_ = Collections.emptyList();
                this.bitField0_ &= -2;
                onChanged();
            } else {
                repeatedFieldBuilderV3.clear();
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        public final Builder clearIgnoresSafeAreaLayoutGuide() {
            this.ignoresSafeAreaLayoutGuide_ = false;
            onChanged();
            return this;
        }

        @Deprecated
        public final Builder clearLoadSkipoffset() {
            this.loadSkipoffset_ = 0;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        @Deprecated
        public final Builder clearPreload() {
            this.preload_ = false;
            onChanged();
            return this;
        }

        public final Builder clearProgress() {
            if (this.progressBuilder_ == null) {
                this.progress_ = null;
                onChanged();
            } else {
                this.progress_ = null;
                this.progressBuilder_ = null;
            }
            return this;
        }

        public final Builder clearProgressDuration() {
            this.progressDuration_ = 0;
            onChanged();
            return this;
        }

        public final Builder clearR1() {
            this.r1_ = false;
            onChanged();
            return this;
        }

        public final Builder clearR2() {
            this.r2_ = false;
            onChanged();
            return this;
        }

        public final Builder clearSkipoffset() {
            this.skipoffset_ = 0;
            onChanged();
            return this;
        }

        public final Builder clearStoreUrl() {
            this.storeUrl_ = AdExtension.getDefaultInstance().getStoreUrl();
            onChanged();
            return this;
        }

        public final Builder clearUseNativeClose() {
            this.useNativeClose_ = false;
            onChanged();
            return this;
        }

        public final Builder clearViewabilityDurationThreshold() {
            this.viewabilityDurationThreshold_ = BitmapDescriptorFactory.HUE_RED;
            onChanged();
            return this;
        }

        public final Builder clearViewabilityIgnoreWindowFocus() {
            this.viewabilityIgnoreWindowFocus_ = false;
            onChanged();
            return this;
        }

        public final Builder clearViewabilityPixelThreshold() {
            this.viewabilityPixelThreshold_ = BitmapDescriptorFactory.HUE_RED;
            onChanged();
            return this;
        }

        public final Builder clearViewabilityTimeThreshold() {
            this.viewabilityTimeThreshold_ = 0;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder clone() {
            return (Builder) super.clone();
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final boolean containsCustomParams(String str) {
            Objects.requireNonNull(str);
            return internalGetCustomParams().getMap().containsKey(str);
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final ControlAsset getCloseButton() {
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.closeButtonBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            ControlAsset controlAsset = this.closeButton_;
            ControlAsset controlAsset2 = controlAsset;
            if (controlAsset == null) {
                controlAsset2 = ControlAsset.getDefaultInstance();
            }
            return controlAsset2;
        }

        public final ControlAsset.Builder getCloseButtonBuilder() {
            onChanged();
            return getCloseButtonFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final ControlAssetOrBuilder getCloseButtonOrBuilder() {
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.closeButtonBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            ControlAsset controlAsset = this.closeButton_;
            ControlAsset controlAsset2 = controlAsset;
            if (controlAsset == null) {
                controlAsset2 = ControlAsset.getDefaultInstance();
            }
            return controlAsset2;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final int getCompanionSkipoffset() {
            return this.companionSkipoffset_;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final ControlAsset getCountdown() {
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.countdownBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            ControlAsset controlAsset = this.countdown_;
            ControlAsset controlAsset2 = controlAsset;
            if (controlAsset == null) {
                controlAsset2 = ControlAsset.getDefaultInstance();
            }
            return controlAsset2;
        }

        public final ControlAsset.Builder getCountdownBuilder() {
            onChanged();
            return getCountdownFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final ControlAssetOrBuilder getCountdownOrBuilder() {
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.countdownBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            ControlAsset controlAsset = this.countdown_;
            ControlAsset controlAsset2 = controlAsset;
            if (controlAsset == null) {
                controlAsset2 = ControlAsset.getDefaultInstance();
            }
            return controlAsset2;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        @Deprecated
        public final Map<String, String> getCustomParams() {
            return getCustomParamsMap();
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final int getCustomParamsCount() {
            return internalGetCustomParams().getMap().size();
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final Map<String, String> getCustomParamsMap() {
            return internalGetCustomParams().getMap();
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final String getCustomParamsOrDefault(String str, String str2) {
            Objects.requireNonNull(str);
            Map<String, String> map = internalGetCustomParams().getMap();
            return map.containsKey(str) ? map.get(str) : str2;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final String getCustomParamsOrThrow(String str) {
            Objects.requireNonNull(str);
            Map<String, String> map = internalGetCustomParams().getMap();
            if (map.containsKey(str)) {
                return map.get(str);
            }
            throw new IllegalArgumentException();
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final AdExtension getDefaultInstanceForType() {
            return AdExtension.getDefaultInstance();
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
        public final Descriptors.Descriptor getDescriptorForType() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_AdExtension_descriptor;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final Ad.Event getEvent(int i) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            return repeatedFieldBuilderV3 == null ? this.event_.get(i) : repeatedFieldBuilderV3.getMessage(i);
        }

        public final Ad.Event.Builder getEventBuilder(int i) {
            return getEventFieldBuilder().getBuilder(i);
        }

        public final List<Ad.Event.Builder> getEventBuilderList() {
            return getEventFieldBuilder().getBuilderList();
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final int getEventCount() {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            return repeatedFieldBuilderV3 == null ? this.event_.size() : repeatedFieldBuilderV3.getCount();
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final List<Ad.Event> getEventList() {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            return repeatedFieldBuilderV3 == null ? Collections.unmodifiableList(this.event_) : repeatedFieldBuilderV3.getMessageList();
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final Ad.EventOrBuilder getEventOrBuilder(int i) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            return repeatedFieldBuilderV3 == null ? this.event_.get(i) : repeatedFieldBuilderV3.getMessageOrBuilder(i);
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final List<? extends Ad.EventOrBuilder> getEventOrBuilderList() {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            return repeatedFieldBuilderV3 != null ? repeatedFieldBuilderV3.getMessageOrBuilderList() : Collections.unmodifiableList(this.event_);
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final boolean getIgnoresSafeAreaLayoutGuide() {
            return this.ignoresSafeAreaLayoutGuide_;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        @Deprecated
        public final int getLoadSkipoffset() {
            return this.loadSkipoffset_;
        }

        @Deprecated
        public final Map<String, String> getMutableCustomParams() {
            return internalGetMutableCustomParams().getMutableMap();
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        @Deprecated
        public final boolean getPreload() {
            return this.preload_;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final ControlAsset getProgress() {
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.progressBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessage();
            }
            ControlAsset controlAsset = this.progress_;
            ControlAsset controlAsset2 = controlAsset;
            if (controlAsset == null) {
                controlAsset2 = ControlAsset.getDefaultInstance();
            }
            return controlAsset2;
        }

        public final ControlAsset.Builder getProgressBuilder() {
            onChanged();
            return getProgressFieldBuilder().getBuilder();
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final int getProgressDuration() {
            return this.progressDuration_;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final ControlAssetOrBuilder getProgressOrBuilder() {
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.progressBuilder_;
            if (singleFieldBuilderV3 != null) {
                return singleFieldBuilderV3.getMessageOrBuilder();
            }
            ControlAsset controlAsset = this.progress_;
            ControlAsset controlAsset2 = controlAsset;
            if (controlAsset == null) {
                controlAsset2 = ControlAsset.getDefaultInstance();
            }
            return controlAsset2;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final boolean getR1() {
            return this.r1_;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final boolean getR2() {
            return this.r2_;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final int getSkipoffset() {
            return this.skipoffset_;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final String getStoreUrl() {
            Object obj = this.storeUrl_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.storeUrl_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final ByteString getStoreUrlBytes() {
            Object obj = this.storeUrl_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.storeUrl_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final boolean getUseNativeClose() {
            return this.useNativeClose_;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final float getViewabilityDurationThreshold() {
            return this.viewabilityDurationThreshold_;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final boolean getViewabilityIgnoreWindowFocus() {
            return this.viewabilityIgnoreWindowFocus_;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final float getViewabilityPixelThreshold() {
            return this.viewabilityPixelThreshold_;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final int getViewabilityTimeThreshold() {
            return this.viewabilityTimeThreshold_;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final boolean hasCloseButton() {
            return (this.closeButtonBuilder_ == null && this.closeButton_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final boolean hasCountdown() {
            return (this.countdownBuilder_ == null && this.countdown_ == null) ? false : true;
        }

        @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
        public final boolean hasProgress() {
            return (this.progressBuilder_ == null && this.progress_ == null) ? false : true;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_AdExtension_fieldAccessorTable.ensureFieldAccessorsInitialized(AdExtension.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final MapField internalGetMapField(int i) {
            if (i == 8) {
                return internalGetCustomParams();
            }
            throw new RuntimeException("Invalid map field number: ".concat(String.valueOf(i)));
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
        public final MapField internalGetMutableMapField(int i) {
            if (i == 8) {
                return internalGetMutableCustomParams();
            }
            throw new RuntimeException("Invalid map field number: ".concat(String.valueOf(i)));
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            return true;
        }

        public final Builder mergeCloseButton(ControlAsset controlAsset) {
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.closeButtonBuilder_;
            if (singleFieldBuilderV3 == null) {
                ControlAsset controlAsset2 = this.closeButton_;
                if (controlAsset2 != null) {
                    this.closeButton_ = ControlAsset.newBuilder(controlAsset2).mergeFrom(controlAsset).buildPartial();
                } else {
                    this.closeButton_ = controlAsset;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(controlAsset);
            }
            return this;
        }

        public final Builder mergeCountdown(ControlAsset controlAsset) {
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.countdownBuilder_;
            if (singleFieldBuilderV3 == null) {
                ControlAsset controlAsset2 = this.countdown_;
                if (controlAsset2 != null) {
                    this.countdown_ = ControlAsset.newBuilder(controlAsset2).mergeFrom(controlAsset).buildPartial();
                } else {
                    this.countdown_ = controlAsset;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(controlAsset);
            }
            return this;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final io.bidmachine.protobuf.AdExtension.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
            /*
                r4 = this;
                r0 = 0
                r7 = r0
                com.explorestack.protobuf.Parser r0 = io.bidmachine.protobuf.AdExtension.access$5900()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                io.bidmachine.protobuf.AdExtension r0 = (io.bidmachine.protobuf.AdExtension) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0024
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x001a
                r0 = r4
                r1 = r5
                io.bidmachine.protobuf.AdExtension$Builder r0 = r0.mergeFrom(r1)
            L_0x001a:
                r0 = r4
                return r0
            L_0x001c:
                r6 = move-exception
                r0 = r7
                r5 = r0
                r0 = r6
                r7 = r0
                goto L_0x0037
            L_0x0024:
                r5 = move-exception
                r0 = r5
                com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: all -> 0x001c
                io.bidmachine.protobuf.AdExtension r0 = (io.bidmachine.protobuf.AdExtension) r0     // Catch: all -> 0x001c
                r6 = r0
                r0 = r5
                java.io.IOException r0 = r0.unwrapIOException()     // Catch: all -> 0x0032
                throw r0     // Catch: all -> 0x0032
            L_0x0032:
                r5 = move-exception
                r0 = r5
                r7 = r0
                r0 = r6
                r5 = r0
            L_0x0037:
                r0 = r5
                if (r0 == 0) goto L_0x0041
                r0 = r4
                r1 = r5
                io.bidmachine.protobuf.AdExtension$Builder r0 = r0.mergeFrom(r1)
            L_0x0041:
                r0 = r7
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.AdExtension.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.AdExtension$Builder");
        }

        @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeFrom(Message message) {
            if (message instanceof AdExtension) {
                return mergeFrom((AdExtension) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public final Builder mergeFrom(AdExtension adExtension) {
            if (adExtension == AdExtension.getDefaultInstance()) {
                return this;
            }
            if (adExtension.getPreload()) {
                setPreload(adExtension.getPreload());
            }
            if (adExtension.getLoadSkipoffset() != 0) {
                setLoadSkipoffset(adExtension.getLoadSkipoffset());
            }
            if (adExtension.getSkipoffset() != 0) {
                setSkipoffset(adExtension.getSkipoffset());
            }
            if (adExtension.getCompanionSkipoffset() != 0) {
                setCompanionSkipoffset(adExtension.getCompanionSkipoffset());
            }
            if (adExtension.getUseNativeClose()) {
                setUseNativeClose(adExtension.getUseNativeClose());
            }
            if (adExtension.getR1()) {
                setR1(adExtension.getR1());
            }
            if (adExtension.getR2()) {
                setR2(adExtension.getR2());
            }
            if (adExtension.hasCountdown()) {
                mergeCountdown(adExtension.getCountdown());
            }
            if (adExtension.hasCloseButton()) {
                mergeCloseButton(adExtension.getCloseButton());
            }
            if (adExtension.hasProgress()) {
                mergeProgress(adExtension.getProgress());
            }
            if (adExtension.getProgressDuration() != 0) {
                setProgressDuration(adExtension.getProgressDuration());
            }
            if (adExtension.getIgnoresSafeAreaLayoutGuide()) {
                setIgnoresSafeAreaLayoutGuide(adExtension.getIgnoresSafeAreaLayoutGuide());
            }
            if (!adExtension.getStoreUrl().isEmpty()) {
                this.storeUrl_ = adExtension.storeUrl_;
                onChanged();
            }
            if (adExtension.getViewabilityTimeThreshold() != 0) {
                setViewabilityTimeThreshold(adExtension.getViewabilityTimeThreshold());
            }
            if (adExtension.getViewabilityPixelThreshold() != BitmapDescriptorFactory.HUE_RED) {
                setViewabilityPixelThreshold(adExtension.getViewabilityPixelThreshold());
            }
            if (adExtension.getViewabilityDurationThreshold() != BitmapDescriptorFactory.HUE_RED) {
                setViewabilityDurationThreshold(adExtension.getViewabilityDurationThreshold());
            }
            if (adExtension.getViewabilityIgnoreWindowFocus()) {
                setViewabilityIgnoreWindowFocus(adExtension.getViewabilityIgnoreWindowFocus());
            }
            if (this.eventBuilder_ == null) {
                if (!adExtension.event_.isEmpty()) {
                    if (this.event_.isEmpty()) {
                        this.event_ = adExtension.event_;
                        this.bitField0_ &= -2;
                    } else {
                        ensureEventIsMutable();
                        this.event_.addAll(adExtension.event_);
                    }
                    onChanged();
                }
            } else if (!adExtension.event_.isEmpty()) {
                if (this.eventBuilder_.isEmpty()) {
                    this.eventBuilder_.dispose();
                    RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = null;
                    this.eventBuilder_ = null;
                    this.event_ = adExtension.event_;
                    this.bitField0_ &= -2;
                    if (AdExtension.alwaysUseFieldBuilders) {
                        repeatedFieldBuilderV3 = getEventFieldBuilder();
                    }
                    this.eventBuilder_ = repeatedFieldBuilderV3;
                } else {
                    this.eventBuilder_.addAllMessages(adExtension.event_);
                }
            }
            internalGetMutableCustomParams().mergeFrom(adExtension.internalGetCustomParams());
            mergeUnknownFields(adExtension.unknownFields);
            onChanged();
            return this;
        }

        public final Builder mergeProgress(ControlAsset controlAsset) {
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.progressBuilder_;
            if (singleFieldBuilderV3 == null) {
                ControlAsset controlAsset2 = this.progress_;
                if (controlAsset2 != null) {
                    this.progress_ = ControlAsset.newBuilder(controlAsset2).mergeFrom(controlAsset).buildPartial();
                } else {
                    this.progress_ = controlAsset;
                }
                onChanged();
            } else {
                singleFieldBuilderV3.mergeFrom(controlAsset);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.mergeUnknownFields(unknownFieldSet);
        }

        public final Builder putAllCustomParams(Map<String, String> map) {
            internalGetMutableCustomParams().getMutableMap().putAll(map);
            return this;
        }

        public final Builder putCustomParams(String str, String str2) {
            Objects.requireNonNull(str);
            Objects.requireNonNull(str2);
            internalGetMutableCustomParams().getMutableMap().put(str, str2);
            return this;
        }

        public final Builder removeCustomParams(String str) {
            Objects.requireNonNull(str);
            internalGetMutableCustomParams().getMutableMap().remove(str);
            return this;
        }

        public final Builder removeEvent(int i) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureEventIsMutable();
                this.event_.remove(i);
                onChanged();
            } else {
                repeatedFieldBuilderV3.remove(i);
            }
            return this;
        }

        public final Builder setCloseButton(ControlAsset.Builder builder) {
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.closeButtonBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.closeButton_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setCloseButton(ControlAsset controlAsset) {
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.closeButtonBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(controlAsset);
                this.closeButton_ = controlAsset;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(controlAsset);
            }
            return this;
        }

        public final Builder setCompanionSkipoffset(int i) {
            this.companionSkipoffset_ = i;
            onChanged();
            return this;
        }

        public final Builder setCountdown(ControlAsset.Builder builder) {
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.countdownBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.countdown_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setCountdown(ControlAsset controlAsset) {
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.countdownBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(controlAsset);
                this.countdown_ = controlAsset;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(controlAsset);
            }
            return this;
        }

        public final Builder setEvent(int i, Ad.Event.Builder builder) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                ensureEventIsMutable();
                this.event_.set(i, builder.build());
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, builder.build());
            }
            return this;
        }

        public final Builder setEvent(int i, Ad.Event event) {
            RepeatedFieldBuilderV3<Ad.Event, Ad.Event.Builder, Ad.EventOrBuilder> repeatedFieldBuilderV3 = this.eventBuilder_;
            if (repeatedFieldBuilderV3 == null) {
                Objects.requireNonNull(event);
                ensureEventIsMutable();
                this.event_.set(i, event);
                onChanged();
            } else {
                repeatedFieldBuilderV3.setMessage(i, event);
            }
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        public final Builder setIgnoresSafeAreaLayoutGuide(boolean z) {
            this.ignoresSafeAreaLayoutGuide_ = z;
            onChanged();
            return this;
        }

        @Deprecated
        public final Builder setLoadSkipoffset(int i) {
            this.loadSkipoffset_ = i;
            onChanged();
            return this;
        }

        @Deprecated
        public final Builder setPreload(boolean z) {
            this.preload_ = z;
            onChanged();
            return this;
        }

        public final Builder setProgress(ControlAsset.Builder builder) {
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.progressBuilder_;
            if (singleFieldBuilderV3 == null) {
                this.progress_ = builder.build();
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(builder.build());
            }
            return this;
        }

        public final Builder setProgress(ControlAsset controlAsset) {
            SingleFieldBuilderV3<ControlAsset, ControlAsset.Builder, ControlAssetOrBuilder> singleFieldBuilderV3 = this.progressBuilder_;
            if (singleFieldBuilderV3 == null) {
                Objects.requireNonNull(controlAsset);
                this.progress_ = controlAsset;
                onChanged();
            } else {
                singleFieldBuilderV3.setMessage(controlAsset);
            }
            return this;
        }

        public final Builder setProgressDuration(int i) {
            this.progressDuration_ = i;
            onChanged();
            return this;
        }

        public final Builder setR1(boolean z) {
            this.r1_ = z;
            onChanged();
            return this;
        }

        public final Builder setR2(boolean z) {
            this.r2_ = z;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        public final Builder setSkipoffset(int i) {
            this.skipoffset_ = i;
            onChanged();
            return this;
        }

        public final Builder setStoreUrl(String str) {
            Objects.requireNonNull(str);
            this.storeUrl_ = str;
            onChanged();
            return this;
        }

        public final Builder setStoreUrlBytes(ByteString byteString) {
            Objects.requireNonNull(byteString);
            AdExtension.checkByteStringIsUtf8(byteString);
            this.storeUrl_ = byteString;
            onChanged();
            return this;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return (Builder) super.setUnknownFields(unknownFieldSet);
        }

        public final Builder setUseNativeClose(boolean z) {
            this.useNativeClose_ = z;
            onChanged();
            return this;
        }

        public final Builder setViewabilityDurationThreshold(float f) {
            this.viewabilityDurationThreshold_ = f;
            onChanged();
            return this;
        }

        public final Builder setViewabilityIgnoreWindowFocus(boolean z) {
            this.viewabilityIgnoreWindowFocus_ = z;
            onChanged();
            return this;
        }

        public final Builder setViewabilityPixelThreshold(float f) {
            this.viewabilityPixelThreshold_ = f;
            onChanged();
            return this;
        }

        public final Builder setViewabilityTimeThreshold(int i) {
            this.viewabilityTimeThreshold_ = i;
            onChanged();
            return this;
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/AdExtension$ControlAsset.class */
    public static final class ControlAsset extends GeneratedMessageV3 implements ControlAssetOrBuilder {
        public static final int CONTENT_FIELD_NUMBER = 1;
        public static final int FILL_FIELD_NUMBER = 2;
        public static final int FONT_STYLE_FIELD_NUMBER = 3;
        public static final int HEIGHT_FIELD_NUMBER = 4;
        public static final int HIDEAFTER_FIELD_NUMBER = 5;
        public static final int MARGIN_FIELD_NUMBER = 6;
        public static final int OPACITY_FIELD_NUMBER = 7;
        public static final int OUTLINED_FIELD_NUMBER = 8;
        public static final int PADDING_FIELD_NUMBER = 9;
        public static final int SHADOW_FIELD_NUMBER = 10;
        public static final int STROKE_FIELD_NUMBER = 11;
        public static final int STROKE_WIDTH_FIELD_NUMBER = 18;
        public static final int STYLE_FIELD_NUMBER = 13;
        public static final int VISIBLE_FIELD_NUMBER = 14;
        public static final int WIDTH_FIELD_NUMBER = 15;
        public static final int X_FIELD_NUMBER = 16;
        public static final int Y_FIELD_NUMBER = 17;
        private static final long serialVersionUID = 0;
        private volatile Object content_;
        private volatile Object fill_;
        private int fontStyle_;
        private int height_;
        private int hideafter_;
        private volatile Object margin_;
        private byte memoizedIsInitialized;
        private float opacity_;
        private boolean outlined_;
        private volatile Object padding_;
        private volatile Object shadow_;
        private float strokeWidth_;
        private volatile Object stroke_;
        private volatile Object style_;
        private boolean visible_;
        private int width_;
        private volatile Object x_;
        private volatile Object y_;
        private static final ControlAsset DEFAULT_INSTANCE = new ControlAsset();
        private static final Parser<ControlAsset> PARSER = new AbstractParser<ControlAsset>() { // from class: io.bidmachine.protobuf.AdExtension.ControlAsset.1
            @Override // com.explorestack.protobuf.Parser
            public final ControlAsset parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return new ControlAsset(codedInputStream, extensionRegistryLite);
            }
        };

        /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/AdExtension$ControlAsset$Builder.class */
        public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements ControlAssetOrBuilder {
            private Object content_;
            private Object fill_;
            private int fontStyle_;
            private int height_;
            private int hideafter_;
            private Object margin_;
            private float opacity_;
            private boolean outlined_;
            private Object padding_;
            private Object shadow_;
            private float strokeWidth_;
            private Object stroke_;
            private Object style_;
            private boolean visible_;
            private int width_;
            private Object x_;
            private Object y_;

            private Builder() {
                this.content_ = "";
                this.fill_ = "";
                this.margin_ = "";
                this.padding_ = "";
                this.shadow_ = "";
                this.stroke_ = "";
                this.style_ = "";
                this.x_ = "";
                this.y_ = "";
                maybeForceBuilderInitialization();
            }

            private Builder(GeneratedMessageV3.BuilderParent builderParent) {
                super(builderParent);
                this.content_ = "";
                this.fill_ = "";
                this.margin_ = "";
                this.padding_ = "";
                this.shadow_ = "";
                this.stroke_ = "";
                this.style_ = "";
                this.x_ = "";
                this.y_ = "";
                maybeForceBuilderInitialization();
            }

            public static final Descriptors.Descriptor getDescriptor() {
                return ExtensionsProto.internal_static_bidmachine_protobuf_AdExtension_ControlAsset_descriptor;
            }

            private void maybeForceBuilderInitialization() {
                boolean unused = ControlAsset.alwaysUseFieldBuilders;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.addRepeatedField(fieldDescriptor, obj);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final ControlAsset build() {
                ControlAsset buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw newUninitializedMessageException((Message) buildPartial);
            }

            @Override // com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final ControlAsset buildPartial() {
                ControlAsset controlAsset = new ControlAsset(this);
                controlAsset.content_ = this.content_;
                controlAsset.fill_ = this.fill_;
                controlAsset.fontStyle_ = this.fontStyle_;
                controlAsset.height_ = this.height_;
                controlAsset.hideafter_ = this.hideafter_;
                controlAsset.margin_ = this.margin_;
                controlAsset.opacity_ = this.opacity_;
                controlAsset.outlined_ = this.outlined_;
                controlAsset.padding_ = this.padding_;
                controlAsset.shadow_ = this.shadow_;
                controlAsset.stroke_ = this.stroke_;
                controlAsset.strokeWidth_ = this.strokeWidth_;
                controlAsset.style_ = this.style_;
                controlAsset.visible_ = this.visible_;
                controlAsset.width_ = this.width_;
                controlAsset.x_ = this.x_;
                controlAsset.y_ = this.y_;
                onBuilt();
                return controlAsset;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clear() {
                super.clear();
                this.content_ = "";
                this.fill_ = "";
                this.fontStyle_ = 0;
                this.height_ = 0;
                this.hideafter_ = 0;
                this.margin_ = "";
                this.opacity_ = BitmapDescriptorFactory.HUE_RED;
                this.outlined_ = false;
                this.padding_ = "";
                this.shadow_ = "";
                this.stroke_ = "";
                this.strokeWidth_ = BitmapDescriptorFactory.HUE_RED;
                this.style_ = "";
                this.visible_ = false;
                this.width_ = 0;
                this.x_ = "";
                this.y_ = "";
                return this;
            }

            public final Builder clearContent() {
                this.content_ = ControlAsset.getDefaultInstance().getContent();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
                return (Builder) super.clearField(fieldDescriptor);
            }

            public final Builder clearFill() {
                this.fill_ = ControlAsset.getDefaultInstance().getFill();
                onChanged();
                return this;
            }

            public final Builder clearFontStyle() {
                this.fontStyle_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearHeight() {
                this.height_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearHideafter() {
                this.hideafter_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearMargin() {
                this.margin_ = ControlAsset.getDefaultInstance().getMargin();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
                return (Builder) super.clearOneof(oneofDescriptor);
            }

            public final Builder clearOpacity() {
                this.opacity_ = BitmapDescriptorFactory.HUE_RED;
                onChanged();
                return this;
            }

            public final Builder clearOutlined() {
                this.outlined_ = false;
                onChanged();
                return this;
            }

            public final Builder clearPadding() {
                this.padding_ = ControlAsset.getDefaultInstance().getPadding();
                onChanged();
                return this;
            }

            public final Builder clearShadow() {
                this.shadow_ = ControlAsset.getDefaultInstance().getShadow();
                onChanged();
                return this;
            }

            public final Builder clearStroke() {
                this.stroke_ = ControlAsset.getDefaultInstance().getStroke();
                onChanged();
                return this;
            }

            public final Builder clearStrokeWidth() {
                this.strokeWidth_ = BitmapDescriptorFactory.HUE_RED;
                onChanged();
                return this;
            }

            public final Builder clearStyle() {
                this.style_ = ControlAsset.getDefaultInstance().getStyle();
                onChanged();
                return this;
            }

            public final Builder clearVisible() {
                this.visible_ = false;
                onChanged();
                return this;
            }

            public final Builder clearWidth() {
                this.width_ = 0;
                onChanged();
                return this;
            }

            public final Builder clearX() {
                this.x_ = ControlAsset.getDefaultInstance().getX();
                onChanged();
                return this;
            }

            public final Builder clearY() {
                this.y_ = ControlAsset.getDefaultInstance().getY();
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder clone() {
                return (Builder) super.clone();
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final String getContent() {
                Object obj = this.content_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.content_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final ByteString getContentBytes() {
                Object obj = this.content_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.content_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
            public final ControlAsset getDefaultInstanceForType() {
                return ControlAsset.getDefaultInstance();
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder, com.explorestack.protobuf.MessageOrBuilder
            public final Descriptors.Descriptor getDescriptorForType() {
                return ExtensionsProto.internal_static_bidmachine_protobuf_AdExtension_ControlAsset_descriptor;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final String getFill() {
                Object obj = this.fill_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.fill_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final ByteString getFillBytes() {
                Object obj = this.fill_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.fill_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final int getFontStyle() {
                return this.fontStyle_;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final int getHeight() {
                return this.height_;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final int getHideafter() {
                return this.hideafter_;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final String getMargin() {
                Object obj = this.margin_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.margin_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final ByteString getMarginBytes() {
                Object obj = this.margin_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.margin_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final float getOpacity() {
                return this.opacity_;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final boolean getOutlined() {
                return this.outlined_;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final String getPadding() {
                Object obj = this.padding_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.padding_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final ByteString getPaddingBytes() {
                Object obj = this.padding_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.padding_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final String getShadow() {
                Object obj = this.shadow_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.shadow_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final ByteString getShadowBytes() {
                Object obj = this.shadow_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.shadow_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final String getStroke() {
                Object obj = this.stroke_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.stroke_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final ByteString getStrokeBytes() {
                Object obj = this.stroke_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.stroke_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final float getStrokeWidth() {
                return this.strokeWidth_;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final String getStyle() {
                Object obj = this.style_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.style_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final ByteString getStyleBytes() {
                Object obj = this.style_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.style_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final boolean getVisible() {
                return this.visible_;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final int getWidth() {
                return this.width_;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final String getX() {
                Object obj = this.x_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.x_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final ByteString getXBytes() {
                Object obj = this.x_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.x_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final String getY() {
                Object obj = this.y_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String stringUtf8 = ((ByteString) obj).toStringUtf8();
                this.y_ = stringUtf8;
                return stringUtf8;
            }

            @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
            public final ByteString getYBytes() {
                Object obj = this.y_;
                if (!(obj instanceof String)) {
                    return (ByteString) obj;
                }
                ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
                this.y_ = copyFromUtf8;
                return copyFromUtf8;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder
            public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
                return ExtensionsProto.internal_static_bidmachine_protobuf_AdExtension_ControlAsset_fieldAccessorTable.ensureFieldAccessorsInitialized(ControlAsset.class, Builder.class);
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.MessageLiteOrBuilder
            public final boolean isInitialized() {
                return true;
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.AbstractMessageLite.Builder, com.explorestack.protobuf.MessageLite.Builder, com.explorestack.protobuf.Message.Builder
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final io.bidmachine.protobuf.AdExtension.ControlAsset.Builder mergeFrom(com.explorestack.protobuf.CodedInputStream r5, com.explorestack.protobuf.ExtensionRegistryLite r6) throws java.io.IOException {
                /*
                    r4 = this;
                    r0 = 0
                    r7 = r0
                    com.explorestack.protobuf.Parser r0 = io.bidmachine.protobuf.AdExtension.ControlAsset.access$2200()     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r1 = r5
                    r2 = r6
                    java.lang.Object r0 = r0.parsePartialFrom(r1, r2)     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    io.bidmachine.protobuf.AdExtension$ControlAsset r0 = (io.bidmachine.protobuf.AdExtension.ControlAsset) r0     // Catch: all -> 0x001c, InvalidProtocolBufferException -> 0x0022
                    r5 = r0
                    r0 = r5
                    if (r0 == 0) goto L_0x001a
                    r0 = r4
                    r1 = r5
                    io.bidmachine.protobuf.AdExtension$ControlAsset$Builder r0 = r0.mergeFrom(r1)
                L_0x001a:
                    r0 = r4
                    return r0
                L_0x001c:
                    r5 = move-exception
                    r0 = r5
                    r6 = r0
                    goto L_0x0033
                L_0x0022:
                    r6 = move-exception
                    r0 = r6
                    com.explorestack.protobuf.MessageLite r0 = r0.getUnfinishedMessage()     // Catch: all -> 0x001c
                    io.bidmachine.protobuf.AdExtension$ControlAsset r0 = (io.bidmachine.protobuf.AdExtension.ControlAsset) r0     // Catch: all -> 0x001c
                    r5 = r0
                    r0 = r6
                    java.io.IOException r0 = r0.unwrapIOException()     // Catch: all -> 0x0030
                    throw r0     // Catch: all -> 0x0030
                L_0x0030:
                    r6 = move-exception
                    r0 = r5
                    r7 = r0
                L_0x0033:
                    r0 = r7
                    if (r0 == 0) goto L_0x003d
                    r0 = r4
                    r1 = r7
                    io.bidmachine.protobuf.AdExtension$ControlAsset$Builder r0 = r0.mergeFrom(r1)
                L_0x003d:
                    r0 = r6
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.protobuf.AdExtension.ControlAsset.Builder.mergeFrom(com.explorestack.protobuf.CodedInputStream, com.explorestack.protobuf.ExtensionRegistryLite):io.bidmachine.protobuf.AdExtension$ControlAsset$Builder");
            }

            @Override // com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeFrom(Message message) {
                if (message instanceof ControlAsset) {
                    return mergeFrom((ControlAsset) message);
                }
                super.mergeFrom(message);
                return this;
            }

            public final Builder mergeFrom(ControlAsset controlAsset) {
                if (controlAsset == ControlAsset.getDefaultInstance()) {
                    return this;
                }
                if (!controlAsset.getContent().isEmpty()) {
                    this.content_ = controlAsset.content_;
                    onChanged();
                }
                if (!controlAsset.getFill().isEmpty()) {
                    this.fill_ = controlAsset.fill_;
                    onChanged();
                }
                if (controlAsset.getFontStyle() != 0) {
                    setFontStyle(controlAsset.getFontStyle());
                }
                if (controlAsset.getHeight() != 0) {
                    setHeight(controlAsset.getHeight());
                }
                if (controlAsset.getHideafter() != 0) {
                    setHideafter(controlAsset.getHideafter());
                }
                if (!controlAsset.getMargin().isEmpty()) {
                    this.margin_ = controlAsset.margin_;
                    onChanged();
                }
                if (controlAsset.getOpacity() != BitmapDescriptorFactory.HUE_RED) {
                    setOpacity(controlAsset.getOpacity());
                }
                if (controlAsset.getOutlined()) {
                    setOutlined(controlAsset.getOutlined());
                }
                if (!controlAsset.getPadding().isEmpty()) {
                    this.padding_ = controlAsset.padding_;
                    onChanged();
                }
                if (!controlAsset.getShadow().isEmpty()) {
                    this.shadow_ = controlAsset.shadow_;
                    onChanged();
                }
                if (!controlAsset.getStroke().isEmpty()) {
                    this.stroke_ = controlAsset.stroke_;
                    onChanged();
                }
                if (controlAsset.getStrokeWidth() != BitmapDescriptorFactory.HUE_RED) {
                    setStrokeWidth(controlAsset.getStrokeWidth());
                }
                if (!controlAsset.getStyle().isEmpty()) {
                    this.style_ = controlAsset.style_;
                    onChanged();
                }
                if (controlAsset.getVisible()) {
                    setVisible(controlAsset.getVisible());
                }
                if (controlAsset.getWidth() != 0) {
                    setWidth(controlAsset.getWidth());
                }
                if (!controlAsset.getX().isEmpty()) {
                    this.x_ = controlAsset.x_;
                    onChanged();
                }
                if (!controlAsset.getY().isEmpty()) {
                    this.y_ = controlAsset.y_;
                    onChanged();
                }
                mergeUnknownFields(controlAsset.unknownFields);
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.AbstractMessage.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.mergeUnknownFields(unknownFieldSet);
            }

            public final Builder setContent(String str) {
                Objects.requireNonNull(str);
                this.content_ = str;
                onChanged();
                return this;
            }

            public final Builder setContentBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                ControlAsset.checkByteStringIsUtf8(byteString);
                this.content_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
                return (Builder) super.setField(fieldDescriptor, obj);
            }

            public final Builder setFill(String str) {
                Objects.requireNonNull(str);
                this.fill_ = str;
                onChanged();
                return this;
            }

            public final Builder setFillBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                ControlAsset.checkByteStringIsUtf8(byteString);
                this.fill_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setFontStyle(int i) {
                this.fontStyle_ = i;
                onChanged();
                return this;
            }

            public final Builder setHeight(int i) {
                this.height_ = i;
                onChanged();
                return this;
            }

            public final Builder setHideafter(int i) {
                this.hideafter_ = i;
                onChanged();
                return this;
            }

            public final Builder setMargin(String str) {
                Objects.requireNonNull(str);
                this.margin_ = str;
                onChanged();
                return this;
            }

            public final Builder setMarginBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                ControlAsset.checkByteStringIsUtf8(byteString);
                this.margin_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setOpacity(float f) {
                this.opacity_ = f;
                onChanged();
                return this;
            }

            public final Builder setOutlined(boolean z) {
                this.outlined_ = z;
                onChanged();
                return this;
            }

            public final Builder setPadding(String str) {
                Objects.requireNonNull(str);
                this.padding_ = str;
                onChanged();
                return this;
            }

            public final Builder setPaddingBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                ControlAsset.checkByteStringIsUtf8(byteString);
                this.padding_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
                return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
            }

            public final Builder setShadow(String str) {
                Objects.requireNonNull(str);
                this.shadow_ = str;
                onChanged();
                return this;
            }

            public final Builder setShadowBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                ControlAsset.checkByteStringIsUtf8(byteString);
                this.shadow_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setStroke(String str) {
                Objects.requireNonNull(str);
                this.stroke_ = str;
                onChanged();
                return this;
            }

            public final Builder setStrokeBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                ControlAsset.checkByteStringIsUtf8(byteString);
                this.stroke_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setStrokeWidth(float f) {
                this.strokeWidth_ = f;
                onChanged();
                return this;
            }

            public final Builder setStyle(String str) {
                Objects.requireNonNull(str);
                this.style_ = str;
                onChanged();
                return this;
            }

            public final Builder setStyleBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                ControlAsset.checkByteStringIsUtf8(byteString);
                this.style_ = byteString;
                onChanged();
                return this;
            }

            @Override // com.explorestack.protobuf.GeneratedMessageV3.Builder, com.explorestack.protobuf.Message.Builder
            public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
                return (Builder) super.setUnknownFields(unknownFieldSet);
            }

            public final Builder setVisible(boolean z) {
                this.visible_ = z;
                onChanged();
                return this;
            }

            public final Builder setWidth(int i) {
                this.width_ = i;
                onChanged();
                return this;
            }

            public final Builder setX(String str) {
                Objects.requireNonNull(str);
                this.x_ = str;
                onChanged();
                return this;
            }

            public final Builder setXBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                ControlAsset.checkByteStringIsUtf8(byteString);
                this.x_ = byteString;
                onChanged();
                return this;
            }

            public final Builder setY(String str) {
                Objects.requireNonNull(str);
                this.y_ = str;
                onChanged();
                return this;
            }

            public final Builder setYBytes(ByteString byteString) {
                Objects.requireNonNull(byteString);
                ControlAsset.checkByteStringIsUtf8(byteString);
                this.y_ = byteString;
                onChanged();
                return this;
            }
        }

        private ControlAsset() {
            this.memoizedIsInitialized = (byte) (-1);
            this.content_ = "";
            this.fill_ = "";
            this.margin_ = "";
            this.padding_ = "";
            this.shadow_ = "";
            this.stroke_ = "";
            this.style_ = "";
            this.x_ = "";
            this.y_ = "";
        }

        private ControlAsset(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            this();
            Objects.requireNonNull(extensionRegistryLite);
            UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
            boolean z = false;
            while (!z) {
                try {
                    try {
                        int readTag = codedInputStream.readTag();
                        switch (readTag) {
                            case 0:
                                break;
                            case 10:
                                this.content_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 18:
                                this.fill_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 24:
                                this.fontStyle_ = codedInputStream.readUInt32();
                                continue;
                            case 32:
                                this.height_ = codedInputStream.readUInt32();
                                continue;
                            case 40:
                                this.hideafter_ = codedInputStream.readUInt32();
                                continue;
                            case 50:
                                this.margin_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 61:
                                this.opacity_ = codedInputStream.readFloat();
                                continue;
                            case 64:
                                this.outlined_ = codedInputStream.readBool();
                                continue;
                            case 74:
                                this.padding_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 82:
                                this.shadow_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 90:
                                this.stroke_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 106:
                                this.style_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 112:
                                this.visible_ = codedInputStream.readBool();
                                continue;
                            case 120:
                                this.width_ = codedInputStream.readUInt32();
                                continue;
                            case 130:
                                this.x_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 138:
                                this.y_ = codedInputStream.readStringRequireUtf8();
                                continue;
                            case 149:
                                this.strokeWidth_ = codedInputStream.readFloat();
                                continue;
                            default:
                                if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                    break;
                                } else {
                                    continue;
                                }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                    }
                } finally {
                    this.unknownFields = newBuilder.build();
                    makeExtensionsImmutable();
                }
            }
        }

        private ControlAsset(GeneratedMessageV3.Builder<?> builder) {
            super(builder);
            this.memoizedIsInitialized = (byte) (-1);
        }

        public static ControlAsset getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_AdExtension_ControlAsset_descriptor;
        }

        public static Builder newBuilder() {
            return DEFAULT_INSTANCE.toBuilder();
        }

        public static Builder newBuilder(ControlAsset controlAsset) {
            return DEFAULT_INSTANCE.toBuilder().mergeFrom(controlAsset);
        }

        public static ControlAsset parseDelimitedFrom(InputStream inputStream) throws IOException {
            return (ControlAsset) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
        }

        public static ControlAsset parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ControlAsset) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ControlAsset parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString);
        }

        public static ControlAsset parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteString, extensionRegistryLite);
        }

        public static ControlAsset parseFrom(CodedInputStream codedInputStream) throws IOException {
            return (ControlAsset) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
        }

        public static ControlAsset parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ControlAsset) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
        }

        public static ControlAsset parseFrom(InputStream inputStream) throws IOException {
            return (ControlAsset) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
        }

        public static ControlAsset parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return (ControlAsset) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
        }

        public static ControlAsset parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer);
        }

        public static ControlAsset parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
        }

        public static ControlAsset parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr);
        }

        public static ControlAsset parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return PARSER.parseFrom(bArr, extensionRegistryLite);
        }

        public static Parser<ControlAsset> parser() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ControlAsset)) {
                return super.equals(obj);
            }
            ControlAsset controlAsset = (ControlAsset) obj;
            return getContent().equals(controlAsset.getContent()) && getFill().equals(controlAsset.getFill()) && getFontStyle() == controlAsset.getFontStyle() && getHeight() == controlAsset.getHeight() && getHideafter() == controlAsset.getHideafter() && getMargin().equals(controlAsset.getMargin()) && Float.floatToIntBits(getOpacity()) == Float.floatToIntBits(controlAsset.getOpacity()) && getOutlined() == controlAsset.getOutlined() && getPadding().equals(controlAsset.getPadding()) && getShadow().equals(controlAsset.getShadow()) && getStroke().equals(controlAsset.getStroke()) && Float.floatToIntBits(getStrokeWidth()) == Float.floatToIntBits(controlAsset.getStrokeWidth()) && getStyle().equals(controlAsset.getStyle()) && getVisible() == controlAsset.getVisible() && getWidth() == controlAsset.getWidth() && getX().equals(controlAsset.getX()) && getY().equals(controlAsset.getY()) && this.unknownFields.equals(controlAsset.unknownFields);
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final String getContent() {
            Object obj = this.content_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.content_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final ByteString getContentBytes() {
            Object obj = this.content_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.content_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
        public final ControlAsset getDefaultInstanceForType() {
            return DEFAULT_INSTANCE;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final String getFill() {
            Object obj = this.fill_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.fill_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final ByteString getFillBytes() {
            Object obj = this.fill_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fill_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final int getFontStyle() {
            return this.fontStyle_;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final int getHeight() {
            return this.height_;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final int getHideafter() {
            return this.hideafter_;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final String getMargin() {
            Object obj = this.margin_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.margin_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final ByteString getMarginBytes() {
            Object obj = this.margin_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.margin_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final float getOpacity() {
            return this.opacity_;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final boolean getOutlined() {
            return this.outlined_;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final String getPadding() {
            Object obj = this.padding_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.padding_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final ByteString getPaddingBytes() {
            Object obj = this.padding_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.padding_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Parser<ControlAsset> getParserForType() {
            return PARSER;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final int getSerializedSize() {
            int i = this.memoizedSize;
            if (i != -1) {
                return i;
            }
            int i2 = 0;
            if (!getContentBytes().isEmpty()) {
                i2 = 0 + GeneratedMessageV3.computeStringSize(1, this.content_);
            }
            int i3 = i2;
            if (!getFillBytes().isEmpty()) {
                i3 = i2 + GeneratedMessageV3.computeStringSize(2, this.fill_);
            }
            int i4 = this.fontStyle_;
            int i5 = i3;
            if (i4 != 0) {
                i5 = i3 + CodedOutputStream.computeUInt32Size(3, i4);
            }
            int i6 = this.height_;
            int i7 = i5;
            if (i6 != 0) {
                i7 = i5 + CodedOutputStream.computeUInt32Size(4, i6);
            }
            int i8 = this.hideafter_;
            int i9 = i7;
            if (i8 != 0) {
                i9 = i7 + CodedOutputStream.computeUInt32Size(5, i8);
            }
            int i10 = i9;
            if (!getMarginBytes().isEmpty()) {
                i10 = i9 + GeneratedMessageV3.computeStringSize(6, this.margin_);
            }
            float f = this.opacity_;
            int i11 = i10;
            if (f != BitmapDescriptorFactory.HUE_RED) {
                i11 = i10 + CodedOutputStream.computeFloatSize(7, f);
            }
            boolean z = this.outlined_;
            int i12 = i11;
            if (z) {
                i12 = i11 + CodedOutputStream.computeBoolSize(8, z);
            }
            int i13 = i12;
            if (!getPaddingBytes().isEmpty()) {
                i13 = i12 + GeneratedMessageV3.computeStringSize(9, this.padding_);
            }
            int i14 = i13;
            if (!getShadowBytes().isEmpty()) {
                i14 = i13 + GeneratedMessageV3.computeStringSize(10, this.shadow_);
            }
            int i15 = i14;
            if (!getStrokeBytes().isEmpty()) {
                i15 = i14 + GeneratedMessageV3.computeStringSize(11, this.stroke_);
            }
            int i16 = i15;
            if (!getStyleBytes().isEmpty()) {
                i16 = i15 + GeneratedMessageV3.computeStringSize(13, this.style_);
            }
            boolean z2 = this.visible_;
            int i17 = i16;
            if (z2) {
                i17 = i16 + CodedOutputStream.computeBoolSize(14, z2);
            }
            int i18 = this.width_;
            int i19 = i17;
            if (i18 != 0) {
                i19 = i17 + CodedOutputStream.computeUInt32Size(15, i18);
            }
            int i20 = i19;
            if (!getXBytes().isEmpty()) {
                i20 = i19 + GeneratedMessageV3.computeStringSize(16, this.x_);
            }
            int i21 = i20;
            if (!getYBytes().isEmpty()) {
                i21 = i20 + GeneratedMessageV3.computeStringSize(17, this.y_);
            }
            float f2 = this.strokeWidth_;
            int i22 = i21;
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                i22 = i21 + CodedOutputStream.computeFloatSize(18, f2);
            }
            int serializedSize = i22 + this.unknownFields.getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final String getShadow() {
            Object obj = this.shadow_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.shadow_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final ByteString getShadowBytes() {
            Object obj = this.shadow_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.shadow_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final String getStroke() {
            Object obj = this.stroke_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.stroke_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final ByteString getStrokeBytes() {
            Object obj = this.stroke_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.stroke_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final float getStrokeWidth() {
            return this.strokeWidth_;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final String getStyle() {
            Object obj = this.style_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.style_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final ByteString getStyleBytes() {
            Object obj = this.style_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.style_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
        public final UnknownFieldSet getUnknownFields() {
            return this.unknownFields;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final boolean getVisible() {
            return this.visible_;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final int getWidth() {
            return this.width_;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final String getX() {
            Object obj = this.x_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.x_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final ByteString getXBytes() {
            Object obj = this.x_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.x_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final String getY() {
            Object obj = this.y_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.y_ = stringUtf8;
            return stringUtf8;
        }

        @Override // io.bidmachine.protobuf.AdExtension.ControlAssetOrBuilder
        public final ByteString getYBytes() {
            Object obj = this.y_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.y_ = copyFromUtf8;
            return copyFromUtf8;
        }

        @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
        public final int hashCode() {
            if (this.memoizedHashCode != 0) {
                return this.memoizedHashCode;
            }
            int hashCode = ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 1) * 53) + getContent().hashCode()) * 37) + 2) * 53) + getFill().hashCode()) * 37) + 3) * 53) + getFontStyle()) * 37) + 4) * 53) + getHeight()) * 37) + 5) * 53) + getHideafter()) * 37) + 6) * 53) + getMargin().hashCode()) * 37) + 7) * 53) + Float.floatToIntBits(getOpacity())) * 37) + 8) * 53) + Internal.hashBoolean(getOutlined())) * 37) + 9) * 53) + getPadding().hashCode()) * 37) + 10) * 53) + getShadow().hashCode()) * 37) + 11) * 53) + getStroke().hashCode()) * 37) + 18) * 53) + Float.floatToIntBits(getStrokeWidth())) * 37) + 13) * 53) + getStyle().hashCode()) * 37) + 14) * 53) + Internal.hashBoolean(getVisible())) * 37) + 15) * 53) + getWidth()) * 37) + 16) * 53) + getX().hashCode()) * 37) + 17) * 53) + getY().hashCode()) * 29) + this.unknownFields.hashCode();
            this.memoizedHashCode = hashCode;
            return hashCode;
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return ExtensionsProto.internal_static_bidmachine_protobuf_AdExtension_ControlAsset_fieldAccessorTable.ensureFieldAccessorsInitialized(ControlAsset.class, Builder.class);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
        public final boolean isInitialized() {
            byte b2 = this.memoizedIsInitialized;
            if (b2 == 1) {
                return true;
            }
            if (b2 == 0) {
                return false;
            }
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder newBuilderForType() {
            return newBuilder();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
            return new Builder(builderParent);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3
        public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
            return new ControlAsset();
        }

        @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
        public final Builder toBuilder() {
            return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
        }

        @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
        public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!getContentBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 1, this.content_);
            }
            if (!getFillBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 2, this.fill_);
            }
            int i = this.fontStyle_;
            if (i != 0) {
                codedOutputStream.writeUInt32(3, i);
            }
            int i2 = this.height_;
            if (i2 != 0) {
                codedOutputStream.writeUInt32(4, i2);
            }
            int i3 = this.hideafter_;
            if (i3 != 0) {
                codedOutputStream.writeUInt32(5, i3);
            }
            if (!getMarginBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 6, this.margin_);
            }
            float f = this.opacity_;
            if (f != BitmapDescriptorFactory.HUE_RED) {
                codedOutputStream.writeFloat(7, f);
            }
            boolean z = this.outlined_;
            if (z) {
                codedOutputStream.writeBool(8, z);
            }
            if (!getPaddingBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 9, this.padding_);
            }
            if (!getShadowBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 10, this.shadow_);
            }
            if (!getStrokeBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 11, this.stroke_);
            }
            if (!getStyleBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 13, this.style_);
            }
            boolean z2 = this.visible_;
            if (z2) {
                codedOutputStream.writeBool(14, z2);
            }
            int i4 = this.width_;
            if (i4 != 0) {
                codedOutputStream.writeUInt32(15, i4);
            }
            if (!getXBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 16, this.x_);
            }
            if (!getYBytes().isEmpty()) {
                GeneratedMessageV3.writeString(codedOutputStream, 17, this.y_);
            }
            float f2 = this.strokeWidth_;
            if (f2 != BitmapDescriptorFactory.HUE_RED) {
                codedOutputStream.writeFloat(18, f2);
            }
            this.unknownFields.writeTo(codedOutputStream);
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder.class */
    public interface ControlAssetOrBuilder extends MessageOrBuilder {
        String getContent();

        ByteString getContentBytes();

        String getFill();

        ByteString getFillBytes();

        int getFontStyle();

        int getHeight();

        int getHideafter();

        String getMargin();

        ByteString getMarginBytes();

        float getOpacity();

        boolean getOutlined();

        String getPadding();

        ByteString getPaddingBytes();

        String getShadow();

        ByteString getShadowBytes();

        String getStroke();

        ByteString getStrokeBytes();

        float getStrokeWidth();

        String getStyle();

        ByteString getStyleBytes();

        boolean getVisible();

        int getWidth();

        String getX();

        ByteString getXBytes();

        String getY();

        ByteString getYBytes();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/AdExtension$CustomParamsDefaultEntryHolder.class */
    public static final class CustomParamsDefaultEntryHolder {
        static final MapEntry<String, String> defaultEntry = MapEntry.newDefaultInstance(ExtensionsProto.internal_static_bidmachine_protobuf_AdExtension_CustomParamsEntry_descriptor, WireFormat.FieldType.STRING, "", WireFormat.FieldType.STRING, "");

        private CustomParamsDefaultEntryHolder() {
        }
    }

    private AdExtension() {
        this.memoizedIsInitialized = (byte) (-1);
        this.storeUrl_ = "";
        this.event_ = Collections.emptyList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v36, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object] */
    private AdExtension(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        Objects.requireNonNull(extensionRegistryLite);
        UnknownFieldSet.Builder newBuilder = UnknownFieldSet.newBuilder();
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    int readTag = codedInputStream.readTag();
                    ControlAsset.Builder builder = null;
                    ControlAsset.Builder builder2 = null;
                    ControlAsset.Builder builder3 = null;
                    switch (readTag) {
                        case 0:
                            break;
                        case 16:
                            this.preload_ = codedInputStream.readBool();
                            continue;
                        case 24:
                            this.loadSkipoffset_ = codedInputStream.readUInt32();
                            continue;
                        case 32:
                            this.viewabilityTimeThreshold_ = codedInputStream.readUInt32();
                            continue;
                        case 45:
                            this.viewabilityPixelThreshold_ = codedInputStream.readFloat();
                            continue;
                        case 53:
                            this.viewabilityDurationThreshold_ = codedInputStream.readFloat();
                            continue;
                        case 58:
                            z2 = z2;
                            if (!z2 || !true) {
                                this.event_ = new ArrayList();
                                z2 |= true;
                            }
                            this.event_.add(codedInputStream.readMessage(Ad.Event.parser(), extensionRegistryLite));
                            continue;
                        case 66:
                            z2 = z2;
                            if (!z2 || !true) {
                                this.customParams_ = MapField.newMapField(CustomParamsDefaultEntryHolder.defaultEntry);
                                z2 |= true;
                            }
                            MapEntry mapEntry = (MapEntry) codedInputStream.readMessage(CustomParamsDefaultEntryHolder.defaultEntry.getParserForType(), extensionRegistryLite);
                            this.customParams_.getMutableMap().put(mapEntry.getKey(), mapEntry.getValue());
                            continue;
                        case 72:
                            this.skipoffset_ = codedInputStream.readUInt32();
                            continue;
                        case 80:
                            this.companionSkipoffset_ = codedInputStream.readUInt32();
                            continue;
                        case 88:
                            this.useNativeClose_ = codedInputStream.readBool();
                            continue;
                        case 96:
                            this.r1_ = codedInputStream.readBool();
                            continue;
                        case 104:
                            this.r2_ = codedInputStream.readBool();
                            continue;
                        case 114:
                            ControlAsset controlAsset = this.countdown_;
                            builder2 = controlAsset != null ? controlAsset.toBuilder() : builder2;
                            ControlAsset controlAsset2 = (ControlAsset) codedInputStream.readMessage(ControlAsset.parser(), extensionRegistryLite);
                            this.countdown_ = controlAsset2;
                            if (builder2 != null) {
                                builder2.mergeFrom(controlAsset2);
                                this.countdown_ = builder2.buildPartial();
                            } else {
                                continue;
                            }
                        case 122:
                            ControlAsset controlAsset3 = this.closeButton_;
                            builder = controlAsset3 != null ? controlAsset3.toBuilder() : builder;
                            ControlAsset controlAsset4 = (ControlAsset) codedInputStream.readMessage(ControlAsset.parser(), extensionRegistryLite);
                            this.closeButton_ = controlAsset4;
                            if (builder != null) {
                                builder.mergeFrom(controlAsset4);
                                this.closeButton_ = builder.buildPartial();
                            } else {
                                continue;
                            }
                        case 128:
                            this.ignoresSafeAreaLayoutGuide_ = codedInputStream.readBool();
                            continue;
                        case 138:
                            this.storeUrl_ = codedInputStream.readStringRequireUtf8();
                            continue;
                        case 146:
                            ControlAsset controlAsset5 = this.progress_;
                            builder3 = controlAsset5 != null ? controlAsset5.toBuilder() : builder3;
                            ControlAsset controlAsset6 = (ControlAsset) codedInputStream.readMessage(ControlAsset.parser(), extensionRegistryLite);
                            this.progress_ = controlAsset6;
                            if (builder3 != null) {
                                builder3.mergeFrom(controlAsset6);
                                this.progress_ = builder3.buildPartial();
                            } else {
                                continue;
                            }
                        case 152:
                            this.progressDuration_ = codedInputStream.readUInt32();
                            continue;
                        case 160:
                            this.viewabilityIgnoreWindowFocus_ = codedInputStream.readBool();
                            continue;
                        default:
                            if (!parseUnknownField(codedInputStream, newBuilder, extensionRegistryLite, readTag)) {
                                break;
                            } else {
                                continue;
                            }
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
                }
            } finally {
                if (z2 && true) {
                    this.event_ = Collections.unmodifiableList(this.event_);
                }
                this.unknownFields = newBuilder.build();
                makeExtensionsImmutable();
            }
        }
    }

    private AdExtension(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = (byte) (-1);
    }

    public static AdExtension getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return ExtensionsProto.internal_static_bidmachine_protobuf_AdExtension_descriptor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MapField<String, String> internalGetCustomParams() {
        MapField<String, String> mapField = this.customParams_;
        MapField<String, String> mapField2 = mapField;
        if (mapField == null) {
            mapField2 = MapField.emptyMapField(CustomParamsDefaultEntryHolder.defaultEntry);
        }
        return mapField2;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(AdExtension adExtension) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(adExtension);
    }

    public static AdExtension parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (AdExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static AdExtension parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AdExtension) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static AdExtension parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static AdExtension parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static AdExtension parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (AdExtension) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static AdExtension parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AdExtension) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static AdExtension parseFrom(InputStream inputStream) throws IOException {
        return (AdExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static AdExtension parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (AdExtension) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static AdExtension parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer);
    }

    public static AdExtension parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteBuffer, extensionRegistryLite);
    }

    public static AdExtension parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static AdExtension parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<AdExtension> parser() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final boolean containsCustomParams(String str) {
        Objects.requireNonNull(str);
        return internalGetCustomParams().getMap().containsKey(str);
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdExtension)) {
            return super.equals(obj);
        }
        AdExtension adExtension = (AdExtension) obj;
        if (getPreload() != adExtension.getPreload() || getLoadSkipoffset() != adExtension.getLoadSkipoffset() || getSkipoffset() != adExtension.getSkipoffset() || getCompanionSkipoffset() != adExtension.getCompanionSkipoffset() || getUseNativeClose() != adExtension.getUseNativeClose() || getR1() != adExtension.getR1() || getR2() != adExtension.getR2() || hasCountdown() != adExtension.hasCountdown()) {
            return false;
        }
        if ((hasCountdown() && !getCountdown().equals(adExtension.getCountdown())) || hasCloseButton() != adExtension.hasCloseButton()) {
            return false;
        }
        if ((!hasCloseButton() || getCloseButton().equals(adExtension.getCloseButton())) && hasProgress() == adExtension.hasProgress()) {
            return (!hasProgress() || getProgress().equals(adExtension.getProgress())) && getProgressDuration() == adExtension.getProgressDuration() && getIgnoresSafeAreaLayoutGuide() == adExtension.getIgnoresSafeAreaLayoutGuide() && getStoreUrl().equals(adExtension.getStoreUrl()) && getViewabilityTimeThreshold() == adExtension.getViewabilityTimeThreshold() && Float.floatToIntBits(getViewabilityPixelThreshold()) == Float.floatToIntBits(adExtension.getViewabilityPixelThreshold()) && Float.floatToIntBits(getViewabilityDurationThreshold()) == Float.floatToIntBits(adExtension.getViewabilityDurationThreshold()) && getViewabilityIgnoreWindowFocus() == adExtension.getViewabilityIgnoreWindowFocus() && getEventList().equals(adExtension.getEventList()) && internalGetCustomParams().equals(adExtension.internalGetCustomParams()) && this.unknownFields.equals(adExtension.unknownFields);
        }
        return false;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final ControlAsset getCloseButton() {
        ControlAsset controlAsset = this.closeButton_;
        ControlAsset controlAsset2 = controlAsset;
        if (controlAsset == null) {
            controlAsset2 = ControlAsset.getDefaultInstance();
        }
        return controlAsset2;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final ControlAssetOrBuilder getCloseButtonOrBuilder() {
        return getCloseButton();
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final int getCompanionSkipoffset() {
        return this.companionSkipoffset_;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final ControlAsset getCountdown() {
        ControlAsset controlAsset = this.countdown_;
        ControlAsset controlAsset2 = controlAsset;
        if (controlAsset == null) {
            controlAsset2 = ControlAsset.getDefaultInstance();
        }
        return controlAsset2;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final ControlAssetOrBuilder getCountdownOrBuilder() {
        return getCountdown();
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    @Deprecated
    public final Map<String, String> getCustomParams() {
        return getCustomParamsMap();
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final int getCustomParamsCount() {
        return internalGetCustomParams().getMap().size();
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final Map<String, String> getCustomParamsMap() {
        return internalGetCustomParams().getMap();
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final String getCustomParamsOrDefault(String str, String str2) {
        Objects.requireNonNull(str);
        Map<String, String> map = internalGetCustomParams().getMap();
        return map.containsKey(str) ? map.get(str) : str2;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final String getCustomParamsOrThrow(String str) {
        Objects.requireNonNull(str);
        Map<String, String> map = internalGetCustomParams().getMap();
        if (map.containsKey(str)) {
            return map.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.explorestack.protobuf.MessageLiteOrBuilder, com.explorestack.protobuf.MessageOrBuilder
    public final AdExtension getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final Ad.Event getEvent(int i) {
        return this.event_.get(i);
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final int getEventCount() {
        return this.event_.size();
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final List<Ad.Event> getEventList() {
        return this.event_;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final Ad.EventOrBuilder getEventOrBuilder(int i) {
        return this.event_.get(i);
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final List<? extends Ad.EventOrBuilder> getEventOrBuilderList() {
        return this.event_;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final boolean getIgnoresSafeAreaLayoutGuide() {
        return this.ignoresSafeAreaLayoutGuide_;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    @Deprecated
    public final int getLoadSkipoffset() {
        return this.loadSkipoffset_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Parser<AdExtension> getParserForType() {
        return PARSER;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    @Deprecated
    public final boolean getPreload() {
        return this.preload_;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final ControlAsset getProgress() {
        ControlAsset controlAsset = this.progress_;
        ControlAsset controlAsset2 = controlAsset;
        if (controlAsset == null) {
            controlAsset2 = ControlAsset.getDefaultInstance();
        }
        return controlAsset2;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final int getProgressDuration() {
        return this.progressDuration_;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final ControlAssetOrBuilder getProgressOrBuilder() {
        return getProgress();
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final boolean getR1() {
        return this.r1_;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final boolean getR2() {
        return this.r2_;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        boolean z = this.preload_;
        int computeBoolSize = z ? CodedOutputStream.computeBoolSize(2, z) + 0 : 0;
        int i2 = this.loadSkipoffset_;
        int i3 = computeBoolSize;
        if (i2 != 0) {
            i3 = computeBoolSize + CodedOutputStream.computeUInt32Size(3, i2);
        }
        int i4 = this.viewabilityTimeThreshold_;
        int i5 = i3;
        if (i4 != 0) {
            i5 = i3 + CodedOutputStream.computeUInt32Size(4, i4);
        }
        float f = this.viewabilityPixelThreshold_;
        int i6 = i5;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            i6 = i5 + CodedOutputStream.computeFloatSize(5, f);
        }
        float f2 = this.viewabilityDurationThreshold_;
        int i7 = i6;
        int i8 = 0;
        if (f2 != BitmapDescriptorFactory.HUE_RED) {
            i7 = i6 + CodedOutputStream.computeFloatSize(6, f2);
            i8 = 0;
        }
        while (i8 < this.event_.size()) {
            i7 += CodedOutputStream.computeMessageSize(7, this.event_.get(i8));
            i8++;
        }
        int i9 = i7;
        for (Map.Entry<String, String> entry : internalGetCustomParams().getMap().entrySet()) {
            i9 += CodedOutputStream.computeMessageSize(8, CustomParamsDefaultEntryHolder.defaultEntry.newBuilderForType().setKey(entry.getKey()).setValue(entry.getValue()).build());
        }
        int i10 = this.skipoffset_;
        int i11 = i9;
        if (i10 != 0) {
            i11 = i9 + CodedOutputStream.computeUInt32Size(9, i10);
        }
        int i12 = this.companionSkipoffset_;
        int i13 = i11;
        if (i12 != 0) {
            i13 = i11 + CodedOutputStream.computeUInt32Size(10, i12);
        }
        boolean z2 = this.useNativeClose_;
        int i14 = i13;
        if (z2) {
            i14 = i13 + CodedOutputStream.computeBoolSize(11, z2);
        }
        boolean z3 = this.r1_;
        int i15 = i14;
        if (z3) {
            i15 = i14 + CodedOutputStream.computeBoolSize(12, z3);
        }
        boolean z4 = this.r2_;
        int i16 = i15;
        if (z4) {
            i16 = i15 + CodedOutputStream.computeBoolSize(13, z4);
        }
        int i17 = i16;
        if (this.countdown_ != null) {
            i17 = i16 + CodedOutputStream.computeMessageSize(14, getCountdown());
        }
        int i18 = i17;
        if (this.closeButton_ != null) {
            i18 = i17 + CodedOutputStream.computeMessageSize(15, getCloseButton());
        }
        boolean z5 = this.ignoresSafeAreaLayoutGuide_;
        int i19 = i18;
        if (z5) {
            i19 = i18 + CodedOutputStream.computeBoolSize(16, z5);
        }
        int i20 = i19;
        if (!getStoreUrlBytes().isEmpty()) {
            i20 = i19 + GeneratedMessageV3.computeStringSize(17, this.storeUrl_);
        }
        int i21 = i20;
        if (this.progress_ != null) {
            i21 = i20 + CodedOutputStream.computeMessageSize(18, getProgress());
        }
        int i22 = this.progressDuration_;
        int i23 = i21;
        if (i22 != 0) {
            i23 = i21 + CodedOutputStream.computeUInt32Size(19, i22);
        }
        boolean z6 = this.viewabilityIgnoreWindowFocus_;
        int i24 = i23;
        if (z6) {
            i24 = i23 + CodedOutputStream.computeBoolSize(20, z6);
        }
        int serializedSize = i24 + this.unknownFields.getSerializedSize();
        this.memoizedSize = serializedSize;
        return serializedSize;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final int getSkipoffset() {
        return this.skipoffset_;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final String getStoreUrl() {
        Object obj = this.storeUrl_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.storeUrl_ = stringUtf8;
        return stringUtf8;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final ByteString getStoreUrlBytes() {
        Object obj = this.storeUrl_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.storeUrl_ = copyFromUtf8;
        return copyFromUtf8;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.MessageOrBuilder
    public final UnknownFieldSet getUnknownFields() {
        return this.unknownFields;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final boolean getUseNativeClose() {
        return this.useNativeClose_;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final float getViewabilityDurationThreshold() {
        return this.viewabilityDurationThreshold_;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final boolean getViewabilityIgnoreWindowFocus() {
        return this.viewabilityIgnoreWindowFocus_;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final float getViewabilityPixelThreshold() {
        return this.viewabilityPixelThreshold_;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final int getViewabilityTimeThreshold() {
        return this.viewabilityTimeThreshold_;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final boolean hasCloseButton() {
        return this.closeButton_ != null;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final boolean hasCountdown() {
        return this.countdown_ != null;
    }

    @Override // io.bidmachine.protobuf.AdExtensionOrBuilder
    public final boolean hasProgress() {
        return this.progress_ != null;
    }

    @Override // com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.Message
    public final int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((((((((((((((((((((((((getDescriptor().hashCode() + 779) * 37) + 2) * 53) + Internal.hashBoolean(getPreload())) * 37) + 3) * 53) + getLoadSkipoffset()) * 37) + 9) * 53) + getSkipoffset()) * 37) + 10) * 53) + getCompanionSkipoffset()) * 37) + 11) * 53) + Internal.hashBoolean(getUseNativeClose())) * 37) + 12) * 53) + Internal.hashBoolean(getR1())) * 37) + 13) * 53) + Internal.hashBoolean(getR2());
        int i = hashCode;
        if (hasCountdown()) {
            i = (((hashCode * 37) + 14) * 53) + getCountdown().hashCode();
        }
        int i2 = i;
        if (hasCloseButton()) {
            i2 = (((i * 37) + 15) * 53) + getCloseButton().hashCode();
        }
        int i3 = i2;
        if (hasProgress()) {
            i3 = (((i2 * 37) + 18) * 53) + getProgress().hashCode();
        }
        int progressDuration = (((((((((((((((((((((((((((i3 * 37) + 19) * 53) + getProgressDuration()) * 37) + 16) * 53) + Internal.hashBoolean(getIgnoresSafeAreaLayoutGuide())) * 37) + 17) * 53) + getStoreUrl().hashCode()) * 37) + 4) * 53) + getViewabilityTimeThreshold()) * 37) + 5) * 53) + Float.floatToIntBits(getViewabilityPixelThreshold())) * 37) + 6) * 53) + Float.floatToIntBits(getViewabilityDurationThreshold())) * 37) + 20) * 53) + Internal.hashBoolean(getViewabilityIgnoreWindowFocus());
        int i4 = progressDuration;
        if (getEventCount() > 0) {
            i4 = (((progressDuration * 37) + 7) * 53) + getEventList().hashCode();
        }
        int i5 = i4;
        if (!internalGetCustomParams().getMap().isEmpty()) {
            i5 = (((i4 * 37) + 8) * 53) + internalGetCustomParams().hashCode();
        }
        int hashCode2 = (i5 * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode2;
        return hashCode2;
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return ExtensionsProto.internal_static_bidmachine_protobuf_AdExtension_fieldAccessorTable.ensureFieldAccessorsInitialized(AdExtension.class, Builder.class);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final MapField internalGetMapField(int i) {
        if (i == 8) {
            return internalGetCustomParams();
        }
        throw new RuntimeException("Invalid map field number: ".concat(String.valueOf(i)));
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLiteOrBuilder
    public final boolean isInitialized() {
        byte b2 = this.memoizedIsInitialized;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder newBuilderForType() {
        return newBuilder();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3
    public final Object newInstance(GeneratedMessageV3.UnusedPrivateParameter unusedPrivateParameter) {
        return new AdExtension();
    }

    @Override // com.explorestack.protobuf.MessageLite, com.explorestack.protobuf.Message
    public final Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    @Override // com.explorestack.protobuf.GeneratedMessageV3, com.explorestack.protobuf.AbstractMessage, com.explorestack.protobuf.MessageLite
    public final void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        boolean z = this.preload_;
        if (z) {
            codedOutputStream.writeBool(2, z);
        }
        int i = this.loadSkipoffset_;
        if (i != 0) {
            codedOutputStream.writeUInt32(3, i);
        }
        int i2 = this.viewabilityTimeThreshold_;
        if (i2 != 0) {
            codedOutputStream.writeUInt32(4, i2);
        }
        float f = this.viewabilityPixelThreshold_;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            codedOutputStream.writeFloat(5, f);
        }
        float f2 = this.viewabilityDurationThreshold_;
        if (f2 != BitmapDescriptorFactory.HUE_RED) {
            codedOutputStream.writeFloat(6, f2);
        }
        for (int i3 = 0; i3 < this.event_.size(); i3++) {
            codedOutputStream.writeMessage(7, this.event_.get(i3));
        }
        GeneratedMessageV3.serializeStringMapTo(codedOutputStream, internalGetCustomParams(), CustomParamsDefaultEntryHolder.defaultEntry, 8);
        int i4 = this.skipoffset_;
        if (i4 != 0) {
            codedOutputStream.writeUInt32(9, i4);
        }
        int i5 = this.companionSkipoffset_;
        if (i5 != 0) {
            codedOutputStream.writeUInt32(10, i5);
        }
        boolean z2 = this.useNativeClose_;
        if (z2) {
            codedOutputStream.writeBool(11, z2);
        }
        boolean z3 = this.r1_;
        if (z3) {
            codedOutputStream.writeBool(12, z3);
        }
        boolean z4 = this.r2_;
        if (z4) {
            codedOutputStream.writeBool(13, z4);
        }
        if (this.countdown_ != null) {
            codedOutputStream.writeMessage(14, getCountdown());
        }
        if (this.closeButton_ != null) {
            codedOutputStream.writeMessage(15, getCloseButton());
        }
        boolean z5 = this.ignoresSafeAreaLayoutGuide_;
        if (z5) {
            codedOutputStream.writeBool(16, z5);
        }
        if (!getStoreUrlBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 17, this.storeUrl_);
        }
        if (this.progress_ != null) {
            codedOutputStream.writeMessage(18, getProgress());
        }
        int i6 = this.progressDuration_;
        if (i6 != 0) {
            codedOutputStream.writeUInt32(19, i6);
        }
        boolean z6 = this.viewabilityIgnoreWindowFocus_;
        if (z6) {
            codedOutputStream.writeBool(20, z6);
        }
        this.unknownFields.writeTo(codedOutputStream);
    }
}
