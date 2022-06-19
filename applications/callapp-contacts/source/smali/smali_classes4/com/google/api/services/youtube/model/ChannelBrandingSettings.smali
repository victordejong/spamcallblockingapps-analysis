.class public final Lcom/google/api/services/youtube/model/ChannelBrandingSettings;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private channel:Lcom/google/api/services/youtube/model/ChannelSettings;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private hints:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/PropertyValue;",
            ">;"
        }
    .end annotation
.end field

.field private image:Lcom/google/api/services/youtube/model/ImageSettings;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private watch:Lcom/google/api/services/youtube/model/WatchSettings;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelBrandingSettings;->clone()Lcom/google/api/services/youtube/model/ChannelBrandingSettings;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelBrandingSettings;->clone()Lcom/google/api/services/youtube/model/ChannelBrandingSettings;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/ChannelBrandingSettings;
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ChannelBrandingSettings;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelBrandingSettings;->clone()Lcom/google/api/services/youtube/model/ChannelBrandingSettings;

    move-result-object v0

    return-object v0
.end method

.method public final getChannel()Lcom/google/api/services/youtube/model/ChannelSettings;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelBrandingSettings;->channel:Lcom/google/api/services/youtube/model/ChannelSettings;

    return-object v0
.end method

.method public final getHints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/PropertyValue;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelBrandingSettings;->hints:Ljava/util/List;

    return-object v0
.end method

.method public final getImage()Lcom/google/api/services/youtube/model/ImageSettings;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelBrandingSettings;->image:Lcom/google/api/services/youtube/model/ImageSettings;

    return-object v0
.end method

.method public final getWatch()Lcom/google/api/services/youtube/model/WatchSettings;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelBrandingSettings;->watch:Lcom/google/api/services/youtube/model/WatchSettings;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelBrandingSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelBrandingSettings;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelBrandingSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelBrandingSettings;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelBrandingSettings;
    .locals 0

    .line 134
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/ChannelBrandingSettings;

    return-object p1
.end method

.method public final setChannel(Lcom/google/api/services/youtube/model/ChannelSettings;)Lcom/google/api/services/youtube/model/ChannelBrandingSettings;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelBrandingSettings;->channel:Lcom/google/api/services/youtube/model/ChannelSettings;

    return-object p0
.end method

.method public final setHints(Ljava/util/List;)Lcom/google/api/services/youtube/model/ChannelBrandingSettings;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/youtube/model/PropertyValue;",
            ">;)",
            "Lcom/google/api/services/youtube/model/ChannelBrandingSettings;"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelBrandingSettings;->hints:Ljava/util/List;

    return-object p0
.end method

.method public final setImage(Lcom/google/api/services/youtube/model/ImageSettings;)Lcom/google/api/services/youtube/model/ChannelBrandingSettings;
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelBrandingSettings;->image:Lcom/google/api/services/youtube/model/ImageSettings;

    return-object p0
.end method

.method public final setWatch(Lcom/google/api/services/youtube/model/WatchSettings;)Lcom/google/api/services/youtube/model/ChannelBrandingSettings;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelBrandingSettings;->watch:Lcom/google/api/services/youtube/model/WatchSettings;

    return-object p0
.end method
