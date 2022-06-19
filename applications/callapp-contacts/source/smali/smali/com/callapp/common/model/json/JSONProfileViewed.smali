.class public Lcom/callapp/common/model/json/JSONProfileViewed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1c1e17c6be230319L


# instance fields
.field private source:Ljava/lang/String;

.field private viewedProfilePhoneNumber:Ljava/lang/String;

.field private viewerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONProfileViewed;->viewedProfilePhoneNumber:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/callapp/common/model/json/JSONProfileViewed;->source:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/callapp/common/model/json/JSONProfileViewed;->viewerName:Ljava/lang/String;

    return-void
.end method

.method public static getSerialVersionUID()J
    .locals 2

    const-wide v0, 0x1c1e17c6be230319L

    return-wide v0
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

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONProfileViewed;

    .line 57
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONProfileViewed;->viewedProfilePhoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONProfileViewed;->viewedProfilePhoneNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONProfileViewed;->viewerName:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONProfileViewed;->viewerName:Ljava/lang/String;

    .line 58
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONProfileViewed;->source:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONProfileViewed;->source:Ljava/lang/String;

    .line 59
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONProfileViewed;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getViewedProfilePhoneNumber()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONProfileViewed;->viewedProfilePhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getViewerName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONProfileViewed;->viewerName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONProfileViewed;->viewedProfilePhoneNumber:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONProfileViewed;->viewerName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONProfileViewed;->source:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONProfileViewed;->source:Ljava/lang/String;

    return-void
.end method

.method public setViewedProfilePhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONProfileViewed;->viewedProfilePhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setViewerName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONProfileViewed;->viewerName:Ljava/lang/String;

    return-void
.end method
