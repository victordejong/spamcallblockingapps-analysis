package com.explorestack.protobuf.openrtb;

import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.AnyOrBuilder;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.StructOrBuilder;
import com.explorestack.protobuf.openrtb.Response;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/ResponseOrBuilder.class */
public interface ResponseOrBuilder extends MessageOrBuilder {
    String getBidid();

    ByteString getBididBytes();

    String getCdata();

    ByteString getCdataBytes();

    String getCur();

    ByteString getCurBytes();

    Struct getExt();

    StructOrBuilder getExtOrBuilder();

    Any getExtProto(int i);

    int getExtProtoCount();

    List<Any> getExtProtoList();

    AnyOrBuilder getExtProtoOrBuilder(int i);

    List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

    String getId();

    ByteString getIdBytes();

    NoBidReason getNbr();

    int getNbrValue();

    Response.Seatbid getSeatbid(int i);

    int getSeatbidCount();

    List<Response.Seatbid> getSeatbidList();

    Response.SeatbidOrBuilder getSeatbidOrBuilder(int i);

    List<? extends Response.SeatbidOrBuilder> getSeatbidOrBuilderList();

    boolean hasExt();
}
