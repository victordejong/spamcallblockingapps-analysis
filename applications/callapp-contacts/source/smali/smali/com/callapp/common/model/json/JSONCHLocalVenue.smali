.class public Lcom/callapp/common/model/json/JSONCHLocalVenue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x55af1014071d150dL


# instance fields
.field private ambiance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalKeyValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private foodtypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalKeyValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private pricelevel:Lcom/callapp/common/model/json/JSONCHLocalKeyValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/common/model/json/JSONCHLocalKeyValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalKeyValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 50
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONCHLocalVenue;

    .line 52
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->pricelevel:Lcom/callapp/common/model/json/JSONCHLocalKeyValue;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalVenue;->pricelevel:Lcom/callapp/common/model/json/JSONCHLocalKeyValue;

    invoke-virtual {v2, v3}, Lcom/callapp/common/model/json/JSONCHLocalKeyValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalVenue;->pricelevel:Lcom/callapp/common/model/json/JSONCHLocalKeyValue;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 54
    :cond_3
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->foodtypes:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalVenue;->foodtypes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalVenue;->foodtypes:Ljava/util/List;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 56
    :cond_5
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->ambiance:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalVenue;->ambiance:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalVenue;->ambiance:Ljava/util/List;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 58
    :cond_7
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->services:Ljava/util/List;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONCHLocalVenue;->services:Ljava/util/List;

    if-eqz v2, :cond_8

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8
    if-nez p1, :cond_9

    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public getAmbiance()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalKeyValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->ambiance:Ljava/util/List;

    return-object v0
.end method

.method public getFoodtypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalKeyValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->foodtypes:Ljava/util/List;

    return-object v0
.end method

.method public getPricelevel()Lcom/callapp/common/model/json/JSONCHLocalKeyValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/common/model/json/JSONCHLocalKeyValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->pricelevel:Lcom/callapp/common/model/json/JSONCHLocalKeyValue;

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalKeyValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->services:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->pricelevel:Lcom/callapp/common/model/json/JSONCHLocalKeyValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONCHLocalKeyValue;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->foodtypes:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->ambiance:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->services:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setAmbiance(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalKeyValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->ambiance:Ljava/util/List;

    return-void
.end method

.method public setFoodtypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalKeyValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->foodtypes:Ljava/util/List;

    return-void
.end method

.method public setPricelevel(Lcom/callapp/common/model/json/JSONCHLocalKeyValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/common/model/json/JSONCHLocalKeyValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->pricelevel:Lcom/callapp/common/model/json/JSONCHLocalKeyValue;

    return-void
.end method

.method public setServices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONCHLocalKeyValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONCHLocalVenue;->services:Ljava/util/List;

    return-void
.end method
