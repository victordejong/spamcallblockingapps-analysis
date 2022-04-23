package com.explorestack.protobuf.adcom;

import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.AnyOrBuilder;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.StructOrBuilder;
import com.explorestack.protobuf.adcom.Context;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/explorestack/protobuf/adcom/ContextOrBuilder.class */
public interface ContextOrBuilder extends MessageOrBuilder {
    Context.App getApp();

    Context.AppOrBuilder getAppOrBuilder();

    Context.Device getDevice();

    Context.DeviceOrBuilder getDeviceOrBuilder();

    Struct getExt();

    StructOrBuilder getExtOrBuilder();

    Any getExtProto(int i);

    int getExtProtoCount();

    List<Any> getExtProtoList();

    AnyOrBuilder getExtProtoOrBuilder(int i);

    List<? extends AnyOrBuilder> getExtProtoOrBuilderList();

    Context.Regs getRegs();

    Context.RegsOrBuilder getRegsOrBuilder();

    Context.Restrictions getRestrictions();

    Context.RestrictionsOrBuilder getRestrictionsOrBuilder();

    Context.User getUser();

    Context.UserOrBuilder getUserOrBuilder();

    boolean hasApp();

    boolean hasDevice();

    boolean hasExt();

    boolean hasRegs();

    boolean hasRestrictions();

    boolean hasUser();
}
