.class public interface abstract Lio/bidmachine/protobuf/InitResponseOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getAdNetworks(I)Lio/bidmachine/protobuf/AdNetwork;
.end method

.method public abstract getAdNetworksCount()I
.end method

.method public abstract getAdNetworksList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdNetworksOrBuilder(I)Lio/bidmachine/protobuf/AdNetworkOrBuilder;
.end method

.method public abstract getAdNetworksOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/AdNetworkOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEndpoint()Ljava/lang/String;
.end method

.method public abstract getEndpointBytes()Lcom/explorestack/protobuf/ByteString;
.end method

.method public abstract getEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Event;
.end method

.method public abstract getEventCount()I
.end method

.method public abstract getEventList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
.end method

.method public abstract getEventOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionResetAfter()I
.end method
