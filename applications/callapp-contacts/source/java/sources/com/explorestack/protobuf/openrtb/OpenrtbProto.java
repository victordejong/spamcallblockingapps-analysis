package com.explorestack.protobuf.openrtb;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.explorestack.protobuf.AnyProto;
import com.explorestack.protobuf.Descriptors;
import com.explorestack.protobuf.ExtensionRegistry;
import com.explorestack.protobuf.ExtensionRegistryLite;
import com.explorestack.protobuf.GeneratedMessageV3;
import com.explorestack.protobuf.StructProto;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/OpenrtbProto.class */
public final class OpenrtbProto {
    private static Descriptors.FileDescriptor descriptor = Descriptors.FileDescriptor.internalBuildGeneratedFileFrom(new String[]{"\n)bidmachine/protobuf/openrtb/openrtb.proto\u0012\u001bbidmachine.protobuf.openrtb\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\"¼\u0001\n\u0007Openrtb\u0012\u000b\n\u0003ver\u0018\u0001 \u0001(\t\u0012\u0012\n\ndomainspec\u0018\u0002 \u0001(\t\u0012\u0011\n\tdomainver\u0018\u0003 \u0001(\t\u00127\n\u0007request\u0018\u0004 \u0001(\u000b2$.bidmachine.protobuf.openrtb.RequestH��\u00129\n\bresponse\u0018\u0005 \u0001(\u000b2%.bidmachine.protobuf.openrtb.ResponseH��B\t\n\u0007payload\"Ð\t\n\u0007Request\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\f\n\u0004test\u0018\u0002 \u0001(\b\u0012\f\n\u0004tmax\u0018\u0003 \u0001(\r\u0012\n\n\u0002at\u0018\u0004 \u0001(\r\u0012\u000b\n\u0003cur\u0018\u0005 \u0003(\t\u0012\f\n\u0004seat\u0018\u0006 \u0003(\t\u0012\r\n\u0005wseat\u0018\u0007 \u0001(\b\u0012\r\n\u0005cdata\u0018\b \u0001(\t\u0012;\n\u0006source\u0018\t \u0001(\u000b2+.bidmachine.protobuf.openrtb.Request.Source\u00127\n\u0004item\u0018\n \u0003(\u000b2).bidmachine.protobuf.openrtb.Request.Item\u0012\u000f\n\u0007package\u0018\u000b \u0001(\r\u0012%\n\u0007context\u0018\f \u0001(\u000b2\u0014.google.protobuf.Any\u0012$\n\u0003ext\u0018\u000e \u0001(\u000b2\u0017.google.protobuf.Struct\u0012'\n\text_proto\u0018\r \u0003(\u000b2\u0014.google.protobuf.Any\u001a®\u0001\n\u0006Source\u0012\u000b\n\u0003tid\u0018\u0001 \u0001(\t\u0012\n\n\u0002ds\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006dsgver\u0018\u0003 \u0001(\r\u0012\u000e\n\u0006digest\u0018\u0004 \u0001(\t\u0012\f\n\u0004cert\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006pchain\u0018\u0006 \u0001(\t\u0012$\n\u0003ext\u0018\b \u0001(\u000b2\u0017.google.protobuf.Struct\u0012'\n\text_proto\u0018\u0007 \u0003(\u000b2\u0014.google.protobuf.Any\u001a©\u0005\n\u0004Item\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000b\n\u0003qty\u0018\u0002 \u0001(\r\u0012\u000b\n\u0003seq\u0018\u0003 \u0001(\r\u0012\u000b\n\u0003flr\u0018\u0004 \u0001(\u0001\u0012\u000e\n\u0006flrcur\u0018\u0006 \u0001(\t\u0012\u000b\n\u0003exp\u0018\u0007 \u0001(\r\u0012\n\n\u0002dt\u0018\b \u0001(\t\u0012\f\n\u0004dlvy\u0018\t \u0001(\r\u0012@\n\u0006metric\u0018\n \u0003(\u000b20.bidmachine.protobuf.openrtb.Request.Item.Metric\u0012<\n\u0004deal\u0018\u000b \u0003(\u000b2..bidmachine.protobuf.openrtb.Request.Item.Deal\u0012\u000f\n\u0007private\u0018\f \u0001(\b\u0012\"\n\u0004spec\u0018\r \u0001(\u000b2\u0014.google.protobuf.Any\u0012$\n\u0003ext\u0018\u000f \u0001(\u000b2\u0017.google.protobuf.Struct\u0012'\n\text_proto\u0018\u000e \u0003(\u000b2\u0014.google.protobuf.Any\u001a\u0084\u0001\n\u0006Metric\u0012\f\n\u0004type\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0002\u0012\u000e\n\u0006vendor\u0018\u0003 \u0001(\t\u0012$\n\u0003ext\u0018\u0005 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012'\n\text_proto\u0018\u0004 \u0003(\u000b2\u0014.google.protobuf.Any\u001a«\u0001\n\u0004Deal\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000b\n\u0003flr\u0018\u0002 \u0001(\u0001\u0012\u000e\n\u0006flrcur\u0018\u0003 \u0001(\t\u0012\n\n\u0002at\u0018\u0004 \u0001(\r\u0012\r\n\u0005wseat\u0018\u0005 \u0003(\t\u0012\u0010\n\bwadomain\u0018\u0006 \u0003(\t\u0012$\n\u0003ext\u0018\b \u0001(\u000b2\u0017.google.protobuf.Struct\u0012'\n\text_proto\u0018\u0007 \u0003(\u000b2\u0014.google.protobuf.Any\"\u0091\u0007\n\bResponse\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\r\n\u0005bidid\u0018\u0002 \u0001(\t\u00125\n\u0003nbr\u0018\u0003 \u0001(\u000e2(.bidmachine.protobuf.openrtb.NoBidReason\u0012\u000b\n\u0003cur\u0018\u0004 \u0001(\t\u0012\r\n\u0005cdata\u0018\u0005 \u0001(\t\u0012>\n\u0007seatbid\u0018\u0006 \u0003(\u000b2-.bidmachine.protobuf.openrtb.Response.Seatbid\u0012$\n\u0003ext\u0018\b \u0001(\u000b2\u0017.google.protobuf.Struct\u0012'\n\text_proto\u0018\u0007 \u0003(\u000b2\u0014.google.protobuf.Any\u001a\u0087\u0005\n\u0007Seatbid\u0012\f\n\u0004seat\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007package\u0018\u0002 \u0001(\b\u0012>\n\u0003bid\u0018\u0003 \u0003(\u000b21.bidmachine.protobuf.openrtb.Response.Seatbid.Bid\u0012$\n\u0003ext\u0018\u0005 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012'\n\text_proto\u0018\u0004 \u0003(\u000b2\u0014.google.protobuf.Any\u001aÍ\u0003\n\u0003Bid\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\f\n\u0004item\u0018\u0002 \u0001(\t\u0012\r\n\u0005price\u0018\u0003 \u0001(\u0001\u0012\f\n\u0004deal\u0018\u0004 \u0001(\t\u0012\u000b\n\u0003cid\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006tactic\u0018\u0006 \u0001(\t\u0012\f\n\u0004purl\u0018\u0007 \u0001(\t\u0012\f\n\u0004burl\u0018\b \u0001(\t\u0012\f\n\u0004lurl\u0018\t \u0001(\t\u0012\u000b\n\u0003exp\u0018\n \u0001(\r\u0012\u000b\n\u0003mid\u0018\u000b \u0001(\t\u0012F\n\u0005macro\u0018\f \u0003(\u000b27.bidmachine.protobuf.openrtb.Response.Seatbid.Bid.Macro\u0012#\n\u0005media\u0018\r \u0001(\u000b2\u0014.google.protobuf.Any\u0012$\n\u0003ext\u0018\u000f \u0001(\u000b2\u0017.google.protobuf.Struct\u0012'\n\text_proto\u0018\u000e \u0003(\u000b2\u0014.google.protobuf.Any\u001ar\n\u0005Macro\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\u0012$\n\u0003ext\u0018\u0004 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012'\n\text_proto\u0018\u0003 \u0003(\u000b2\u0014.google.protobuf.Any*\u0086\u0005\n\u000bNoBidReason\u0012\u0019\n\u0015NO_BID_REASON_INVALID\u0010��\u0012!\n\u001dNO_BID_REASON_TECHNICAL_ERROR\u0010\u0001\u0012!\n\u001dNO_BID_REASON_INVALID_REQUEST\u0010\u0002\u0012#\n\u001fNO_BID_REASON_KNOWN_WEB_CRAWLER\u0010\u0003\u0012#\n\u001fNO_BID_REASON_NON_HUMAN_TRAFFIC\u0010\u0004\u0012\u001a\n\u0016NO_BID_REASON_PROXY_IP\u0010\u0005\u0012$\n NO_BID_REASON_UNSUPPORTED_DEVICE\u0010\u0006\u0012\u0019\n\u0015NO_BID_REASON_BLOCKED\u0010\u0007\u0012 \n\u001cNO_BID_REASON_UNMATCHED_USER\u0010\b\u0012$\n NO_BID_REASON_DAILY_USER_CAP_MET\u0010\t\u0012&\n\"NO_BID_REASON_DAILY_DOMAIN_CAP_MET\u0010\n\u00123\n/NO_BID_REASON_ADS_TXT_AUTHORIZATION_UNAVAILABLE\u0010\u000b\u00121\n-NO_BID_REASON_ADS_TXT_AUTHORIZATION_VIOLATION\u0010\f\u00125\n1NO_BID_REASON_ADS_CERT_AUTHENTICATION_UNAVAILABLE\u0010\r\u00123\n/NO_BID_REASON_ADS_CERT_AUTHENTICATION_VIOLATION\u0010\u000e\u0012+\n'NO_BID_REASON_INSUFFICIENT_AUCTION_TIME\u0010\u000f*\u0093\n\n\nLossReason\u0012\u0017\n\u0013LOSS_REASON_BID_WON\u0010��\u0012\u001e\n\u001aLOSS_REASON_INTERNAL_ERROR\u0010\u0001\u0012.\n*LOSS_REASON_IMPRESSION_OPPORTUNITY_EXPIRED\u0010\u0002\u0012$\n LOSS_REASON_INVALID_BID_RESPONSE\u0010\u0003\u0012\u001f\n\u001bLOSS_REASON_INVALID_DEAL_ID\u0010\u0004\u0012\"\n\u001eLOSS_REASON_INVALID_AUCTION_ID\u0010\u0005\u0012)\n%LOSS_REASON_INVALID_ADVERTISER_DOMAIN\u0010\u0006\u0012\u001e\n\u001aLOSS_REASON_MISSING_MARKUP\u0010\u0007\u0012#\n\u001fLOSS_REASON_MISSING_CREATIVE_ID\u0010\b\u0012!\n\u001dLOSS_REASON_MISSING_BID_PRICE\u0010\t\u0012.\n*LOSS_REASON_MISSING_CREATIVE_APPROVAL_DATA\u0010\n\u0012#\n\u001fLOSS_REASON_BELOW_AUCTION_FLOOR\u0010d\u0012 \n\u001cLOSS_REASON_BELOW_DEAL_FLOOR\u0010e\u0012\"\n\u001eLOSS_REASON_LOST_TO_HIGHER_BID\u0010f\u0012\u001e\n\u001aLOSS_REASON_LOST_TO_A_DEAL\u0010g\u0012\u001c\n\u0018LOSS_REASON_SEAT_BLOCKED\u0010h\u0012*\n%LOSS_REASON_CREATIVE_FILTERED_GENERAL\u0010È\u0001\u00125\n0LOSS_REASON_CREATIVE_FILTERED_PENDING_PROCESSING\u0010É\u0001\u0012.\n)LOSS_REASON_CREATIVE_FILTERED_DISAPPROVED\u0010Ê\u0001\u00123\n.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED\u0010Ë\u0001\u0012<\n7LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT\u0010Ì\u0001\u00128\n3LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS\u0010Í\u0001\u0012-\n(LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE\u0010Î\u0001\u00126\n1LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS\u0010Ï\u0001\u00126\n1LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS\u0010Ð\u0001\u0012@\n;LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS\u0010Ñ\u0001\u00125\n0LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS\u0010Ò\u0001\u00125\n0LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG\u0010Ó\u0001\u00126\n1LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL\u0010Ô\u0001B:\n!com.explorestack.protobuf.openrtbB\fOpenrtbProtoP\u0001¢\u0002\u0004ORTBb\u0006proto3"}, new Descriptors.FileDescriptor[]{AnyProto.getDescriptor(), StructProto.getDescriptor()});
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_openrtb_Openrtb_descriptor;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Openrtb_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f33016x8296282d;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Request_Item_Deal_descriptor */
    static final Descriptors.Descriptor f33017x3226081d;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Request_Item_Deal_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f33018xbecdc19b;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Request_Item_Metric_descriptor */
    static final Descriptors.Descriptor f33019xdecf8999;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Request_Item_Metric_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f33020xff8c0717;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Request_Item_descriptor */
    static final Descriptors.Descriptor f33021x6653af74;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Request_Item_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f33022x7da621f2;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Request_Source_descriptor */
    static final Descriptors.Descriptor f33023x2fe25b2c;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Request_Source_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f33024x208995aa;
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_openrtb_Request_descriptor;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Request_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f33025x197a58d4;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_Macro_descriptor */
    static final Descriptors.Descriptor f33026x46766d2;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_Macro_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f33027xb5339b50;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_descriptor */
    static final Descriptors.Descriptor f33028xabe1f45f;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_Bid_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f33029x9d824bdd;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_descriptor */
    static final Descriptors.Descriptor f33030xcd91b6bd;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f33031xed70d03b;
    static final Descriptors.Descriptor internal_static_bidmachine_protobuf_openrtb_Response_descriptor;

