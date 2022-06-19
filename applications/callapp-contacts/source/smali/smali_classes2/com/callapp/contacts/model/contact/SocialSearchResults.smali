.class public Lcom/callapp/contacts/model/contact/SocialSearchResults;
.super Lcom/callapp/contacts/model/contact/CacheableData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x841666028bb386fL


# instance fields
.field public final id:Lcom/callapp/common/model/json/JSONSocialNetworkID;

.field public final results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation
.end field

.field public final term:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/CacheableData;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SocialSearchResults;->term:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/callapp/contacts/model/contact/SocialSearchResults;->results:Ljava/util/List;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SocialSearchResults;->id:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;",
            "Lcom/callapp/common/model/json/JSONSocialNetworkID;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/callapp/contacts/model/contact/CacheableData;-><init>()V

    .line 17
    iput-object p3, p0, Lcom/callapp/contacts/model/contact/SocialSearchResults;->id:Lcom/callapp/common/model/json/JSONSocialNetworkID;

    .line 18
    iput-object p2, p0, Lcom/callapp/contacts/model/contact/SocialSearchResults;->results:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/SocialSearchResults;->term:Ljava/lang/String;

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

    if-eqz p1, :cond_2

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/contact/SocialSearchResults;

    .line 38
    iget-object v2, p0, Lcom/callapp/contacts/model/contact/SocialSearchResults;->results:Ljava/util/List;

    iget-object v3, p1, Lcom/callapp/contacts/model/contact/SocialSearchResults;->results:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/contact/SocialSearchResults;->term:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/contact/SocialSearchResults;->term:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/model/contact/SocialSearchResults;->term:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 45
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/SocialSearchResults;->results:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
