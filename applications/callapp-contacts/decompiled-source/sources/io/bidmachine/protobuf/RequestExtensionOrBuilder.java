package io.bidmachine.protobuf;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/RequestExtensionOrBuilder.class */
public interface RequestExtensionOrBuilder extends MessageOrBuilder {
    boolean containsSellerData(String str);

    String getBmIfv();

    ByteString getBmIfvBytes();

    HeaderBiddingType getHeaderBiddingType();

    int getHeaderBiddingTypeValue();

    String getIfv();

    ByteString getIfvBytes();

    @Deprecated
    Map<String, String> getSellerData();

    int getSellerDataCount();

    Map<String, String> getSellerDataMap();

    String getSellerDataOrDefault(String str, String str2);

    String getSellerDataOrThrow(String str);

    String getSellerId();

    ByteString getSellerIdBytes();

    String getSessionId();

    ByteString getSessionIdBytes();
}
