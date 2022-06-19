.class public Lcom/callapp/common/model/json/JSONCHLocalAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ACTION_TYPE_MOVIE:Ljava/lang/String; = "movie"

.field private static final serialVersionUID:J = 0x5f59b19c2dde048cL


# instance fields
.field private adType:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private order:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
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

    if-eqz p1, :cond_b

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 46
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONCHLocalAction;

    .line 48
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->label:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalAction;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalAction;->label:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 49
    :cond_3
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->url:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalAction;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalAction;->url:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_1
    return v1

    .line 50
    :cond_5
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->image:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalAction;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalAction;->image:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_2
    return v1

    .line 51
    :cond_7
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->adType:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONCHLocalAction;->adType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_8
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONCHLocalAction;->adType:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_3
    return v1

    .line 52
    :cond_9
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->order:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONCHLocalAction;->order:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    if-nez p1, :cond_b

    return v0

    :cond_b
    :goto_4
    return v1
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->adType:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->label:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 59
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 60
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->image:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->adType:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->order:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public isMovieAction()Z
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONCHLocalAction;->adType:Ljava/lang/String;

    const-string v1, "movie"

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
