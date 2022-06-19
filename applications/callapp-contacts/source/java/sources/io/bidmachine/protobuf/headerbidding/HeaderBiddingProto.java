package io.bidmachine.protobuf.headerbidding;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistry;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/headerbidding/HeaderBiddingProto.class */
public final class HeaderBiddingProto {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n5bidmachine/protobuf/headerbidding/headerbidding.proto\u0012!bidmachine.protobuf.headerbidding\"Ö\u0002\n\u0016HeaderBiddingPlacement\u0012R\n\bad_units\u0018\u0001 \u0003(\u000b2@.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnit\u001aç\u0001\n\u0006AdUnit\u0012\u000e\n\u0006bidder\u0018\u0001 \u0001(\t\u0012\u0015\n\rbidder_sdkver\u0018\u0002 \u0001(\t\u0012i\n\rclient_params\u0018\u0003 \u0003(\u000b2R.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement.AdUnit.ClientParamsEntry\u0012\u0016\n\u000eprice_estimate\u0018\u0004 \u0001(\u0001\u001a3\n\u0011ClientParamsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"Å\u0002\n\u000fHeaderBiddingAd\u0012\u000e\n\u0006bidder\u0018\u0001 \u0001(\t\u0012[\n\rclient_params\u0018\u0002 \u0003(\u000b2D.bidmachine.protobuf.headerbidding.HeaderBiddingAd.ClientParamsEntry\u0012[\n\rserver_params\u0018\u0003 \u0003(\u000b2D.bidmachine.protobuf.headerbidding.HeaderBiddingAd.ServerParamsEntry\u001a3\n\u0011ClientParamsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\u001a3\n\u0011ServerParamsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001BB\n$io.bidmachine.protobuf.headerbiddingB\u0012HeaderBiddingProtoP\u0001¢\u0002\u0003BDMb\u0006proto3"}, new Descriptors.FileDescriptor[0]);

    /* renamed from: internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ClientParamsEntry_descriptor */
    static final Descriptors.Descriptor f62661x81b5b3da;

    /* renamed from: internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ClientParamsEntry_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62662x3c086058;

    /* renamed from: internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ServerParamsEntry_descriptor */
    static final Descriptors.Descriptor f62663x64f68552;

    /* renamed from: internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_ServerParamsEntry_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62664x3dfc39d0;

    /* renamed from: internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_descriptor */
    static final Descriptors.Descriptor f62665x7474efbc;

    /* renamed from: internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62666xa9c69a3a;

    /* renamed from: internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_ClientParamsEntry_descriptor */
    static final Descriptors.Descriptor f62667x652ceffc;

    /* renamed from: internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_ClientParamsEntry_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62668x739a5a7a;

    /* renamed from: internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_descriptor */
    static final Descriptors.Descriptor f62669x82b2505e;

    /* renamed from: internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_AdUnit_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62670xa7f238dc;

    /* renamed from: internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_descriptor */
    static final Descriptors.Descriptor f62671x11be5538;

    /* renamed from: internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62672xbf00c3b6;

    static {
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        f62671x11be5538 = descriptor2;
        f62672xbf00c3b6 = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"AdUnits"});
        Descriptors.Descriptor descriptor3 = descriptor2.getNestedTypes().get(0);
        f62669x82b2505e = descriptor3;
        f62670xa7f238dc = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"Bidder", "BidderSdkver", "ClientParams", "PriceEstimate"});
        Descriptors.Descriptor descriptor4 = descriptor3.getNestedTypes().get(0);
        f62667x652ceffc = descriptor4;
        f62668x739a5a7a = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor5 = getDescriptor().getMessageTypes().get(1);
        f62665x7474efbc = descriptor5;
        f62666xa9c69a3a = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{"Bidder", "ClientParams", "ServerParams"});
        Descriptors.Descriptor descriptor6 = descriptor5.getNestedTypes().get(0);
        f62661x81b5b3da = descriptor6;
        f62662x3c086058 = new GeneratedMessageV3.FieldAccessorTable(descriptor6, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor7 = descriptor5.getNestedTypes().get(1);
        f62663x64f68552 = descriptor7;
        f62664x3dfc39d0 = new GeneratedMessageV3.FieldAccessorTable(descriptor7, new String[]{"Key", "Value"});
    }

    private HeaderBiddingProto() {
    }

    public static Descriptors.FileDescriptor getDescriptor() {
        return descriptor;
    }

    public static void registerAllExtensions(ExtensionRegistry extensionRegistry) {
        registerAllExtensions((ExtensionRegistryLite) extensionRegistry);
    }

    public static void registerAllExtensions(ExtensionRegistryLite extensionRegistryLite) {
    }
}
