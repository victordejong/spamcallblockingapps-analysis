.class public Lcom/callapp/common/model/json/JSONInstagramImages;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7a6d77b0c7cc7bf8L


# instance fields
.field private standard_resolution:Lcom/callapp/common/model/json/JSONInstagramImage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
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

    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONInstagramImages;

    .line 25
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInstagramImages;->standard_resolution:Lcom/callapp/common/model/json/JSONInstagramImage;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONInstagramImages;->standard_resolution:Lcom/callapp/common/model/json/JSONInstagramImage;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lcom/callapp/common/model/json/JSONInstagramImage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-nez p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getStandard_resolution()Lcom/callapp/common/model/json/JSONInstagramImage;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramImages;->standard_resolution:Lcom/callapp/common/model/json/JSONInstagramImage;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInstagramImages;->standard_resolution:Lcom/callapp/common/model/json/JSONInstagramImage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONInstagramImage;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setStandard_resolution(Lcom/callapp/common/model/json/JSONInstagramImage;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInstagramImages;->standard_resolution:Lcom/callapp/common/model/json/JSONInstagramImage;

    return-void
.end method
