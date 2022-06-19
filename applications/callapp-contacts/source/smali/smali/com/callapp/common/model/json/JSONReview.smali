.class public Lcom/callapp/common/model/json/JSONReview;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field public static final transient DAS_ORTLICHE_TYPE_ID:I = 0x3

.field public static final transient GOOGLE_PLACES_TYPE_ID:I = 0x1

.field public static final transient REVIEW_OTHER_TYPE_ID:I = 0x5

.field public static final transient VENUE_FOURSQUARE_TYPE_ID:I = 0x3

.field public static final transient YAHOO_LOCAL_TYPE_ID:I = 0x2

.field private static final serialVersionUID:J = -0x28f8286f7ab13e48L


# instance fields
.field private excerpt:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/common/model/json/JSONReview;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    .line 29
    iget-object v0, p1, Lcom/callapp/common/model/json/JSONReview;->excerpt:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONReview;->excerpt:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/callapp/common/model/json/JSONReview;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/common/model/json/JSONReview;->url:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONReview;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/common/model/json/JSONReview;->setType(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONReview;->excerpt:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/callapp/common/model/json/JSONReview;->url:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, p3}, Lcom/callapp/common/model/json/JSONReview;->setType(I)V

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

    if-nez p1, :cond_1

    return v1

    .line 79
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 81
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONReview;

    .line 82
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONReview;->excerpt:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 83
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONReview;->excerpt:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 85
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONReview;->excerpt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 87
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONReview;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONReview;->getType()I

    move-result v3

    if-eq v2, v3, :cond_5

    return v1

    .line 89
    :cond_5
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONReview;->url:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 90
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONReview;->url:Ljava/lang/String;

    if-eqz p1, :cond_7

    return v1

    .line 92
    :cond_6
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONReview;->url:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public getExcerpt()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONReview;->excerpt:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/callapp/common/model/json/JSONReview;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONReview;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONReview;->excerpt:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONReview;->getType()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONReview;->url:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setExcerpt(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONReview;->excerpt:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/callapp/common/model/json/JSONReview;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONReview;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONReview{excerpt=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONReview;->excerpt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONReview;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONReview;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
