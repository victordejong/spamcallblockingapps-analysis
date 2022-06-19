.class public Lcom/callapp/common/model/json/JSONXingWebProfiles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5089db5af581fe8bL


# instance fields
.field private blog:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private facebook:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private foursquare:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private google_plus:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private homepage:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private twitter:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
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

    if-nez p1, :cond_1

    return v1

    .line 89
    :cond_1
    instance-of v2, p1, Lcom/callapp/common/model/json/JSONXingWebProfiles;

    if-nez v2, :cond_2

    return v1

    .line 91
    :cond_2
    check-cast p1, Lcom/callapp/common/model/json/JSONXingWebProfiles;

    .line 92
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->blog:Ljava/util/Collection;

    if-nez v2, :cond_3

    .line 93
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingWebProfiles;->blog:Ljava/util/Collection;

    if-eqz v2, :cond_4

    return v1

    .line 95
    :cond_3
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingWebProfiles;->blog:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 97
    :cond_4
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->facebook:Ljava/util/Collection;

    if-nez v2, :cond_5

    .line 98
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingWebProfiles;->facebook:Ljava/util/Collection;

    if-eqz v2, :cond_6

    return v1

    .line 100
    :cond_5
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingWebProfiles;->facebook:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 102
    :cond_6
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->foursquare:Ljava/util/Collection;

    if-nez v2, :cond_7

    .line 103
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingWebProfiles;->foursquare:Ljava/util/Collection;

    if-eqz v2, :cond_8

    return v1

    .line 105
    :cond_7
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingWebProfiles;->foursquare:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 107
    :cond_8
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->google_plus:Ljava/util/Collection;

    if-nez v2, :cond_9

    .line 108
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingWebProfiles;->google_plus:Ljava/util/Collection;

    if-eqz v2, :cond_a

    return v1

    .line 110
    :cond_9
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingWebProfiles;->google_plus:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 112
    :cond_a
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->homepage:Ljava/util/Collection;

    if-nez v2, :cond_b

    .line 113
    iget-object v2, p1, Lcom/callapp/common/model/json/JSONXingWebProfiles;->homepage:Ljava/util/Collection;

    if-eqz v2, :cond_c

    return v1

    .line 115
    :cond_b
    iget-object v3, p1, Lcom/callapp/common/model/json/JSONXingWebProfiles;->homepage:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    .line 117
    :cond_c
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->twitter:Ljava/util/Collection;

    if-nez v2, :cond_d

    .line 118
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONXingWebProfiles;->twitter:Ljava/util/Collection;

    if-eqz p1, :cond_e

    return v1

    .line 120
    :cond_d
    iget-object p1, p1, Lcom/callapp/common/model/json/JSONXingWebProfiles;->twitter:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getBlog()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->blog:Ljava/util/Collection;

    return-object v0
.end method

.method public getFacebook()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->facebook:Ljava/util/Collection;

    return-object v0
.end method

.method public getFoursquare()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->foursquare:Ljava/util/Collection;

    return-object v0
.end method

.method public getGoogle_plus()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->google_plus:Ljava/util/Collection;

    return-object v0
.end method

.method public getHomepage()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->homepage:Ljava/util/Collection;

    return-object v0
.end method

.method public getTwitter()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->twitter:Ljava/util/Collection;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->blog:Ljava/util/Collection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->facebook:Ljava/util/Collection;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 76
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->foursquare:Ljava/util/Collection;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->google_plus:Ljava/util/Collection;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->homepage:Ljava/util/Collection;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->twitter:Ljava/util/Collection;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {v2}, Ljava/util/Collection;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public setBlog(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->blog:Ljava/util/Collection;

    return-void
.end method

.method public setFacebook(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->facebook:Ljava/util/Collection;

    return-void
.end method

.method public setFoursquare(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->foursquare:Ljava/util/Collection;

    return-void
.end method

.method public setGoogle_plus(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->google_plus:Ljava/util/Collection;

    return-void
.end method

.method public setHomepage(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->homepage:Ljava/util/Collection;

    return-void
.end method

.method public setTwitter(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONXingWebProfiles;->twitter:Ljava/util/Collection;

    return-void
.end method
