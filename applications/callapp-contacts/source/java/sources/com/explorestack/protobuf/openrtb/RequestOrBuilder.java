package com.explorestack.protobuf.openrtb;

import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.AnyOrBuilder;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.StructOrBuilder;
import com.explorestack.protobuf.openrtb.Request;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/openrtb/RequestOrBuilder.class */
public interface RequestOrBuilder extends MessageOrBuilder {
    int getAt();

    String getCdata();

    ByteString getCdataBytes();

    Any getContext();

    AnyOrBuilder getContextOrBuilder();

    String getCur(int i);

    ByteString getCurBytes(int i);

    int getCurCount();

    List<String> getCurList();

    Struct getExt();

    StructOrBuilder getExtOrBuilder();

    Any getExtProto(int i);

    int getExtProtoCount();

    List<Any> getExtProtoList();

    AnyOrBuilder getExtProtoOrBuilder(int i);

    List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

    String getId();

    ByteString getIdBytes();

    Request.Item getItem(int i);

    int getItemCount();

    List<Request.Item> getItemList();

    Request.ItemOrBuilder getItemOrBuilder(int i);

    List<? extends Request.ItemOrBuilder> getItemOrBuilderList();

    int getPackage();

    String getSeat(int i);

    ByteString getSeatBytes(int i);

    int getSeatCount();

    List<String> getSeatList();

    Request.Source getSource();

    Request.SourceOrBuilder getSourceOrBuilder();

    boolean getTest();

    int getTmax();

    boolean getWseat();

    boolean hasContext();

    boolean hasExt();

    boolean hasSource();
}
