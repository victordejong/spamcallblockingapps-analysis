.class public Lcom/callapp/common/model/json/JSONInviteReferer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4631aeac74b25e7cL


# instance fields
.field private key:Ljava/lang/String;

.field private points:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInviteReferer;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInviteReferer;->key:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/callapp/common/model/json/JSONInviteReferer;->points:Ljava/math/BigInteger;

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

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    check-cast p1, Lcom/callapp/common/model/json/JSONInviteReferer;

    .line 46
    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInviteReferer;->key:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/common/model/json/JSONInviteReferer;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/common/model/json/JSONInviteReferer;->points:Ljava/math/BigInteger;

    iget-object p1, p1, Lcom/callapp/common/model/json/JSONInviteReferer;->points:Ljava/math/BigInteger;

    .line 47
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInviteReferer;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()Ljava/math/BigInteger;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONInviteReferer;->points:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/callapp/common/model/json/JSONInviteReferer;->key:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/common/model/json/JSONInviteReferer;->points:Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInviteReferer;->key:Ljava/lang/String;

    return-void
.end method

.method public setPoints(Ljava/math/BigInteger;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONInviteReferer;->points:Ljava/math/BigInteger;

    return-void
.end method
