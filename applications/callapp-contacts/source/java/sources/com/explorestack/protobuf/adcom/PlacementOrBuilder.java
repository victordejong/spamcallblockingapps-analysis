package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.AnyOrBuilder;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.StructOrBuilder;
import com.explorestack.protobuf.adcom.Placement;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/PlacementOrBuilder.class */
public interface PlacementOrBuilder extends MessageOrBuilder {
    boolean getAdmx();

    String getBadv(int i);

    ByteString getBadvBytes(int i);

    int getBadvCount();

    List<String> getBadvList();

    String getBapp(int i);

    ByteString getBappBytes(int i);

    int getBappCount();

    List<String> getBappList();

    CreativeAttribute getBattr(int i);

    int getBattrCount();

    List<CreativeAttribute> getBattrList();

    int getBattrValue(int i);

    List<Integer> getBattrValueList();

    String getBcat(int i);

    ByteString getBcatBytes(int i);

    int getBcatCount();

    List<String> getBcatList();

    CategoryTaxonomy getCattax();

    int getCattaxValue();

    boolean getCurlx();

    Placement.DisplayPlacement getDisplay();

    Placement.DisplayPlacementOrBuilder getDisplayOrBuilder();

    Struct getExt();

    StructOrBuilder getExtOrBuilder();

    Any getExtProto(int i);

    int getExtProtoCount();

    List<Any> getExtProtoList();

    AnyOrBuilder getExtProtoOrBuilder(int i);

    List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

    boolean getReward();

    String getSdk();

    ByteString getSdkBytes();

    String getSdkver();

    ByteString getSdkverBytes();

    boolean getSecure();

    int getSsai();

    String getTagid();

    ByteString getTagidBytes();

    Placement.VideoPlacement getVideo();

    Placement.VideoPlacementOrBuilder getVideoOrBuilder();

    String getWlang(int i);

    ByteString getWlangBytes(int i);

    int getWlangCount();

    List<String> getWlangList();

    boolean hasDisplay();

    boolean hasExt();

    boolean hasVideo();
}
