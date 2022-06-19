.class public Lcom/callapp/common/model/json/JSONGooglePlaceId;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x5a2ff416403992afL


# instance fields
.field private placeId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "place_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaceId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONGooglePlaceId;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method public setPlaceId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONGooglePlaceId;->placeId:Ljava/lang/String;

    return-void
.end method
