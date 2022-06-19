package io.bidmachine.protobuf;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.adcom.C9813Ad;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/InitResponseOrBuilder.class */
public interface InitResponseOrBuilder extends MessageOrBuilder {
    AdNetwork getAdNetworks(int i);

    int getAdNetworksCount();

    List<AdNetwork> getAdNetworksList();

    AdNetworkOrBuilder getAdNetworksOrBuilder(int i);

    List<? extends AdNetworkOrBuilder> getAdNetworksOrBuilderList();

    String getEndpoint();

    ByteString getEndpointBytes();

    C9813Ad.Event getEvent(int i);

    int getEventCount();

    List<C9813Ad.Event> getEventList();

    C9813Ad.EventOrBuilder getEventOrBuilder(int i);

    List<? extends C9813Ad.EventOrBuilder> getEventOrBuilderList();

    int getSessionResetAfter();
}
