.class public final Lcom/google/api/services/youtube/model/ChannelConversionPing;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private context:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private conversionUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelConversionPing;->clone()Lcom/google/api/services/youtube/model/ChannelConversionPing;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelConversionPing;->clone()Lcom/google/api/services/youtube/model/ChannelConversionPing;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ChannelConversionPing;
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ChannelConversionPing;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelConversionPing;->clone()Lcom/google/api/services/youtube/model/ChannelConversionPing;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelConversionPing;->context:Ljava/lang/String;

    return-object v0
.end method

.method public final getConversionUrl()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelConversionPing;->conversionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelConversionPing;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelConversionPing;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelConversionPing;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelConversionPing;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelConversionPing;
    .locals 0

    .line 102
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ChannelConversionPing;

    return-object p1
.end method

.method public final setContext(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelConversionPing;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelConversionPing;->context:Ljava/lang/String;

    return-object p0
.end method

.method public final setConversionUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelConversionPing;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelConversionPing;->conversionUrl:Ljava/lang/String;

    return-object p0
.end method
