package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.AnyOrBuilder;
import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.StructOrBuilder;
import com.explorestack.protobuf.adcom.Ad;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/AdOrBuilder.class */
public interface AdOrBuilder extends MessageOrBuilder {
    String getAdomain(int i);

    ByteString getAdomainBytes(int i);

    int getAdomainCount();

    List<String> getAdomainList();

    Ad.Audit getAudit();

    Ad.AuditOrBuilder getAuditOrBuilder();

    String getBundle(int i);

    ByteString getBundleBytes(int i);

    int getBundleCount();

    List<String> getBundleList();

    String getCat(int i);

    ByteString getCatBytes(int i);

    int getCatCount();

    List<String> getCatList();

    CategoryTaxonomy getCattax();

    int getCattaxValue();

    Ad.Display getDisplay();

    Ad.DisplayOrBuilder getDisplayOrBuilder();

    Struct getExt();

    StructOrBuilder getExtOrBuilder();

    Any getExtProto(int i);

    int getExtProtoCount();

    List<Any> getExtProtoList();

    AnyOrBuilder getExtProtoOrBuilder(int i);

    List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

    String getId();

    ByteString getIdBytes();

    String getInit();

    ByteString getInitBytes();

    String getIurl();

    ByteString getIurlBytes();

    String getLang();

    ByteString getLangBytes();

    String getLastmod();

    ByteString getLastmodBytes();

    MediaRating getMrating();

    int getMratingValue();

    boolean getSecure();

    Ad.Video getVideo();

    Ad.VideoOrBuilder getVideoOrBuilder();

    boolean hasAudit();

    boolean hasDisplay();

    boolean hasExt();

    boolean hasVideo();
}