    /* renamed from: internal_static_bidmachine_protobuf_openrtb_Response_fieldAccessorTable */
    static final GeneratedMessageV3.FieldAccessorTable f33032xb3401854;

    static {
        Descriptors.Descriptor descriptor2 = getDescriptor().getMessageTypes().get(0);
        internal_static_bidmachine_protobuf_openrtb_Openrtb_descriptor = descriptor2;
        f33016x8296282d = new GeneratedMessageV3.FieldAccessorTable(descriptor2, new String[]{"Ver", "Domainspec", "Domainver", "Request", "Response", "Payload"});
        Descriptors.Descriptor descriptor3 = getDescriptor().getMessageTypes().get(1);
        internal_static_bidmachine_protobuf_openrtb_Request_descriptor = descriptor3;
        f33025x197a58d4 = new GeneratedMessageV3.FieldAccessorTable(descriptor3, new String[]{JsonDocumentFields.POLICY_ID, "Test", "Tmax", "At", "Cur", "Seat", "Wseat", "Cdata", "Source", "Item", "Package", "Context", "Ext", "ExtProto"});
        Descriptors.Descriptor descriptor4 = descriptor3.getNestedTypes().get(0);
        f33023x2fe25b2c = descriptor4;
        f33024x208995aa = new GeneratedMessageV3.FieldAccessorTable(descriptor4, new String[]{"Tid", "Ds", "Dsgver", "Digest", "Cert", "Pchain", "Ext", "ExtProto"});
        Descriptors.Descriptor descriptor5 = descriptor3.getNestedTypes().get(1);
        f33021x6653af74 = descriptor5;
        f33022x7da621f2 = new GeneratedMessageV3.FieldAccessorTable(descriptor5, new String[]{JsonDocumentFields.POLICY_ID, "Qty", "Seq", "Flr", "Flrcur", "Exp", "Dt", "Dlvy", "Metric", "Deal", "Private", "Spec", "Ext", "ExtProto"});
        Descriptors.Descriptor descriptor6 = descriptor5.getNestedTypes().get(0);
        f33019xdecf8999 = descriptor6;
        f33020xff8c0717 = new GeneratedMessageV3.FieldAccessorTable(descriptor6, new String[]{"Type", "Value", "Vendor", "Ext", "ExtProto"});
        Descriptors.Descriptor descriptor7 = descriptor5.getNestedTypes().get(1);
        f33017x3226081d = descriptor7;
        f33018xbecdc19b = new GeneratedMessageV3.FieldAccessorTable(descriptor7, new String[]{JsonDocumentFields.POLICY_ID, "Flr", "Flrcur", "At", "Wseat", "Wadomain", "Ext", "ExtProto"});
        Descriptors.Descriptor descriptor8 = getDescriptor().getMessageTypes().get(2);
        internal_static_bidmachine_protobuf_openrtb_Response_descriptor = descriptor8;
        f33032xb3401854 = new GeneratedMessageV3.FieldAccessorTable(descriptor8, new String[]{JsonDocumentFields.POLICY_ID, "Bidid", "Nbr", "Cur", "Cdata", "Seatbid", "Ext", "ExtProto"});
        Descriptors.Descriptor descriptor9 = descriptor8.getNestedTypes().get(0);
        f33030xcd91b6bd = descriptor9;
        f33031xed70d03b = new GeneratedMessageV3.FieldAccessorTable(descriptor9, new String[]{"Seat", "Package", "Bid", "Ext", "ExtProto"});
        Descriptors.Descriptor descriptor10 = descriptor9.getNestedTypes().get(0);
        f33028xabe1f45f = descriptor10;
        f33029x9d824bdd = new GeneratedMessageV3.FieldAccessorTable(descriptor10, new String[]{JsonDocumentFields.POLICY_ID, "Item", "Price", "Deal", "Cid", "Tactic", "Purl", "Burl", "Lurl", "Exp", "Mid", "Macro", "Media", "Ext", "ExtProto"});
        Descriptors.Descriptor descriptor11 = descriptor10.getNestedTypes().get(0);
        f33026x46766d2 = descriptor11;
        f33027xb5339b50 = new GeneratedMessageV3.FieldAccessorTable(descriptor11, new String[]{"Key", "Value", "Ext", "ExtProto"});
        AnyProto.getDescriptor();
        StructProto.getDescriptor();
    }

    private OpenrtbProto() {
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
