.class public interface abstract Lcom/explorestack/protobuf/adcom/ContextOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getApp()Lcom/explorestack/protobuf/adcom/Context$App;
.end method

.method public abstract getAppOrBuilder()Lcom/explorestack/protobuf/adcom/Context$AppOrBuilder;
.end method

.method public abstract getDevice()Lcom/explorestack/protobuf/adcom/Context$Device;
.end method

.method public abstract getDeviceOrBuilder()Lcom/explorestack/protobuf/adcom/Context$DeviceOrBuilder;
.end method

.method public abstract getExt()Lcom/explorestack/protobuf/Struct;
.end method

.method public abstract getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
.end method

.method public abstract getExtProto(I)Lcom/explorestack/protobuf/Any;
.end method

.method public abstract getExtProtoCount()I
.end method

.method public abstract getExtProtoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
.end method

.method public abstract getExtProtoOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRegs()Lcom/explorestack/protobuf/adcom/Context$Regs;
.end method

.method public abstract getRegsOrBuilder()Lcom/explorestack/protobuf/adcom/Context$RegsOrBuilder;
.end method

.method public abstract getRestrictions()Lcom/explorestack/protobuf/adcom/Context$Restrictions;
.end method

.method public abstract getRestrictionsOrBuilder()Lcom/explorestack/protobuf/adcom/Context$RestrictionsOrBuilder;
.end method

.method public abstract getUser()Lcom/explorestack/protobuf/adcom/Context$User;
.end method

.method public abstract getUserOrBuilder()Lcom/explorestack/protobuf/adcom/Context$UserOrBuilder;
.end method

.method public abstract hasApp()Z
.end method

.method public abstract hasDevice()Z
.end method

.method public abstract hasExt()Z
.end method

.method public abstract hasRegs()Z
.end method

.method public abstract hasRestrictions()Z
.end method

.method public abstract hasUser()Z
.end method
