package io.bidmachine.protobuf;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.adcom.ConnectionType;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.DeviceType;
import com.explorestack.protobuf.adcom.EnumC9867OS;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/InitRequestOrBuilder.class */
public interface InitRequestOrBuilder extends MessageOrBuilder {
    String getAppVer();

    ByteString getAppVerBytes();

    String getBmIfv();

    ByteString getBmIfvBytes();

    String getBundle();

    ByteString getBundleBytes();

    ConnectionType getContype();

    int getContypeValue();

    DeviceType getDeviceType();

    int getDeviceTypeValue();

    Context.Geo getGeo();

    Context.GeoOrBuilder getGeoOrBuilder();

    String getIfa();

    ByteString getIfaBytes();

    String getIfv();

    ByteString getIfvBytes();

    EnumC9867OS getOs();

    int getOsValue();

    String getOsv();

    ByteString getOsvBytes();

    String getSdk();

    ByteString getSdkBytes();

    String getSdkver();

    ByteString getSdkverBytes();

    String getSellerId();

    ByteString getSellerIdBytes();

    String getSessionId();

    ByteString getSessionIdBytes();

    boolean hasGeo();
}
