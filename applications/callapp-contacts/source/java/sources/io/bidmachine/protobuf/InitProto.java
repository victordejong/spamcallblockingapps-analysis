package io.bidmachine.protobuf;

import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistry;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.adcom.AdcomProto;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/InitProto.class */
public final class InitProto {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n\u001ebidmachine/protobuf/init.proto\u0012\u0013bidmachine.protobuf\u001a%bidmachine/protobuf/adcom/adcom.proto\"\u0081\u0003\n\u000bInitRequest\u0012\u0011\n\tseller_id\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006bundle\u0018\u0002 \u0001(\t\u0012)\n\u0002os\u0018\u0003 \u0001(\u000e2\u001d.bidmachine.protobuf.adcom.OS\u0012\u000b\n\u0003osv\u0018\u0004 \u0001(\t\u00123\n\u0003geo\u0018\u0005 \u0001(\u000b2&.bidmachine.protobuf.adcom.Context.Geo\u0012\u000b\n\u0003sdk\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006sdkver\u0018\u0007 \u0001(\t\u0012\u000b\n\u0003ifa\u0018\b \u0001(\t\u0012\u000b\n\u0003ifv\u0018\u000b \u0001(\t\u0012\u000e\n\u0006bm_ifv\u0018\f \u0001(\t\u0012:\n\u000bdevice_type\u0018\t \u0001(\u000e2%.bidmachine.protobuf.adcom.DeviceType\u0012:\n\u0007contype\u0018\n \u0001(\u000e2).bidmachine.protobuf.adcom.ConnectionType\u0012\u000f\n\u0007app_ver\u0018\r \u0001(\t\u0012\u0012\n\nsession_id\u0018\u000e \u0001(\t\"\u0087\u0003\n\tAdNetwork\u0012\f\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0012\n\nclass_name\u0018\u0002 \u0001(\t\u0012G\n\rcustom_params\u0018\u0003 \u0003(\u000b20.bidmachine.protobuf.AdNetwork.CustomParamsEntry\u00127\n\bad_units\u0018\u0004 \u0003(\u000b2%.bidmachine.protobuf.AdNetwork.AdUnit\u001a3\n\u0011CustomParamsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\u001a \u0001\n\u0006AdUnit\u0012\u0011\n\tad_format\u0018\u0001 \u0001(\t\u0012N\n\rcustom_params\u0018\u0002 \u0003(\u000b27.bidmachine.protobuf.AdNetwork.AdUnit.CustomParamsEntry\u001a3\n\u0011CustomParamsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\"¦\u0001\n\fInitResponse\u0012\u0010\n\bendpoint\u0018\u0001 \u0001(\t\u00122\n\u0005event\u0018\u0002 \u0003(\u000b2#.bidmachine.protobuf.adcom.Ad.Event\u0012\u001b\n\u0013session_reset_after\u0018\u0003 \u0001(\r\u00123\n\u000bad_networks\u0018\u0004 \u0003(\u000b2\u001e.bidmachine.protobuf.AdNetworkB+\n\u0016io.bidmachine.protobufB\tInitProtoP\u0001¢\u0002\u0003BDMb\u0006proto3"}, new Descriptors.FileDescriptor[]{AdcomProto.getDescriptor()});

    /* renamed from: internal_static_bidmachine_protobuf_AdNetwork_AdUnit_CustomParamsEntry_descriptor */
    static final Descriptors.Descriptor f62650xb5890629;

    /* renamed from: internal_static_bidmachine_protobuf_AdNetwork_AdUnit_CustomParamsEntry_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62651x9987f3a7;
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_AdNetwork_AdUnit_descriptor;

    /* renamed from: internal_static_bidmachine_protobuf_AdNetwork_AdUnit_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62652xdeef64a3;

    /* renamed from: internal_static_bidmachine_protobuf_AdNetwork_CustomParamsEntry_descriptor */
    static final Descriptors.Descriptor f62653x7f725455;

    /* renamed from: internal_static_bidmachine_protobuf_AdNetwork_CustomParamsEntry_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62654xc00655d3;
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_AdNetwork_descriptor;
    static final GeneratedMessageV3.FieldAccessorTable internal_static_bidmachine_protobuf_AdNetwork_fieldAccessorTable;
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_InitRequest_descriptor;

    /* renamed from: internal_static_bidmachine_protobuf_InitRequest_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62655x8589c2fb;
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_InitResponse_descriptor;

    /* renamed from: internal_static_bidmachine_protobuf_InitResponse_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f62656xc91df30d;

    static {
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_bidmachine_protobuf_InitRequest_descriptor = descriptor2;
        f62655x8589c2fb = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"SellerId", "Bundle", "Os", "Osv", "Geo", "Sdk", "Sdkver", "Ifa", "Ifv", "BmIfv", "DeviceType", "Contype", "AppVer", "SessionId"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_bidmachine_protobuf_AdNetwork_descriptor = descriptor3;
        internal_static_bidmachine_protobuf_AdNetwork_fieldAccessorTable = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{"Name", "ClassName", "CustomParams", "AdUnits"});
        Descriptors.Descriptor descriptor4 = descriptor3.getNestedTypes().get(0);
        f62653x7f725455 = descriptor4;
        f62654xc00655d3 = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor5 = descriptor3.getNestedTypes().get(1);
        internal_static_bidmachine_protobuf_AdNetwork_AdUnit_descriptor = descriptor5;
        f62652xdeef64a3 = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{"AdFormat", "CustomParams"});
        Descriptors.Descriptor descriptor6 = descriptor5.getNestedTypes().get(0);
        f62650xb5890629 = descriptor6;
        f62651x9987f3a7 = new GeneratedMessageV3.FieldAccessorTable(descriptor6, new String[]{"Key", "Value"});
        Descriptors.Descriptor descriptor7 = getDescriptor().getMessageTypes().get(2);
        internal_static_bidmachine_protobuf_InitResponse_descriptor = descriptor7;
        f62656xc91df30d = new GeneratedMessageV3.FieldAccessorTable(descriptor7, new String[]{"Endpoint", "Event", "SessionResetAfter", "AdNetworks"});
        AdcomProto.getDescriptor();
    }

    private InitProto() {
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
