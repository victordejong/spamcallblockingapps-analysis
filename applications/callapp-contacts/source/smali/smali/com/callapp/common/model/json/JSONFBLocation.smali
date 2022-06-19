.class public Lcom/callapp/common/model/json/JSONFBLocation;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x4df4dea64b6a272aL


# instance fields
.field private city:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "city"
    .end annotation
.end field

.field private country:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "country"
    .end annotation
.end field

.field private latitude:Ljava/lang/Double;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "latitude"
    .end annotation
.end field

.field private locatedIn:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "locatedIn"
    .end annotation
.end field

.field private longitude:Ljava/lang/Double;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "longitude"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation
.end field

.field private region:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "region"
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "state"
    .end annotation
.end field

.field private street:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "street"
    .end annotation
.end field

.field private zip:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "zip"
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
.method public getCity()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBLocation;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBLocation;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBLocation;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLocatedIn()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBLocation;->locatedIn:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBLocation;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBLocation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBLocation;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBLocation;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBLocation;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBLocation;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBLocation;->city:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBLocation;->country:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBLocation;->latitude:Ljava/lang/Double;

    return-void
.end method

.method public setLocatedIn(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBLocation;->locatedIn:Ljava/lang/String;

    return-void
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBLocation;->longitude:Ljava/lang/Double;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBLocation;->name:Ljava/lang/String;

    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBLocation;->region:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBLocation;->state:Ljava/lang/String;

    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBLocation;->street:Ljava/lang/String;

    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBLocation;->zip:Ljava/lang/String;

    return-void
.end method
