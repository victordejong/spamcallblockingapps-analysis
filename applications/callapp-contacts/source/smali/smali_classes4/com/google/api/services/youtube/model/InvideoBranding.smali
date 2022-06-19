.class public final Lcom/google/api/services/youtube/model/InvideoBranding;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private imageBytes:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private position:Lcom/google/api/services/youtube/model/InvideoPosition;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private targetChannelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private timing:Lcom/google/api/services/youtube/model/InvideoTiming;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/InvideoBranding;->clone()Lcom/google/api/services/youtube/model/InvideoBranding;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/InvideoBranding;->clone()Lcom/google/api/services/youtube/model/InvideoBranding;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/youtube/model/InvideoBranding;
    .locals 1

    .line 176
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/InvideoBranding;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/InvideoBranding;->clone()Lcom/google/api/services/youtube/model/InvideoBranding;

    move-result-object v0

    return-object v0
.end method

.method public final decodeImageBytes()[B
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/api/services/youtube/model/InvideoBranding;->imageBytes:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/a/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final encodeImageBytes([B)Lcom/google/api/services/youtube/model/InvideoBranding;
    .locals 0

    .line 105
    invoke-static {p1}, Lcom/google/api/client/a/d;->a([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/services/youtube/model/InvideoBranding;->imageBytes:Ljava/lang/String;

    return-object p0
.end method

.method public final getImageBytes()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/api/services/youtube/model/InvideoBranding;->imageBytes:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/api/services/youtube/model/InvideoBranding;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()Lcom/google/api/services/youtube/model/InvideoPosition;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/api/services/youtube/model/InvideoBranding;->position:Lcom/google/api/services/youtube/model/InvideoPosition;

    return-object v0
.end method

.method public final getTargetChannelId()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/api/services/youtube/model/InvideoBranding;->targetChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTiming()Lcom/google/api/services/youtube/model/InvideoTiming;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/api/services/youtube/model/InvideoBranding;->timing:Lcom/google/api/services/youtube/model/InvideoTiming;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/InvideoBranding;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/InvideoBranding;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/InvideoBranding;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/InvideoBranding;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/InvideoBranding;
    .locals 0

    .line 171
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/youtube/model/InvideoBranding;

    return-object p1
.end method

.method public final setImageBytes(Ljava/lang/String;)Lcom/google/api/services/youtube/model/InvideoBranding;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/google/api/services/youtube/model/InvideoBranding;->imageBytes:Ljava/lang/String;

    return-object p0
.end method

.method public final setImageUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/InvideoBranding;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/google/api/services/youtube/model/InvideoBranding;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setPosition(Lcom/google/api/services/youtube/model/InvideoPosition;)Lcom/google/api/services/youtube/model/InvideoBranding;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/google/api/services/youtube/model/InvideoBranding;->position:Lcom/google/api/services/youtube/model/InvideoPosition;

    return-object p0
.end method

.method public final setTargetChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/InvideoBranding;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/google/api/services/youtube/model/InvideoBranding;->targetChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public final setTiming(Lcom/google/api/services/youtube/model/InvideoTiming;)Lcom/google/api/services/youtube/model/InvideoBranding;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/google/api/services/youtube/model/InvideoBranding;->timing:Lcom/google/api/services/youtube/model/InvideoTiming;

    return-object p0
.end method
