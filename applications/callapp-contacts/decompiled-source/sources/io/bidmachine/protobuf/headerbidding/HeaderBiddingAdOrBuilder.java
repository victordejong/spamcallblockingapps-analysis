package io.bidmachine.protobuf.headerbidding;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/headerbidding/HeaderBiddingAdOrBuilder.class */
public interface HeaderBiddingAdOrBuilder extends MessageOrBuilder {
    boolean containsClientParams(String str);

    boolean containsServerParams(String str);

    String getBidder();

    ByteString getBidderBytes();

    @Deprecated
    Map<String, String> getClientParams();

    int getClientParamsCount();

    Map<String, String> getClientParamsMap();

    String getClientParamsOrDefault(String str, String str2);

    String getClientParamsOrThrow(String str);

    @Deprecated
    Map<String, String> getServerParams();

    int getServerParamsCount();

    Map<String, String> getServerParamsMap();

    String getServerParamsOrDefault(String str, String str2);

    String getServerParamsOrThrow(String str);
}
